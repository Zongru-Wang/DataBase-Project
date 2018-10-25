DROP DATABASE IF EXISTS QwikTix;

CREATE DATABASE QwikTix;

USE QwikTix;

CREATE TABLE User (
  UserID int PRIMARY key AUTO_INCREMENT,
  FirstName varchar(256),
  LastName varchar(256),
  Email varchar(256),
  Password varchar(256),
  Picture VARCHAR (256),
  Street varchar(256),
  City varchar(256),
  PostalCode varchar(10),
  Country varchar(256)
);

CREATE TABLE Movie (
  MovieID int PRIMARY key AUTO_INCREMENT,
  Name VARCHAR (256),
  ReleaseDate DATE,
  Genre VARCHAR (256),
  Studio VARCHAR (256),
  Cover VARCHAR (256)
);

CREATE TABLE Theater (
  Name VARCHAR (256) PRIMARY key,
  Location VARCHAR (256)
);

CREATE TABLE Streaming (
  AffiliateURL varchar(256) primary key,
  Name VARCHAR (256)
);


CREATE TABLE `Order` (
  ConfNumber int PRIMARY KEY AUTO_INCREMENT,
  Amount int,
  DateTime DATETIME,
  UserID int,
  MovieID int,
  CONSTRAINT c_fko1 FOREIGN KEY (UserID) REFERENCES User(UserID),
  CONSTRAINT c_fko2 FOREIGN KEY (MovieID) REFERENCES Movie(MovieID)
);

CREATE TABLE StreamingOrder (
  ConfNumber int PRIMARY KEY,
  StreamingURL varchar(256),
  ExpirationDate DATE,
  CONSTRAINT c_fkso1 FOREIGN KEY (ConfNumber) REFERENCES `Order`(ConfNumber),
  CONSTRAINT c_fkso2 FOREIGN KEY (StreamingURL) REFERENCES Streaming(AffiliateURL)
);

CREATE TABLE TheaterOrder (
  ConfNumber int PRIMARY KEY,
  TheaterName varchar(256),
  SeatCount int,
  Seats varchar(256),
  CONSTRAINT c_fkto1 FOREIGN KEY (ConfNumber) REFERENCES `Order`(ConfNumber),
  CONSTRAINT c_fkto2 FOREIGN KEY (TheaterName) REFERENCES Theater(Name)
);


CREATE TABLE Phone (
  UserID int,
  Phone varchar(15),
  CONSTRAINT c_fkp1 FOREIGN KEY (UserID) REFERENCES User(UserID),
  PRIMARY KEY (UserID, Phone)
);


CREATE TABLE Person (
  PersonID int PRIMARY key,
  FirstName varchar(256),
  LastName varchar(256),
  Picture varchar(256),
  Birthdate DATE
);

CREATE TABLE Credit (
  MovieID int,
  Role varchar(256),
  PersonID int,
  CharacterName varchar(256),
  CharacterPhoto varchar(256),
  CONSTRAINT c_fkc1 FOREIGN KEY (MovieID) REFERENCES Movie(MovieID),
  CONSTRAINT c_fkc2 FOREIGN KEY (PersonID) REFERENCES Person(PersonID),
  PRIMARY KEY (MovieID, Role, PersonID)
);


CREATE TABLE Love (
  UserID int,
  MovieID int,
  CONSTRAINT c_fkv1 FOREIGN KEY (UserID) REFERENCES User(UserID),
  CONSTRAINT c_fkv2 FOREIGN KEY (MovieID) REFERENCES Movie(MovieID),
  PRIMARY KEY (UserID, MovieID)
);

CREATE TABLE MoviePictures (
  MovieID int,
  Picture varchar(256),
  CONSTRAINT c_fkmp1 FOREIGN KEY (MovieID) REFERENCES Movie(MovieID),
  PRIMARY KEY (Picture, MovieID)
);
