CREATE DATABASE IF NOT EXISTS imdb_clone;
USE imdb_clone;

-- Drop existing tables for a fresh start
DROP TABLE IF EXISTS akas;
DROP TABLE IF EXISTS basics;
DROP TABLE IF EXISTS crew;
DROP TABLE IF EXISTS episode;
DROP TABLE IF EXISTS principals;
DROP TABLE IF EXISTS ratings;
DROP TABLE IF EXISTS name_basics;

-- title.akas
CREATE TABLE akas (
  titleId         VARCHAR(20) NOT NULL,
  ordering        INT NOT NULL,
  title           VARCHAR(500),
  region          VARCHAR(10),
  language        VARCHAR(10),
  types           TEXT,       -- store arrays as comma-separated or JSON
  attributes      TEXT,       -- store arrays as comma-separated or JSON
  isOriginalTitle TINYINT,    -- 0 or 1
  PRIMARY KEY (titleId, ordering)
);

-- title.basics
CREATE TABLE basics (
  tconst          VARCHAR(20) NOT NULL PRIMARY KEY,
  titleType       VARCHAR(50),
  primaryTitle    VARCHAR(500),
  originalTitle   VARCHAR(500),
  isAdult         TINYINT,    -- 0 or 1
  startYear       INT,
  endYear         INT,
  runtimeMinutes  INT,
  genres          TEXT        -- again, could store arrays as comma-separated or JSON
);

-- title.crew
CREATE TABLE crew (
  tconst   VARCHAR(20) NOT NULL PRIMARY KEY,
  directors TEXT,  -- store nconsts as comma-separated or JSON
  writers   TEXT   -- store nconsts as comma-separated or JSON
);

-- title.episode
CREATE TABLE episode (
  tconst        VARCHAR(20) NOT NULL PRIMARY KEY,
  parentTconst  VARCHAR(20),
  seasonNumber  INT,
  episodeNumber INT
);

-- title.principals
CREATE TABLE principals (
  tconst    VARCHAR(20) NOT NULL,
  ordering  INT NOT NULL,
  nconst    VARCHAR(20) NOT NULL,
  category  VARCHAR(50),
  job       VARCHAR(100),
  characters TEXT,
  PRIMARY KEY (tconst, ordering, nconst)
);

-- title.ratings
CREATE TABLE ratings (
  tconst        VARCHAR(20) NOT NULL PRIMARY KEY,
  averageRating DECIMAL(3,1),
  numVotes      INT
);

-- name.basics
CREATE TABLE name_basics (
  nconst            VARCHAR(20) NOT NULL PRIMARY KEY,
  primaryName       VARCHAR(200),
  birthYear         INT,
  deathYear         INT,
  primaryProfession TEXT,  -- store as comma-separated or JSON
  knownForTitles    TEXT   -- store as comma-separated or JSON
);