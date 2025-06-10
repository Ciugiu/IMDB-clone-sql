USE imdb_clone;

-- Basic test query: Select all from basics
SELECT *
FROM basics
ORDER BY startYear ASC;

-- Example join: get principals info along with primaryTitle
SELECT b.primaryTitle,
       p.nconst,
       p.category
FROM basics b
JOIN principals p ON b.tconst = p.tconst
ORDER BY b.primaryTitle;

-- Example query: get known rating info
SELECT b.primaryTitle,
       r.averageRating,
       r.numVotes
FROM basics b
JOIN ratings r ON b.tconst = r.tconst
ORDER BY r.averageRating DESC;