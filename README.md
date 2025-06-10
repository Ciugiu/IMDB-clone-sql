Below is an example structure of SQL scripts separated by parts. You can adjust the tables, fields, and queries according to your specific project requirements and data model. The example is broken into three main files:

• 01_schema.sql – DDL (Data Definition Language): Creating the database schema (tables, primary/foreign keys ...)  
• 02_inserts.sql – DML (Data Manipulation Language): Inserting sample or real data into the tables  
• 03_queries.sql – Analysis/Lookup queries: Various SELECT queries to analyze or retrieve data  


────────────────────────────────────────────────────────────────────────────

HOW TO USE (General Steps):
1. Run “01_schema.sql” to build (or rebuild) the database and tables.  
2. Run “02_inserts.sql” to populate tables with sample or real data.  
3. Run “03_queries.sql” to perform data analysis or retrieval queries.