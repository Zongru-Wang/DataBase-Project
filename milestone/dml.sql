-- WARNING! this drop DB before running this

-- Data for the 'User' relation
-- User #1
INSERT INTO User (FirstName, LastName, Email, Password, Picture, Street, City, PostalCode, Country) VALUES ('Rooter', 'Wang', 'rooter@gmail.com', '$2b$12$yk9odfBe/TrOOzaJfWl9L.lNOsQjZvuO8oQMnkPKq5KGV38NMEI7a', 'http://lorempixel.com/output/people-q-c-400-400-1.jpg', 'Elm Street', 'Boston', '02112', 'USA');
-- User #2
INSERT INTO User (FirstName, LastName, Email, Password, Picture, Street, City, PostalCode, Country) VALUES ('Sarina', 'Dass', 'sarina@gmail.com', '$2b$12$ID/tHwuKkc3S.BPek1h76u9vx9A7ep9bdC0FnJqvN3vYQuC3TcNBC', 'http://lorempixel.com/output/people-q-c-400-400-2.jpg', 'Spruce Drive', 'Los Angeles', '31453', 'USA');
-- User #3
INSERT INTO User (FirstName, LastName, Email, Password, Picture, Street, City, PostalCode, Country) VALUES ('Viviano', 'Cantu', 'viviano@gmail.com', '$2b$12$wVWNB473j1XpKl5QYvj4OeOxHUQ7yYlQuZRkGH9kwPlhSJi4eYm5W', 'http://lorempixel.com/output/people-q-c-400-400-3.jpg', 'Maple Road', 'New York', '13251', 'USA');
-- User #4
INSERT INTO User (FirstName, LastName, Email, Password, Picture, Street, City, PostalCode, Country) VALUES ('Kirk', 'Morgan', 'kirk@gmail.com', '$2b$12$/owDmxNRvNERCXvEN1ZOcuA5gh03vKv.JprQHdQ0QVwDbo7IrQ1YC', 'http://lorempixel.com/output/people-q-c-400-400-4.jpg', 'Oak Corner', 'San Francisco', '21341', 'USA');
-- User #5
INSERT INTO User (FirstName, LastName, Email, Password, Picture, Street, City, PostalCode, Country) VALUES ('Alexander', 'Huba', 'alexander@gmail.com', '$2b$12$.WTQgrjnGY3UmNGHi6PEU.OfHk2T52Kg45spdzt0lKFjE2AP1lqSa', 'http://lorempixel.com/output/people-q-c-400-400-5.jpg', 'Ash Way', 'Albany', '13531', 'USA');
-- User #6
INSERT INTO User (FirstName, LastName, Email, Password, Picture, Street, City, PostalCode, Country) VALUES ('Emma', 'Scheibly', 'emma@gmail.com', '$2b$12$dU/ZTXVSGugYm2T1wSH33efiNRuiNFAQq/STdZMSQvfKy.gRbffP6', 'http://lorempixel.com/output/people-q-c-400-400-6.jpg', 'Cherry Crescent', 'Albany', '13531', 'USA');
-- User #7
INSERT INTO User (FirstName, LastName, Email, Password, Picture, Street, City, PostalCode, Country) VALUES ('Sami', 'Bartlett', 'sami@gmail.com', '$2b$12$BCc2AVhBuPoLAN5EysdbiOCTs0uqzoojxUQRpqidTDMuN90n0Hkfq', 'http://lorempixel.com/output/people-q-c-400-400-7.jpg', 'Balsam Court', 'San Fancisco', '245679', 'USA');
-- User #
INSERT INTO User (FirstName, LastName, Email, Password, Picture, Street, City, PostalCode, Country) VALUES ('Emma', 'McCaffery', 'emma1@gmail.com', '$2b$12$nWoUOiIvVnYljBoCoZCxZ.R.74/6K4USdkWcnIzU0NGfs6CjZNxiC', 'http://lorempixel.com/output/people-q-c-400-400-8.jpg', 'Pine Drive', 'Albany', '23837', 'USA');
-- User #9
INSERT INTO User (FirstName, LastName, Email, Password, Picture, Street, City, PostalCode, Country) VALUES ('Allison', 'Morgan', 'allison@gmail.com', '$2b$12$VXs83udwNOMnNcTFtMp63OBBoqFeSKn8bpIMwFbo4WwMIPvGmzBFe', 'http://lorempixel.com/output/people-q-c-400-400-9.jpg', 'Birch Lane', 'Philadelphia', '09912', 'USA');
-- User #10
INSERT INTO User (FirstName, LastName, Email, Password, Picture, Street, City, PostalCode, Country) VALUES ('Matt', 'Gould', 'matt@gmail.com', '$2b$12$sJ5X21q1iHz/SptdQAHL3ukzmK4zkR8hh2E9.CYReVVhjCnFO5J6y', 'http://lorempixel.com/output/people-q-c-400-400-3.jpg', 'Chestnut Way', 'Nashville', '91273', 'USA');


