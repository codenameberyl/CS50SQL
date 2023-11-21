# DESE

## Overview

Welcome to the DESE project! As a data analyst for the Massachusetts Department of Elementary and Secondary Education, you will be delving into the state's public education system. The database `dese.db` contains valuable information about districts, schools, expenditures, staff evaluations, and graduation rates. Your mission is to utilize SQL queries to gain insights into the state of education in Massachusetts.

## Schema

The database schema includes the following tables:

- **districts**: Information about school districts
- **schools**: Details on individual schools
- **graduation_rates**: Data on graduation rates
- **expenditures**: Information on expenditures per pupil
- **staff_evaluations**: Staff evaluation data

## Files

- `1.sql`: Find the names and cities of all public schools in Massachusetts.
- `2.sql`: Find the names of districts that are no longer operational.
- `3.sql`: Find the average per-pupil expenditure across all districts last year.
- `4.sql`: Find the 10 cities with the most public schools, ordered by the number of public schools and alphabetically for ties.
- `5.sql`: Find cities with 3 or fewer public schools, ordered by the number of public schools and alphabetically for ties.
- `6.sql`: Find the names of schools that reported a 100% graduation rate.
- `7.sql`: Find the names of all schools in the Cambridge school district.
- `8.sql`: Display the names of all school districts and the number of pupils enrolled in each.
- `9.sql`: Find the name(s) of the school district(s) with the least number of pupils.
- `10.sql`: Find the 10 public school districts with the highest per-pupil expenditures, including the names and per-pupil expenditure.
- `11.sql`: Display the names of schools, their per-pupil expenditure, and their graduation rate, sorted by per-pupil expenditure and school name for ties.
- `12.sql`: Find public school districts with above-average per-pupil expenditures and an above-average percentage of teachers rated “exemplary”. Sort by the percentage of teachers rated exemplary and per-pupil expenditure.
- `13.sql`: Pose a question about the data and answer it using at least one JOIN or subquery.

## Usage

To test your queries, run the following command in the SQLite3 console:

```bash
.read FILENAME
```

Replace `FILENAME` with the name of the file containing your SQL query (e.g., `1.sql`). Alternatively, you can use the following command in your terminal:

```bash
cat FILENAME | sqlite3 dese.db > output.txt
```

This will redirect the output of the query to a text file called `output.txt`. Ensure your queries are accurate, and provide clear comments for each query.