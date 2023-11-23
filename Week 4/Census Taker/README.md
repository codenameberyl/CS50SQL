# Census Taker

## Overview

Welcome to the Census Taker project! As a census taker working for the Nepali government, your task is to process census data stored in `census.db` into views that the government can use for record-keeping.

## Files

Download the distribution code for the project, which includes:

- `census.db`: The SQLite database containing census data.
- `rural.sql`: SQL statements to create a view named `rural` for rural municipalities.
- `total.sql`: SQL statements to create a view named `total` for sums across all districts and localities.
- `by_district.sql`: SQL statements to create a view named `by_district` for sums grouped by district.
- `most_populated.sql`: SQL statements to create a view named `most_populated` for the most populated districts.

## Schema

In `census.db`, you'll find a single table, `census`, with the following columns:

- `id`: Uniquely identifies each census record.
- `district`: The name of the census record’s district.
- `locality`: The name of the census record’s locality within the district.
- `families`: The number of families associated with the census record.
- `households`: The total number of households associated with the census record.
- `population`: The population associated with the census record.
- `male`: The number of people associated with the census record who have identified as male.
- `female`: The number of people associated with the census record who have identified as female.

## Specifications

In each of the corresponding `.sql` files, write SQL statements to create the following views:

### Rural

In `rural.sql`, create a view named `rural`. This view should contain all census records related to a rural municipality (identified by including “rural” in their name). Ensure the view contains all columns from the `census` table.

### Total

In `total.sql`, create a view named `total`. This view should contain the sums for each numeric column in `census`, across all districts and localities. Ensure the view contains the following columns:

- `families`: The sum of families from every locality in Nepal.
- `households`: The sum of households from every locality in Nepal.
- `population`: The sum of the population from every locality in Nepal.
- `male`: The sum of people identifying as male from every locality in Nepal.
- `female`: The sum of people identifying as female from every locality in Nepal.

### By District

In `by_district.sql`, create a view named `by_district`. This view should contain the sums for each numeric column in `census`, grouped by district. Ensure the view contains the following columns:

- `district`: The name of the district.
- `families`: The total number of families in the district.
- `households`: The total number of households in the district.
- `population`: The total population of the district.
- `male`: The total number of people identifying as male in the district.
- `female`: The total number of people identifying as female in the district.

### Most Populated

In `most_populated.sql`, create a view named `most_populated`. This view should contain, in order from greatest to least, the most populated districts in Nepal. Ensure the view contains the following columns:

- `district`: The name of the district.
- `families`: The total number of families in the district.
- `households`: The total number of households in the district.
- `population`: The total population of the district.
- `male`: The total number of people identifying as male in the district.
- `female`: The total number of people identifying as female in the district.

## Usage

To test your views, run the following command in the SQLite3 console:

```bash
.read FILENAME
```

Replace `FILENAME` with the name of the file containing your SQL query (e.g., `rural.sql`). Alternatively, you can use the following command in your terminal:

```bash
cat FILENAME | sqlite3 census.db > output.txt
```

This will redirect the output of the query to a text file called `output.txt`. Keep in mind you can also use `DROP VIEW name;` to remove a view before creating it anew. Good luck with your census processing!