-- Data for the 'Movie' relation
-- Movie #1
INSERT INTO Movie (Name, ReleaseDate, Genre, Studio, Cover) VALUES ('Star Wars', '1977-05-25', 'Science Fiction', 'Lucasfilm', "https://i.pinimg.com/originals/69/cc/89/69cc89ce76e6a4c762730c2024241880.jpg");
-- Movie #2
INSERT INTO Movie (Name, ReleaseDate, Genre, Studio, Cover) VALUES ('Forest Gump', '1994-07-06', 'Drama', 'Warner Bros', "https://i.pinimg.com/originals/f8/4b/96/f84b961743b78e47edf22fce1cde3d2c.jpg");
-- Movie #3
INSERT INTO Movie (Name, ReleaseDate, Genre, Studio, Cover) VALUES ('Iron Man', '2008-05-02', 'Action', 'Marvel', "https://ia.media-imdb.com/images/M/MV5BMTczNTI2ODUwOF5BMl5BanBnXkFtZTcwMTU0NTIzMw@@._V1_UY1200_CR90,0,630,1200_AL_.jpg");
-- Movie #4
INSERT INTO Movie (Name, ReleaseDate, Genre, Studio, Cover) VALUES ('Anger Management', '2003-04-11', 'Comedy', 'Paramount Pictures', "https://images-na.ssl-images-amazon.com/images/I/510AEJKQZDL._SY445_.jpg");
-- Movie #5
INSERT INTO Movie (Name, ReleaseDate, Genre, Studio, Cover) VALUES ('Casino Royale', '2006-11-17', 'Action', 'Lucasfilm', "https://imgc.allpostersimages.com/img/print/posters/james-bond-casino-royale-one-sheet-movie-poster-print_a-G-9843267-0.jpg?w=649&h=924");
-- Movie #6
INSERT INTO Movie (Name, ReleaseDate, Genre, Studio, Cover) VALUES ('The Notebook', '2004-06-25', 'Romance', 'Lucasfilm', "http://nicholassparks.com/wp-content/uploads/2013/07/200406-the-notebook.jpeg");
-- Movie #7
INSERT INTO Movie (Name, ReleaseDate, Genre, Studio, Cover) VALUES ('The Big Lebowski', '1998-03-06', 'Comdey', 'Lucasfilm', "http://img.moviepostershop.com/the-big-lebowski-movie-poster-1998-1020196337.jpg");
-- Movie #8
INSERT INTO Movie (Name, ReleaseDate, Genre, Studio, Cover) VALUES ('Miracle', '2004-02-06', 'Sports', 'Lucasfilm', "https://lumiere-a.akamaihd.net/v1/images/open-uri20150422-12561-1rqusi3_acf8ebcb.jpeg?region=0%2C0%2C1000%2C1410");
-- Movie #9
INSERT INTO Movie (Name, ReleaseDate, Genre, Studio, Cover) VALUES ('The Shining', '1980-05-23', 'Horror', 'Lucasfilm', "http://simonsayswatchthis.files.wordpress.com/2013/10/the-shining-dvd-cover-01.jpg");
-- Movie #10
INSERT INTO Movie (Name, ReleaseDate, Genre, Studio, Cover) VALUES ('Wonderwoman', '2017-06-02', 'Action', 'DC Comics', "https://images-na.ssl-images-amazon.com/images/I/51JwsfzqaJL.jpg");
-- Movie #11
INSERT INTO Movie (Name, ReleaseDate, Genre, Studio, Cover) VALUES ('A Quiet Place', '2018-02-02', 'Horror', 'Lucasfilm', "hhttps://ohsmagnet.com/wp-content/uploads/2018/04/a_quiet_place-701964812-large-627x900.jpg");
-- Movie #12
INSERT INTO Movie (Name, ReleaseDate, Genre, Studio, Cover) VALUES ('Love Simon', '2018-03-17', 'Romance', 'Warner Bros', "https://ia.media-imdb.com/images/M/MV5BNTMyZDdiMzUtZjcxNS00Mjc3LTljY2UtYjI4YmY5NzJlYjc1XkEyXkFqcGdeQXVyMTA5OTkwNTc@._V1_UX182_CR0,0,182,268_AL_.jpg");

