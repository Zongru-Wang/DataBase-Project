-- Report 1
-- Creates a list of Names of people and number of movies which are loved by user which they are credited in
-- This is to determine the most loved people
SELECT
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
ORDER BY loves DESC, Name;
-- Points:
--    1pt : 4 Tables
--    1pt : 2 where clauses
--    1pt : Ordered by 2 things
--    1pt : Grouping
--    1pt : 1 SubQuery
--    1pt : Concat Function
--    6pt TOTAL

-- Report 2
-- Find all theaters and streaming services and the number of orders
SELECT
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
ORDER BY orderCount DESC, Name;
-- Points:
--    1pt : 3 Tables
--    2pt : 2 Sub-queries
--    1pt : Union
--    1pt : Grouping
--    1pt : Order
--    6pt TOTAL


-- Report 3
-- Find all people with a given role
-- who have been in movies of different genres
-- Parameter: will take in a given role
-- In this example, the role is "Actor"
SELECT
  CONCAT(Person.FirstName, " ", Person.LastName) as Person,
          COUNT(Movie.Genre) as Genres
FROM
  Movie INNER JOIN Credit ON Movie.MovieID = Credit.MovieID
  INNER JOIN Person ON Credit.PersonID = Person.PersonID

  WHERE Credit.Role = "Actor"
   GROUP BY Person.PersonID
HAVING count(Movie.Genre) > 1

ORDER BY Person.LastName, Person.FirstName;
-- Points:
--    1pt : 3 Tables
--    1pt : Where Clause with 2 parts
--    1pt : Ordered by 2 things
--    1pt : Grouping
--    1pt : Having
--    1pt : Concat Function
--    6pt TOTAL

-- Report 4
-- Find all the movies (and their genres)
-- that were loved or ordered by a particular user U
-- ordered first by the movie's name, then by the genre
-- In this example, Uid = 4
SELECT
  Movie.Name AS Name,
  Movie.Genre AS Genre
FROM
  Movie INNER JOIN Love ON Movie.MovieID = Love.MovieID
  INNER JOIN User ON Love.UserID = User.UserID
WHERE
  User.UserId = 4
  GROUP by Movie.MovieID
UNION
SELECT
  Movie.Name AS Name,
  Movie.Genre AS Genre
FROM
  Movie INNER JOIN `Order` ON Movie.MovieID = `Order`.MovieID
  INNER JOIN User ON `Order`.UserID = User.UserID
WHERE User.UserId = 4
  GROUP by Movie.MovieID
ORDER BY Name, Genre;
-- Points:
--    1pt : 3 Tables
--    1pt : Where Clause with 2 parts
--    1pt : Ordered by 2 things
--    1pt : UNION
--    1pt : Group by
--    1pt :Non-aggregation functions in SELECT/WHERE?
--    6pt TOTAL


-- Report 5
-- Find the most loved movies in every ZIP code for a given country
-- where at least two users live
-- Parameter: takes in a certain country
-- In this example, the country is 'USA'
SELECT User.PostalCode as ZIP, Movie.Name as movie, count(*) as loves
FROM
  Movie INNER JOIN Love on Movie.MovieID = Love.MovieID
  INNER JOIN User on Love.UserID = User.UserID
  WHERE User.Country = 'USA'
GROUP BY User.PostalCode
HAVING count(User.UserID) > 0
UNION
SELECT User.PostalCode as ZIP, Movie.Name as movie, count(*) as loves
FROM
  Movie INNER JOIN `Order` o ON Movie.MovieID = o.MovieID
  INNER JOIN User ON o.UserID=User.UserID
  WHERE User.Country = 'USA'
GROUP BY User.PostalCode
HAVING count(User.UserID) > 0
ORDER BY loves DESC, movie;
-- Points:
--    1pt : 3 Tables
--    2pt : 2 Sub-queries
--    1pt:  Union
--    1pt : Ordered by 2 things
--    1pt : Grouping
--    1pt : Having
--    7pt TOTAL
