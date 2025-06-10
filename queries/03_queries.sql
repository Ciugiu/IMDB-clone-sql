USE imdb_clone;


SELECT *
FROM basics
ORDER BY startYear ASC;


SELECT b.primaryTitle,
       p.nconst,
       p.category
FROM basics b
JOIN principals p ON b.tconst = p.tconst
ORDER BY b.primaryTitle;


SELECT b.primaryTitle,
       r.averageRating,
       r.numVotes
FROM basics b
JOIN ratings r ON b.tconst = r.tconst
ORDER BY r.averageRating DESC;