-- Data for the 'Theater' relation
-- Theater #1
INSERT INTO Theater (Name, Location) VALUES ('Cinema 7', 'Boston');
-- Theater #2
INSERT INTO Theater (Name, Location) VALUES ('The Spectrum', 'Albany');
-- Theater #3
INSERT INTO Theater (Name, Location) VALUES ('The Epoch', 'Los Angeles');
-- Theater #4
INSERT INTO Theater (Name, Location) VALUES ('Pluto Theater', 'New York');
-- Theater #5
INSERT INTO Theater (Name, Location) VALUES ('Crown Cinema', 'Nashville');
-- Theater #6
INSERT INTO Theater (Name, Location) VALUES ('Prestige Concert Hall', 'London');
-- Theater #7
INSERT INTO Theater (Name, Location) VALUES ('Vertex Cinema', 'San Francisco');
-- Theater #8
INSERT INTO Theater (Name, Location) VALUES ('Landmark', 'Los Angeles');
-- Theater #9
INSERT INTO Theater (Name, Location) VALUES ('Prism Cinema', 'Philadelphia');
-- Theater #10
INSERT INTO Theater (Name, Location) VALUES ('Capital Cinema', 'Albnay');


-- Data for the 'Streaming' relation
-- Streaming #1
INSERT INTO Streaming (AffiliateURL, Name) VALUES ('cinemalive.com', 'Cinema');
-- Streaming #2
INSERT INTO Streaming (AffiliateURL, Name) VALUES ('spectrumcake.com', 'Spectrum');
-- Streaming #3
INSERT INTO Streaming (AffiliateURL, Name) VALUES ('epochnow.com', 'Epoch');
-- Streaming #4
INSERT INTO Streaming (AffiliateURL, Name) VALUES ('plutoniumexperience.com', 'Pluto');
-- Streaming #5
INSERT INTO Streaming (AffiliateURL, Name) VALUES ('crowningcinema.com', 'Crown');
-- Streaming #6
INSERT INTO Streaming (AffiliateURL, Name) VALUES ('prestigemovies.com', 'Prestige');
-- Streaming #7
INSERT INTO Streaming (AffiliateURL, Name) VALUES ('vertexedmovies.com', 'Vertex');
-- Streaming #8
INSERT INTO Streaming (AffiliateURL, Name) VALUES ('landmarktheatres.com', 'Landmark');
-- Streaming #9
INSERT INTO Streaming (AffiliateURL, Name) VALUES ('prism.com', 'Prism');
-- Streaming #10
INSERT INTO Streaming (AffiliateURL, Name) VALUES ('capitalclassmovie.com', 'Capital');

