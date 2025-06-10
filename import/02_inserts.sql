USE imdb_clone;


INSERT INTO akas (titleId, ordering, title, region, language, types, attributes, isOriginalTitle)
VALUES
('tt0000001', 1, 'Carmencita', 'US', 'en', '["original"]', '[]', 1);


INSERT INTO basics (tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres)
VALUES
('tt0000001', 'short', 'Carmencita', 'Carmencita', 0, 1894, NULL, 1, '["Documentary","Short"]');


INSERT INTO crew (tconst, directors, writers)
VALUES
('tt0000001', '["nm0005690"]', '[]');


INSERT INTO episode (tconst, parentTconst, seasonNumber, episodeNumber)
VALUES
('tt0000752', 'tt1837642', 1, 1);


INSERT INTO principals (tconst, ordering, nconst, category, job, characters)
VALUES
('tt0000001', 1, 'nm1588970', 'actress', '\\N', '["Carmencita"]');


INSERT INTO ratings (tconst, averageRating, numVotes)
VALUES
('tt0000001', 5.6, 1600);


INSERT INTO name_basics (nconst, primaryName, birthYear, deathYear, primaryProfession, knownForTitles)
VALUES
('nm1588970', 'Carmencita', 1868, 1910, '["actress"]', '["tt0000001"]');