-- a) Register a new user
-- Add a new User by add a new UserId, FirstName, LastName, Email, password,
-- Picture, Picture, Street, City, PostalCode, Country.
INSERT INTO User (FirstName, LastName, Email, Password, Picture, Street, City, PostalCode, Country)
      VALUES ('Zong', 'Wong', 'Wong@gmail.com', '1234321', 'http://lorempixel.com/output/people-q-c-400-400-3.jpg', 'Elm Street', 'Boston', '02112', 'USA');



-- b) Record that a user loves a movie
-- Add a Love table to record User has ID = 10 loves a Movie has Id = 2
INSERT INTO Love (UserID, MovieID) VALUES (10, 2);

-- c) Order a ticket from a local theatre
INSERT INTO `Order` (Amount, DateTime, UserID, MovieID) VALUES (15, '2016-12-23 04:30:20', 7, 1);
INSERT INTO `TheaterOrder` (ConfNumber, TheaterName, SeatCount, Seats) VALUES (2199, 'The Spectrum', 4, '3G,6J,2A,1G');



-- d) Credit an existing actress for a movie
INSERT INTO Credit (MovieID, Role, PersonID, CharacterName, CharacterPhoto) VALUES (6, 'Actor', 3, 'Simth', 'http://lorempixel.com/output/people-q-c-400-400-3.jpg');

-- e) Provide a ranked list of revenue generated from the top-10 studios
SELECT Movie.Studio AS Studio, sum(`Order`.Amount) AS Revenue
  FROM Movie INNER JOIN `Order` ON Movie.MovieID = `Order`.MovieID
GROUP BY Movie.Studio
ORDER BY sum(`Order`.Amount) DESC
LIMIT 10;

-- f) Find all movies directed by a person (supplied via last name)
SELECT Movie.Name AS Movie
  FROM (Movie INNER JOIN Credit ON Movie.MovieID = Credit.MovieID)
INNER JOIN Person ON Credit.PersonID = Person.PersonID
WHERE Credit.Role = "Director" AND Person.LastName = "Maas";

-- g) Load the cover images and names of movies ordered by a particular user
SELECT MoviePictures.Picture AS CoverImage, Movie.Name AS Name, User.LastName AS UserLastName, User.UserID AS Userid
  FROM User INNER JOIN `Order` ON User.UserID = `Order`.UserID
  INNER JOIN Movie ON `Order`.MovieID = Movie.MovieID
  INNER JOIN MoviePictures ON MoviePictures.MovieID = Movie.MovieID
WHERE User.UserID = 1
ORDER by Movie.Name;


-- h) Find all movies released this year that a user loves but has not ordered
SELECT Movie.Name AS Name
  FROM Movie INNER JOIN Love ON Movie.MovieID = Love.MovieID
  INNER JOIN User ON User.UserID = Love.UserID
  LEFT JOIN `Order` ON `Order`.MovieID = Love.MovieID
  WHERE User.UserID = 1 AND YEAR(Movie.ReleaseDate) = 2018
  Group by Movie.Name;

-- i) Find all people (name, picture, and role) credited for a particular movie (supplied by name)
SELECT Person.LastName AS LastName, Person.FirstName AS FirstName, Person.Picture AS Picture, Credit.Role AS Role
  FROM Person INNER JOIN Credit ON Credit.PersonID = Person.PersonID
  INNER JOIN Movie ON Movie.MovieID = Credit.MovieID
  WHERE Movie.Name = "Anger Management"
Order by Person.LastName;

-- j) Provide a ranked list of revenue generated from the top-3 movie genres
SELECT Movie.Genre  AS Genre, sum(`Order`.Amount) AS Amount
From Movie INNER JOIN `Order` ON Movie.MovieID = `Order`.MovieID
GROUP by Movie.Genre
ORDER by amount DESC
LIMIT 3;
