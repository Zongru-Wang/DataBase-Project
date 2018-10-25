from flask import request, Response, abort, Blueprint, render_template
import json
from database import DB
from datetime import datetime
import bcrypt

routes = Blueprint('tasks', __name__, template_folder='../templates')


def error(message, asjson):
    if asjson:
        return Response(json.dumps({'error': message}, sort_keys=False, indent=4),
                        status=404, mimetype='application/json')
    return render_template('error.html', message=message)


def success(asjson):
    if asjson:
        return Response(json.dumps({'result': "success"}, sort_keys=False, indent=4),
                    status=200, mimetype='application/json')
    return render_template('success.html')


def results(results, desc, asjson):
    if asjson:
        resp = []
        for row in range(len(results)):
            resp += [{}]
            for col in range(len(desc)):
                resp[row][desc[col][0]] = str(results[row][col])
        return Response(json.dumps({'results': resp}, sort_keys=False, indent=4),
                        status=200, mimetype='application/json')

    headers = [h[0] for h in desc]
    return render_template('results.html', headers=headers, rows=results)


def execute(sql, params, req, funcs=None, binary=False):
    cur = DB()

    asjson = True
    if 'format' in req.args and req.args['format']=='table':
        asjson = False

    args = {}
    for p in params:
        if p in req.args and req.args[p] == '':
            return error('   |   '.join([k + '=' + v for k, v in req.args.iteritems()])
                         + '    is not a valid input', asjson)
        val = ''
        if p in req.args:
            val = req.args[p]
        if funcs and p in funcs:
            val = funcs[p](val)
        args[p] = val

    try:
        cur.execute(sql, [args[x] for x in params])
        if binary:
            return success(asjson)
        else:
            return results(cur.fetchall(), cur.description, asjson)

    except Exception as e:
        return error(str(e), asjson)


####
# Tasks
####

# a) Register a new user
# Add a new User by add a new UserId, FirstName, LastName, Email, password,
# Picture, Picture, Street, City, PostalCode, Country.
a = """INSERT INTO User (FirstName, LastName, Email, Password, Picture, Street, City, PostalCode, Country)
      VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s);"""
ap = ['FirstName', 'LastName', 'Email', 'Password', 'Picture', 'Street', 'City', 'PostalCode', 'Country']
af = {'Password': lambda x: bcrypt.hashpw(x.encode('utf8'), bcrypt.gensalt())}


@routes.route('/taska')
def taska():
    return execute(a, ap, request, af, True)


# b) Record that a user loves a movie
# Add a Love table to record User has ID = 10 loves a Movie has Id = 2
b = """INSERT INTO Love (UserID, MovieID) VALUES (%s, %s);"""
bp = ['UserID', 'MovieID']


@routes.route('/taskb')
def taskb():
    return execute(b, bp, request, binary=True)


# c) Order a ticket from a local theatre
c1 = """INSERT INTO `Order` (Amount, DateTime, UserID, MovieID)
        VALUES (%s, %s, %s, %s);"""
c2 = """INSERT INTO `TheaterOrder` (ConfNumber, TheaterName, SeatCount, Seats)
        VALUES (%s, %s, %s, %s);"""
cp = ['Amount', 'UserID', 'MovieID', 'TheaterName', 'SeatCount', 'Seats']


@routes.route('/taskc')
def taskc():
    cur = DB()
    asjson = True
    if 'format' in request.args and request.args['format'] == 'table':
        asjson = False

    for p in cp:
        if p in request.args and request.args[p] == '':
            return error('   |   '.join([k + '=' + v for k, v in request.args.iteritems()])
                         + '    is not a valid input', asjson)
    try:
        cur.execute(c1, [request.args['Amount'],
                         datetime.now(),
                         request.args['UserID'],
                         request.args['MovieID']])
        confNum = cur.lastrowid
        cur.execute(c2, [confNum] + [request.args[x] for x in cp[3:]])
        return results([[confNum]], [['ConfirmationNumber']], asjson)
    except Exception as e:
        return error(str(e), asjson)


