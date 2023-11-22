# Meteorite Cleaning

## Overview

Welcome to the Meteorite Cleaning project! As a data engineer at NASA, your task is to clean and import historical meteorite landing data from a CSV file into an SQLite database. The cleaned data will be used for analysis by your fellow engineers.

## Files

Download the distribution code for the project, which includes:

- `meteorites.csv`: The CSV file containing historical meteorite landing data.
- `import.sql`: The file where you'll write SQL statements to import and clean the data.
- `meteorites.db`: The SQLite database that will store the cleaned data.

## Specifications

In `import.sql`, write a series of SQL statements to import and clean the data from `meteorites.csv` into a table named `meteorites` within the `meteorites.db` database. The `meteorites` table should have the following columns:

- `id`: An identifier for each meteorite (integer, primary key).
- `name`: The name of the meteorite (text).
- `year`: The year the meteorite landed (integer).
- `mass (g)`: The mass of the meteorite in grams (real).
- `latitude`: The latitude of the landing site (real).
- `longitude`: The longitude of the landing site (real).

Ensure the following to consider the data in the `meteorites` table clean:

1. Any empty values in `meteorites.csv` should be represented by NULL in the `meteorites` table. This includes the `mass`, `year`, `latitude`, and `longitude` columns.

2. Round all columns with decimal values (e.g., `70.4777`) to the nearest hundredths place (e.g., `70.4777` becomes `70.48`). This applies to the `mass`, `latitude`, and `longitude` columns.

3. Exclude all meteorites with the `nametype` “Relict” from the `meteorites` table.

4. Sort the meteorites by year, oldest to newest. If two meteorites landed in the same year, sort them by name in alphabetical order.

5. Update the IDs of the meteorites from `meteorites.csv` according to the order specified in #4. The IDs should start at 1, beginning with the meteorite that landed in the oldest year and is the first in alphabetical order for that year.

## Usage

1. Open the terminal and navigate to the directory containing the project files.
2. Run the SQLite3 console by typing `sqlite3 meteorites.db`.
3. Execute the SQL statements in `import.sql` by running `.read import.sql`.
4. If needed, delete the current version of `meteorites.db` with `rm meteorites.db` and confirm the deletion by typing "y" followed by enter.
5. Re-run the import command from step 3 to recreate `meteorites.db` from scratch.

Feel free to use the provided terminal commands to test your queries and speed up the cleaning process. Good luck with your meteorite cleaning!