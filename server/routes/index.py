from flask import Blueprint, Response
from database import DB
from flask import render_template
import json
import datetime


routes = Blueprint('index', __name__, template_folder='../templates')


def error(message):
    return render_template('error.html', {'message': message})


@routes.route('/')
def index():
    return render_template('index.html', foo='hello')


@routes.route('/test')
@routes.route('/test/<userId>')
def test(userId=None):
    cur = DB()

    # check if input is digit
    if not userId.isdigit():
        return error(str(userId) + ' is not a valid userId')

    # !!!!!!!!!!!! USE THIS FORMAT TO ESCAPE QUERY !!!!!!!!!!!!
    cur.execute("""SELECT * FROM User u WHERE u.UserID = %s;""", [userId])

    results = cur.fetchall()  # array of return

    print(results)
    if len(results) >= 1:  # user found
        row = results[0]
        return render_template('test.html',
                               user= {
                                   'first': row[1],
                                    'last': row[2],
                                    'email': row[3] })
    else:
        return error('User does not exist')


@routes.route('/user')
def loves_movie(userId, movieId):
    cur = DB()

    # check that inputs are digits
    if not userId.isdigit():
        return error(str(userId) + ' is not a valid userId')
    # check that the movieId is a digit
    if not movieId.isdigit():
        return error(str(movieId) + ' is not a valid movieId')

    cur.execute("""SELECT * FROM Views v WHERE v.UserID = %s AND v.MovieID = %s""", [userId, movieId])

    results = cur.fetchall()

    if len(results) > 0:
        return error('User already liked this movie')
    else:
        cur.execute("""INSERT INTO View (UserID, MovieID) VALUES(%s, %s)""", [userId, movieId])

    return Response(json.dumps({'msg': 'Success'}), status=200, mimetype='application/json')


@routes.route('/user')
def orders_tickets(userId, movieId):
    cur = DB()

    # check that inputs are digits
    if not userId.isdigit():
        return error(str(userId) + ' is not a valid userId')
    # check that the movieId is a digit
    if not movieId.isdigit():
        return error(str(movieId) + ' is not a valid movieId')

    cur.execute("""INSERT INTO Order (Amount, DateTime, UserID, MovieID) VALUES (10, %s, %s, %s)""", [datetime.date, userId, movieId])

    return Response(json.dumps({'msg': 'Success'}), status=200, mimetype='application/json')

