# Bed and Breakfast

## Overview

Welcome to the Bed and Breakfast exploration! In this project, you will analyze data from AirBnB in the city of Boston. The data is stored in a SQLite database named `bnb.db` and includes information about listings, reviews, and availabilities.

## Schema

The database schema consists of three tables:

1. **listings table**: Contains information about AirBnB listings.
2. **reviews table**: Contains details about reviews for different listings.
3. **availabilities table**: Provides information about the availability of listings on specific dates.

## Files

Download the distribution code for the project, which includes:

- `bnb.db`: The SQLite database containing the three tables (listings, reviews, availabilities).
- Several `.sql` files: Each file contains SQL statements to create specific views from the data.

## Specifications

Your goal is to create several views that will help paint a clearer picture of AirBnB's influence on the city of Boston.

### No Descriptions

In `no_descriptions.sql`, create a view named `no_descriptions` that includes all columns from the `listings` table except for the `description` column.

### One-Bedrooms

In `one_bedrooms.sql`, create a view named `one_bedrooms` that contains all listings with exactly one bedroom. Ensure the view includes the following columns:

- `id`: Listing ID from the `listings` table.
- `property_type`: Property type from the `listings` table.
- `host_name`: Host name from the `listings` table.
- `accommodates`: Number of people accommodated from the `listings` table.

### Available

In `available.sql`, create a view named `available` that contains all dates available at all listings. Ensure the view includes the following columns:

- `id`: Listing ID from the `listings` table.
- `property_type`: Property type from the `listings` table.
- `host_name`: Host name from the `listings` table.
- `date`: Date of availability from the `availabilities` table.

### Frequently Reviewed

In `frequently_reviewed.sql`, create a view named `frequently_reviewed` that contains the 100 most frequently reviewed listings. Ensure the view includes the following columns:

- `id`: Listing ID from the `listings` table.
- `property_type`: Property type from the `listings` table.
- `host_name`: Host name from the `listings` table.
- `reviews`: Number of reviews the listing has received.

If any two listings have the same number of reviews, sort by `property_type` (in alphabetical order), followed by `host_name` (in alphabetical order).

### June Vacancies

In `june_vacancies.sql`, create a view named `june_vacancies` that contains all listings and the number of days in June 2023 that they remained vacant. Ensure the view includes the following columns:

- `id`: Listing ID from the `listings` table.
- `property_type`: Property type from the `listings` table.
- `host_name`: Host name from the `listings` table.
- `days_vacant`: Number of days in June 2023 that the listing was marked as available.

## Usage

To test your views, run the following command in the SQLite3 console:

```bash
.read FILENAME
```

Replace `FILENAME` with the name of the file containing your SQL query (e.g., `no_descriptions.sql`). Alternatively, you can use the following command in your terminal:

```bash
cat FILENAME | sqlite3 bnb.db > output.txt
```

This will execute the SQL statements in the specified file on the `bnb.db` database, creating or updating the views. You can then run queries to explore and analyze the data in the created views. Happy exploring!