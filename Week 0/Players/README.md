# Players

## Overview

Welcome to the Players database! In this project, you will explore information about Major League Baseball (MLB) players who have played from 1871 to 2023. The data is stored in a SQLite database named `players.db`, and it includes details about players' names, batting and throwing preferences, physical attributes, debut and final game dates, and birth information.

## Schema

In the `players.db` database, you will find a single table called `players` with the following columns:

- `id`: Uniquely identifies each row (player) in the table.
- `first_name`: The first name of the player.
- `last_name`: The last name of the player.
- `bats`: The side the player bats on (R for right or L for left).
- `throws`: The hand the player throws with (R for right or L for left).
- `weight`: The player’s weight in pounds.
- `height`: The player’s height in inches.
- `debut`: The date the player began their career in the MLB (expressed as YYYY-MM-DD).
- `final_game`: The date the player played their last game in the MLB (expressed as YYYY-MM-DD).
- `birth_year`: The year the player was born.
- `birth_month`: The month (expressed as an integer) the player was born.
- `birth_day`: The day the player was born.
- `birth_city`: The city in which the player was born.
- `birth_state`: The state in which the player was born.
- `birth_country`: The country in which the player was born.

## Files

- `1.sql`: Find the hometown (including city, state, and country) of Jackie Robinson.
- `2.sql`: Find the side (e.g., right or left) Babe Ruth hit.
- `3.sql`: Find the ids of rows for which a value in the column debut is missing.
- `4.sql`: Find the first and last names of players who were not born in the United States. Sort the results alphabetically by first name, then by last name.
- `5.sql`: Return the first and last names of all right-handed batters. Sort the results alphabetically by first name, then by last name.
- `6.sql`: Return the first name, last name, and debut date of players born in Pittsburgh, Pennsylvania (PA). Sort the results first by debut date—from most recent to oldest—then alphabetically by first name, followed by last name.
- `7.sql`: Count the number of players who bat (or batted) right-handed and throw (or threw) left-handed, or vice versa.
- `8.sql`: Find the average height and weight, rounded to two decimal places, of baseball players who debuted on or after January 1st, 2000. Return the columns with the name “Average Height” and “Average Weight”, respectively.
- `9.sql`: Find the players who played their final game in the MLB in 2022. Sort the results alphabetically by first name, then by last name.
- `10.sql`: Answer a custom question. This query should make use of AS to rename a column, involve at least one condition using WHERE, and sort by at least one column using ORDER BY.

## Usage

To test your queries, run the following command in the SQLite3 console:

```bash
.read FILENAME
```

Replace `FILENAME` with the name of the file containing your SQL query (e.g., `1.sql`). Alternatively, you can use the following command in your terminal:

```bash
cat FILENAME | sqlite3 players.db > output.txt
```

This will redirect the output of the query to a text file called `output.txt`.