-- Data for the 'Order' relation
-- Order #1
INSERT INTO `Order` (Amount, DateTime, UserID, MovieID) VALUES (5, '2018-04-19 23:07:46', 2, 6);
-- `Order` #2
INSERT INTO `Order` (Amount, DateTime, UserID, MovieID) VALUES (10, '2018-01-26 09:25:34', 8, 5);
-- `Order` #3
INSERT INTO `Order` (Amount, DateTime, UserID, MovieID) VALUES (5, '2017-11-22 04:30:20', 9, 4);
-- `Order` #4
INSERT INTO `Order` (Amount, DateTime, UserID, MovieID) VALUES (15, '2018-01-26 12:25:34', 1, 2);
-- `Order` #5
INSERT INTO `Order` (Amount, DateTime, UserID, MovieID) VALUES (10, '2018-03-02 09:23:33', 6, 1);
-- `Order` #6
INSERT INTO `Order` (Amount, DateTime, UserID, MovieID) VALUES (10, '2018-01-02 03:10:42', 7, 1);
-- `Order` #7
INSERT INTO `Order` (Amount, DateTime, UserID, MovieID) VALUES (5, '2018-01-02 05:25:50', 7, 3);
-- `Order` #8
INSERT INTO `Order` (Amount, DateTime, UserID, MovieID) VALUES (5, '2017-09-21 02:49:29', 1, 6);
-- `Order` #9
INSERT INTO `Order` (Amount, DateTime, UserID, MovieID) VALUES (10, '2017-12-26 23:33:01', 10, 7);
-- `Order` #10
INSERT INTO `Order` (Amount, DateTime, UserID, MovieID) VALUES (15, '2018-02-14 05:09:09', 6, 3);
-- `Order` #11
INSERT INTO `Order` (Amount, DateTime, UserID, MovieID) VALUES (15, '2016-07-24 01:44:07', 8, 2);
-- `Order` #12
INSERT INTO `Order` (Amount, DateTime, UserID, MovieID) VALUES (15, '2011-06-23 10:21:07', 4, 2);
-- `Order` #13
INSERT INTO `Order` (Amount, DateTime, UserID, MovieID) VALUES (15, '2017-07-23 03:32:35', 2, 9);
-- `Order` #14
INSERT INTO `Order` (Amount, DateTime, UserID, MovieID) VALUES (15, '2018-01-08 02:49:52', 9, 1);
-- `Order` #15
INSERT INTO `Order` (Amount, DateTime, UserID, MovieID) VALUES (15, '2015-11-24 01:36:34', 2, 1);
-- `Order` #16
INSERT INTO `Order` (Amount, DateTime, UserID, MovieID) VALUES (15, '2016-12-02 02:17:24', 7, 6);
-- `Order` #17
INSERT INTO `Order` (Amount, DateTime, UserID, MovieID) VALUES (15, '2017-12-11 12:02:09', 7, 7);
-- `Order` #18
INSERT INTO `Order` (Amount, DateTime, UserID, MovieID) VALUES (15, '2013-09-22 05:15:06', 2, 5);
-- `Order` #19
INSERT INTO `Order` (Amount, DateTime, UserID, MovieID) VALUES (15, '2014-06-13 11:23:01', 1, 6);
-- `Order` #20
INSERT INTO `Order` (Amount, DateTime, UserID, MovieID) VALUES (15, '2016-12-23 04:30:20', 7, 1);


-- Data for the 'TheaterOrder' relation
-- Theater Order #1
INSERT INTO `TheaterOrder` (ConfNumber, TheaterName, SeatCount, Seats) VALUES (1, 'Prestige Concert Hall', 2, '2A,2B');
-- Theater Order #2
INSERT INTO `TheaterOrder` (ConfNumber, TheaterName, SeatCount, Seats) VALUES (2, 'Pluto Theater', 1, '12G');
-- Theater Order #3
INSERT INTO `TheaterOrder` (ConfNumber, TheaterName, SeatCount, Seats) VALUES (3, 'The Spectrum', 4, '1D,1E,1F,1G');
-- Theater Order #4
INSERT INTO `TheaterOrder` (ConfNumber, TheaterName, SeatCount, Seats) VALUES (4, 'Landmark', 2, '22E,22F');
-- Theater Order #5
INSERT INTO `TheaterOrder` (ConfNumber, TheaterName, SeatCount, Seats) VALUES (5, 'Pluto Theater', 1, '17J');
-- Theater Order #6
INSERT INTO `TheaterOrder` (ConfNumber, TheaterName, SeatCount, Seats) VALUES (6, 'Vertex Cinema', 3, '4C,4D,4E');
-- Theater Order #7
INSERT INTO `TheaterOrder` (ConfNumber, TheaterName, SeatCount, Seats) VALUES (7, 'Landmark', 1, '1A');
-- Theater Order #8
INSERT INTO `TheaterOrder` (ConfNumber, TheaterName, SeatCount, Seats) VALUES (8, 'Pluto Theater', 2, '6F,2E');
-- Theater Order #9
INSERT INTO `TheaterOrder` (ConfNumber, TheaterName, SeatCount, Seats) VALUES (9, 'Pluto Theater', 1, '7I');
-- Theater Order #10
INSERT INTO `TheaterOrder` (ConfNumber, TheaterName, SeatCount, Seats) VALUES (10, 'The Spectrum', 4, '3G,6J,2A,1G');