# d) Credit an existing actress for a movie
d = """INSERT INTO Credit (MovieID, Role, PersonID, CharacterName, CharacterPhoto)
        VALUES (%s, %s, %s, %s, %s);"""
dp = ['MovieID', 'Role', 'PersonID', 'CharacterName', 'CharacterPhoto']


@routes.route('/taskd')
def taskd():
    return execute(d, dp, request, binary=True)


# e) Provide a ranked list of revenue generated from the top-10 studios
e = """SELECT Movie.Studio AS Studio, sum(`Order`.Amount) AS Revenue
          FROM Movie INNER JOIN `Order` ON Movie.MovieID = `Order`.MovieID
        GROUP BY Movie.Studio
        ORDER BY sum(`Order`.Amount) DESC
        LIMIT 10;"""


@routes.route('/taske')
def taske():
    return execute(e, [], request)


# f) Find all movies directed by a person (supplied via last name)
f = """SELECT Movie.Name AS Movie
      FROM (Movie INNER JOIN Credit ON Movie.MovieID = Credit.MovieID)
    INNER JOIN Person ON Credit.PersonID = Person.PersonID
    WHERE Credit.Role = "Director" AND Person.LastName = %s;"""
fp = ['LastName']


@routes.route('/taskf')
def taskf():
    return execute(f, fp, request)


# g) Load the cover images and names of movies ordered by a particular user
g = """SELECT MoviePictures.Picture AS CoverImage, Movie.Name AS Name, User.LastName AS UserLastName, User.UserID AS Userid
      FROM User INNER JOIN `Order` ON User.UserID = `Order`.UserID
      INNER JOIN Movie ON `Order`.MovieID = Movie.MovieID
      INNER JOIN MoviePictures ON MoviePictures.MovieID = Movie.MovieID
    WHERE User.UserID = %s
    ORDER by Movie.Name;"""
gp = ['UserID']


@routes.route('/taskg')
def taskg():
    return execute(g, gp, request)


# h) Find all movies released this year that a user loves but has not ordered
h = """SELECT Movie.Name AS Name
      FROM Movie INNER JOIN Love ON Movie.MovieID = Love.MovieID
      INNER JOIN User ON User.UserID = Love.UserID
      LEFT JOIN `Order` ON `Order`.MovieID = Love.MovieID
      WHERE User.UserID = %s AND YEAR(Movie.ReleaseDate) = %s
      Group by Movie.Name;"""
hp = ['UserID', '_year']
hf = {'_year': lambda x: datetime.now().year}


@routes.route('/taskh')
def taskh():
    return execute(h, hp, request, hf)


# i) Find all people (name, picture, and role) credited for a particular movie (supplied by name)
i = """SELECT Person.LastName AS LastName, Person.FirstName AS FirstName, Person.Picture AS Picture, Credit.Role AS Role
      FROM Person INNER JOIN Credit ON Credit.PersonID = Person.PersonID
      INNER JOIN Movie ON Movie.MovieID = Credit.MovieID
      WHERE Movie.Name = %s
    Order by Person.LastName;"""
ip = ['Name']


@routes.route('/taski')
def taski():
    return execute(i, ip, request)


# j) Provide a ranked list of revenue generated from the top-3 movie genres
j = """SELECT Movie.Genre  AS Genre, sum(`Order`.Amount) AS Amount
        From Movie INNER JOIN `Order` ON Movie.MovieID = `Order`.MovieID
        GROUP by Movie.Genre
        ORDER by amount DESC
        LIMIT 3;
        """


@routes.route('/taskj')
def taskj():
    return execute(j, [], request)


####
# Reports
####

