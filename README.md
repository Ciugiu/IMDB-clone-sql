# IMDB Clone

This project contains SQL scripts to initialize an IMDB-like database and perform data analysis.

## Getting Started

### 1. Download the Datasets

To download the required IMDB datasets, run:

```bash
bash start.sh
```

This will create a `data/` directory and download all necessary `.tsv.gz` files.

### 2. SQL Scripts Structure

The SQL scripts are organized as follows:

- **01_schema.sql** – DDL: Defines the database schema (tables, primary/foreign keys, etc.)
- **02_inserts.sql** – DML: Inserts sample or real data into the tables
- **03_queries.sql** – SELECT queries for data analysis or retrieval

### 3. Usage Steps

1. Run `01_schema.sql` to create the database schema.
2. Run `02_inserts.sql` to populate the tables with data.
3. Run `03_queries.sql` to perform analysis or retrieve information.

### 4. Data Files

The following IMDB datasets are used (downloaded to `data/`):

- `name.basics.tsv.gz`
- `title.akas.tsv.gz`
- `title.basics.tsv.gz`
- `title.crew.tsv.gz`
- `title.episode.tsv.gz`
- `title.principals.tsv.gz`
- `title.ratings.tsv.gz`

For details on the structure of each file, see [`queries/constraints.md`](queries/constraints.md).