-- Data for the 'SreamingOrder' relation
-- Streaming Order #1
INSERT INTO `StreamingOrder` (ConfNumber, StreamingURL, ExpirationDate) VALUES (11, 'crowningcinema.com', '2017-11-22 04:30:20');
-- Streaming Order #2
INSERT INTO `StreamingOrder` (ConfNumber, StreamingURL, ExpirationDate) VALUES (12, 'plutoniumexperience.com', '2018-01-26 12:25:34');
-- Streaming Order #3
INSERT INTO `StreamingOrder` (ConfNumber, StreamingURL, ExpirationDate) VALUES (13, 'epochnow.com', '2018-01-02 05:25:50');
-- Streaming Order #4
INSERT INTO `StreamingOrder` (ConfNumber, StreamingURL, ExpirationDate) VALUES (14, 'prism.com', '2017-12-26 23:33:01');
-- Streaming Order #5
INSERT INTO `StreamingOrder` (ConfNumber, StreamingURL, ExpirationDate) VALUES (15, 'spectrumcake.com', '2017-07-23 03:32:35');
-- Streaming Order #6
INSERT INTO `StreamingOrder` (ConfNumber, StreamingURL, ExpirationDate) VALUES (16, 'epochnow.com', '2018-01-08 02:49:52');
-- Streaming Order #7
INSERT INTO `StreamingOrder` (ConfNumber, StreamingURL, ExpirationDate) VALUES (17, 'vertexedmovies.com', '2015-11-24 01:36:34');
-- Streaming Order #8
INSERT INTO `StreamingOrder` (ConfNumber, StreamingURL, ExpirationDate) VALUES (18, 'crowningcinema.com', '2016-12-02 02:17:24');
-- Streaming Order #9
INSERT INTO `StreamingOrder` (ConfNumber, StreamingURL, ExpirationDate) VALUES (19, 'epochnow.com', '2013-09-22 05:15:06');
-- Streaming Order #10
INSERT INTO `StreamingOrder` (ConfNumber, StreamingURL, ExpirationDate) VALUES (20, 'plutoniumexperience.com', '2016-12-23 04:30:20');


-- Data for the 'Phone' relation
-- Phone #1
INSERT INTO Phone (UserID, Phone) VALUES (1, '9136345916');
-- Phone #2
INSERT INTO Phone (UserID, Phone) VALUES (2, '2656322346');
-- Phone #3
INSERT INTO Phone (UserID, Phone) VALUES (1, '1236966212');
-- Phone #4
INSERT INTO Phone (UserID, Phone) VALUES (3, '8123746234');
-- Phone #5
INSERT INTO Phone (UserID, Phone) VALUES (6, '7283470152');
-- Phone #6
INSERT INTO Phone (UserID, Phone) VALUES (5, '2340676321');
-- Phone #7
INSERT INTO Phone (UserID, Phone) VALUES (8, '3942974875');
-- Phone #8
INSERT INTO Phone (UserID, Phone) VALUES (8, '4528978364');
-- Phone #9
INSERT INTO Phone (UserID, Phone) VALUES (9, '8723756164');
-- Phone #10
INSERT INTO Phone (UserID, Phone) VALUES (4, '5286354673');
-- Phone #11
INSERT INTO Phone (UserID, Phone) VALUES (2, '5982393859');
-- Phone #12
INSERT INTO Phone (UserID, Phone) VALUES (1, '9729885723');
-- Phone #13
INSERT INTO Phone (UserID, Phone) VALUES (8, '9237592834');

