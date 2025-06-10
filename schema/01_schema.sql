CREATE DATABASE IF NOT EXISTS imdb_clone;
USE imdb_clone;


DROP TABLE IF EXISTS akas;
DROP TABLE IF EXISTS basics;
DROP TABLE IF EXISTS crew;
DROP TABLE IF EXISTS episode;
DROP TABLE IF EXISTS principals;
DROP TABLE IF EXISTS ratings;
DROP TABLE IF EXISTS name_basics;


CREATE TABLE akas (
  titleId         VARCHAR(20) NOT NULL,
  ordering        INT NOT NULL,
  title           VARCHAR(500),
  region          VARCHAR(10),
  language        VARCHAR(10),
  types           TEXT,       
  attributes      TEXT,       
  isOriginalTitle TINYINT,    
  PRIMARY KEY (titleId, ordering)
);


CREATE TABLE basics (
  tconst          VARCHAR(20) NOT NULL PRIMARY KEY,
  titleType       VARCHAR(50),
  primaryTitle    VARCHAR(500),
  originalTitle   VARCHAR(500),
  isAdult         TINYINT,    
  startYear       INT,
  endYear         INT,
  runtimeMinutes  INT,
  genres          TEXT        
);


CREATE TABLE crew (
  tconst   VARCHAR(20) NOT NULL PRIMARY KEY,
  directors TEXT,  
  writers   TEXT   
);


CREATE TABLE episode (
  tconst        VARCHAR(20) NOT NULL PRIMARY KEY,
  parentTconst  VARCHAR(20),
  seasonNumber  INT,
  episodeNumber INT
);


CREATE TABLE principals (
  tconst    VARCHAR(20) NOT NULL,
  ordering  INT NOT NULL,
  nconst    VARCHAR(20) NOT NULL,
  category  VARCHAR(50),
  job       VARCHAR(100),
  characters TEXT,
  PRIMARY KEY (tconst, ordering, nconst)
);


CREATE TABLE ratings (
  tconst        VARCHAR(20) NOT NULL PRIMARY KEY,
  averageRating DECIMAL(3,1),
  numVotes      INT
);


CREATE TABLE name_basics (
  nconst            VARCHAR(20) NOT NULL PRIMARY KEY,
  primaryName       VARCHAR(200),
  birthYear         INT,
  deathYear         INT,
  primaryProfession TEXT,  
  knownForTitles    TEXT   
);