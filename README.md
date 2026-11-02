# Data Job Analysis with SQL

A SQL portfolio project exploring data analyst job postings, salaries, and in-demand skills. Built as a hands-on learning project to practice loading and querying relational data with PostgreSQL.

## Aim

Use job-posting data to understand what data analyst roles pay, which skills employers request, and which skills combine strong demand with higher average salaries.

## Questions explored

- What are the 10 highest-paying remote data analyst jobs?
- Which skills appear in those top-paying job postings?
- Which skills are most in demand for remote data analyst roles?
- Which skills are associated with higher average salaries?
- Which skills balance demand and salary potential?

## Approach

1. Create a PostgreSQL database and relational tables.
2. Load the CSV datasets into the tables.
3. Join job, company, and skill data to answer each question.
4. Filter for relevant postings, exclude missing salaries where needed, aggregate results, and sort to compare demand and pay.

## Repository structure

```text
.
├── csv_files/       # Job, company, and skill datasets
├── project_sql/     # Analysis queries
├── sql_load/        # Database and table setup and data loading scripts
└── test.sql         # Additional salary-by-skill query
```

## Getting started

### Requirements

- PostgreSQL
- A PostgreSQL client such as pgAdmin or `psql`

### Setup

1. Create the database by running [`sql_load/1_create_database.sql`](sql_load/1_create_database.sql) from an existing database connection.
2. Connect to the new `sql_course` database and run [`sql_load/2_create_tables.sql`](sql_load/2_create_tables.sql).
3. In [`sql_load/3_modify_tables.sql`](sql_load/3_modify_tables.sql), update the CSV file paths in the `COPY` statements to match your local `csv_files` directory, then run the script.
4. Run the analysis queries in `project_sql/` against `sql_course`.

The database setup script creates the tables `company_dim`, `skills_dim`, `job_postings_fact`, and `skills_job_dim`. The analysis scripts focus on data analyst postings; several queries specifically filter for remote work.

## What I learned

- Designing relational tables with primary keys, foreign keys, and indexes.
- Loading CSV data into PostgreSQL and working with data types such as timestamps, booleans, and numeric salaries.
- Combining related tables with `JOIN`s and using aggregate functions such as `COUNT` and `AVG`.
- Applying filters, grouping, sorting, and limits to turn broad questions into focused analyses.
- Comparing skill demand with salary while accounting for missing salary values.

## Notes

- The remote-job analyses use the fields and filters in the SQL files; the top-paying jobs query uses `job_location = 'Anywhere'`.
- Salary comparisons include only postings with a reported annual salary.
- Results depend on the supplied data and the filters in each query.

## Acknowledgments

Created as a student learning project. The SQL scripts and included CSV files are provided in this repository.