-- Data for the 'Person' relation
-- Person #1
INSERT INTO Person (PersonId, FirstName, LastName, Picture, Birthdate) VALUES (0, 'Bob', 'Thorton', 'http://lorempixel.com/output/people-q-c-400-400-3.jpg', '1991-07-15');
-- Person #2
INSERT INTO Person (PersonId, FirstName, LastName, Picture, Birthdate) VALUES (1, 'Jane', 'Smith', 'http://lorempixel.com/output/people-q-c-400-400-7.jpg', '1973-11-25');
-- Person #3
INSERT INTO Person (PersonId, FirstName, LastName, Picture, Birthdate) VALUES (2, 'Ryan', 'Maas', 'http://lorempixel.com/output/people-q-c-400-400-8.jpg', '1993-04-20');
-- Person #4
INSERT INTO Person (PersonId, FirstName, LastName, Picture, Birthdate) VALUES (3, 'Matt', 'Codi', 'http://lorempixel.com/output/people-q-c-400-400-9.jpg', '1957-09-15');
-- Person #5
INSERT INTO Person (PersonId, FirstName, LastName, Picture, Birthdate) VALUES (4, 'Robey', 'NeJame', 'http://lorempixel.com/output/people-q-c-400-400-6.jpg', '1986-01-03');
-- Person #6
INSERT INTO Person (PersonId, FirstName, LastName, Picture, Birthdate) VALUES (5, 'Lana', 'Rodriguez', 'http://lorempixel.com/output/people-q-c-400-400-4.jpg', '1993-10-12');
-- Person #7
INSERT INTO Person (PersonId, FirstName, LastName, Picture, Birthdate) VALUES (6, 'Jane', 'Jones', 'http://lorempixel.com/output/people-q-c-400-400-10.jpg', '1992-07-15');
-- Person #8
INSERT INTO Person (PersonId, FirstName, LastName, Picture, Birthdate) VALUES (7, 'Daisy', 'Belle', 'http://lorempixel.com/output/people-q-c-400-400-5.jpg', '1967-09-12');
-- Person #9
INSERT INTO Person (PersonId, FirstName, LastName, Picture, Birthdate) VALUES (8, 'Matt', 'Smith', 'http://lorempixel.com/output/people-q-c-400-400-1.jpg', '1989-02-23');
-- Person #10
INSERT INTO Person (PersonId, FirstName, LastName, Picture, Birthdate) VALUES (9, 'Yvonne', 'Lee', 'http://lorempixel.com/output/people-q-c-400-400-2.jpg', '1995-01-24');


-- Data for the 'Credit' relation
-- Credit #1
INSERT INTO Credit (MovieID, Role, PersonID, CharacterName, CharacterPhoto) VALUES (6, 'Director', 2, NULL, NULL);
-- Credit #2
INSERT INTO Credit (MovieID, Role, PersonID, CharacterName, CharacterPhoto) VALUES (8, 'Actor', 7, 'Billy', 'A');
-- Credit #3
INSERT INTO Credit (MovieID, Role, PersonID, CharacterName, CharacterPhoto) VALUES (3, 'Actor', 5, 'Resturant Robber 1', 'R');
-- Credit #4
INSERT INTO Credit (MovieID, Role, PersonID, CharacterName, CharacterPhoto) VALUES (2, 'Director', 2, NULL, NULL);
-- Credit #5
INSERT INTO Credit (MovieID, Role, PersonID, CharacterName, CharacterPhoto) VALUES (1, 'Special Effects', 8, NULL, NULL);
-- Credit #6
INSERT INTO Credit (MovieID, Role, PersonID, CharacterName, CharacterPhoto) VALUES (10, 'Camera Operator', 6, NULL, NULL);
-- Credit #
INSERT INTO Credit (MovieID, Role, PersonID, CharacterName, CharacterPhoto) VALUES (1, 'Actor', 3, 'Cashier', 'c');
-- Credit #8
INSERT INTO Credit (MovieID, Role, PersonID, CharacterName, CharacterPhoto) VALUES (4, 'Set Operator', 4, NULL, NULL);
-- Credit #9
INSERT INTO Credit (MovieID, Role, PersonID, CharacterName, CharacterPhoto) VALUES (9, 'Actor', 8, 'Menacing Thug 3', 'm');
-- Credit #10
INSERT INTO Credit (MovieID, Role, PersonID, CharacterName, CharacterPhoto) VALUES (3, 'Actor', 7, 'Jonny', 'j');