# Report 1
# Creates a list of Names of people and number of movies which are loved by user which they are credited in
# This is to determine the most loved people
r1 = """SELECT
          CONCAT(p.FirstName, ' ', p.LastName) AS Name,
          r.loves AS loves
        FROM Person p
          INNER JOIN
            (SELECT
              c.PersonID AS pid,
              COUNT(c.PersonID) AS loves
            FROM Love v
              INNER JOIN Movie m ON m.MovieID=v.MovieID
              INNER JOIN Credit c ON c.MovieID=m.MovieID

            GROUP BY c.PersonID) r ON p.PersonID=r.pid
        WHERE loves > 0
        ORDER BY loves DESC, Name;"""


@routes.route('/report1')
def report1():
    return execute(r1, [], request)


# Report 2
# Find all theaters and streaming services and the number of orders
r2 = """SELECT
          COUNT(*) AS orderCount,
          t.Name AS Name
        FROM
          `Order` o
          INNER JOIN TheaterOrder tho ON o.ConfNumber=tho.ConfNumber
          INNER JOIN Theater t ON t.Name=tho.TheaterName
        GROUP BY t.Name
        UNION
        SELECT
          COUNT(*) AS orderCount,
          s.Name AS Name
        FROM
          `Order` o
          INNER JOIN TheaterOrder sto ON o.ConfNumber=sto.ConfNumber
          INNER JOIN Streaming s ON s.Name=sto.TheaterName
        GROUP BY s.Name
        ORDER BY orderCount DESC, Name;"""


@routes.route('/report2')
def report2():
    return execute(r2, [], request)


# Report 3
# Find all people with a given role
# who have been in movies of different genres
# Parameter: will take in a given role
r3 = """SELECT
          CONCAT(Person.FirstName, " ", Person.LastName) as Person,
          COUNT(Movie.Genre) as Genres
        FROM
          Movie INNER JOIN Credit ON Movie.MovieID = Credit.MovieID
          INNER JOIN Person ON Credit.PersonID = Person.PersonID

          WHERE Credit.Role = %s
           GROUP BY Person.PersonID
        HAVING count(Movie.Genre) > 1

        ORDER BY Person.LastName, Person.FirstName;"""
r3p = ['Role']


@routes.route('/report3')
def report3():
    return execute(r3, r3p, request)


# Report 4
# Find all the movies (and their genres)
# that were loved or ordered by a particular user U
# ordered first by the movie's name, then by the genre
r4 = """SELECT
          Movie.Name AS Name,
          Movie.Genre AS Genre
        FROM
          Movie INNER JOIN Love ON Movie.MovieID = Love.MovieID
          INNER JOIN User ON Love.UserID = User.UserID
        WHERE
          User.UserId = %s
          GROUP by Movie.MovieID
        UNION
        SELECT
          Movie.Name AS Name,
          Movie.Genre AS Genre
        FROM
          Movie INNER JOIN `Order` ON Movie.MovieID = `Order`.MovieID
          INNER JOIN User ON `Order`.UserID = User.UserID
        WHERE User.UserId = %s
          GROUP by Movie.MovieID
        ORDER BY Name, Genre;"""
r4p = ['UserID', 'UserID']


@routes.route('/report4')
def report4():
    return execute(r4, r4p, request)


# Report 5
# Find the most loved movies in every ZIP code for a given country
# where at least two users live
# Parameter: takes in a certain country
r5 = """SELECT User.PostalCode as ZIP, Movie.Name as movie, count(*) as loves
        FROM
          Movie INNER JOIN Love on Movie.MovieID = Love.MovieID
          INNER JOIN User on Love.UserID = User.UserID
          WHERE User.Country = %s
        GROUP BY User.PostalCode
        HAVING count(User.UserID) > 0
        UNION
        SELECT User.PostalCode as ZIP, Movie.Name as movie, count(*) as loves
        FROM
          Movie INNER JOIN `Order` o ON Movie.MovieID = o.MovieID
          INNER JOIN User ON o.UserID=User.UserID
          WHERE User.Country = %s
        GROUP BY User.PostalCode
        HAVING count(User.UserID) > 0
        ORDER BY loves DESC, movie;"""
r5p = ['Country', 'Country']

@routes.route('/report5')
def report5():
    return execute(r5, r5p, request)
