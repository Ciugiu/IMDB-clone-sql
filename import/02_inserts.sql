USE imdb_clone;

-- Import IMDB data using COPY and zcat for each table
COPY akas FROM PROGRAM 'zcat import/title.akas.tsv.gz'
WITH (FORMAT csv, DELIMITER E'\t', HEADER, NULL '\N', QUOTE E'\001');

COPY basics FROM PROGRAM 'zcat import/title.basics.tsv.gz'
WITH (FORMAT csv, DELIMITER E'\t', HEADER, NULL '\N', QUOTE E'\001');

COPY crew FROM PROGRAM 'zcat import/title.crew.tsv.gz'
WITH (FORMAT csv, DELIMITER E'\t', HEADER, NULL '\N', QUOTE E'\001');

COPY episode FROM PROGRAM 'zcat import/title.episode.tsv.gz'
WITH (FORMAT csv, DELIMITER E'\t', HEADER, NULL '\N', QUOTE E'\001');

COPY principals FROM PROGRAM 'zcat import/title.principals.tsv.gz'
WITH (FORMAT csv, DELIMITER E'\t', HEADER, NULL '\N', QUOTE E'\001');

COPY ratings FROM PROGRAM 'zcat import/title.ratings.tsv.gz'
WITH (FORMAT csv, DELIMITER E'\t', HEADER, NULL '\N', QUOTE E'\001');

COPY name_basics FROM PROGRAM 'zcat import/name.basics.tsv.gz'
WITH (FORMAT csv, DELIMITER E'\t', HEADER, NULL '\N', QUOTE E'\001');