-- Data for the 'Views' relation
-- View #1
INSERT INTO Love (UserID, MovieID) VALUES (3, 6);
-- View #2
INSERT INTO Love (UserID, MovieID) VALUES (2, 1);
-- View #3
INSERT INTO Love (UserID, MovieID) VALUES (7, 3);
-- View #4
INSERT INTO Love (UserID, MovieID) VALUES (9, 2);
-- View #5
INSERT INTO Love (UserID, MovieID) VALUES (6, 1);
-- View #6
INSERT INTO Love (UserID, MovieID) VALUES (9, 1);
-- View #7
INSERT INTO Love (UserID, MovieID) VALUES (7, 7);
-- View #8
INSERT INTO Love (UserID, MovieID) VALUES (3, 7);
-- View #9
INSERT INTO Love (UserID, MovieID) VALUES (4, 5);
-- View #10
INSERT INTO Love (UserID, MovieID) VALUES (5, 2);
INSERT INTO Love (UserID, MovieID) VALUES (8, 11);
INSERT INTO Love (UserID, MovieID) VALUES (8, 12);

-- Data for the 'MoviePictures' relation
-- MoviePicture #1
INSERT INTO MoviePictures (MovieID, Picture) VALUES (1, "https://i.pinimg.com/originals/69/cc/89/69cc89ce76e6a4c762730c2024241880.jpg");
-- MoviePicture #2
INSERT INTO MoviePictures (MovieID, Picture) VALUES (2, "https://i.pinimg.com/originals/f8/4b/96/f84b961743b78e47edf22fce1cde3d2c.jpg");
-- MoviePicture #3
INSERT INTO MoviePictures (MovieID, Picture) VALUES (3, "https://ia.media-imdb.com/images/M/MV5BMTczNTI2ODUwOF5BMl5BanBnXkFtZTcwMTU0NTIzMw@@._V1_UY1200_CR90,0,630,1200_AL_.jpg");
-- MoviePicture #4
INSERT INTO MoviePictures (MovieID, Picture) VALUES (4, "https://images-na.ssl-images-amazon.com/images/I/510AEJKQZDL._SY445_.jpg");
-- MoviePicture #5
INSERT INTO MoviePictures (MovieID, Picture) VALUES (5, "https://imgc.allpostersimages.com/img/print/posters/james-bond-casino-royale-one-sheet-movie-poster-print_a-G-9843267-0.jpg?w=649&h=924");
-- MoviePicture #6
INSERT INTO MoviePictures (MovieID, Picture) VALUES (6, "http://nicholassparks.com/wp-content/uploads/2013/07/200406-the-notebook.jpeg");
-- MoviePicture #7
INSERT INTO MoviePictures (MovieID, Picture) VALUES (7, "http://img.moviepostershop.com/the-big-lebowski-movie-poster-1998-1020196337.jpg");
-- MoviePicture #8
INSERT INTO MoviePictures (MovieID, Picture) VALUES (8, "https://lumiere-a.akamaihd.net/v1/images/open-uri20150422-12561-1rqusi3_acf8ebcb.jpeg?region=0%2C0%2C1000%2C1410");
-- MoviePicture #9
INSERT INTO MoviePictures (MovieID, Picture) VALUES (9, "http://simonsayswatchthis.files.wordpress.com/2013/10/the-shining-dvd-cover-01.jpg");
-- MoviePicture #10
INSERT INTO MoviePictures (MovieID, Picture) VALUES (10, "https://images-na.ssl-images-amazon.com/images/I/51JwsfzqaJL.jpg");
