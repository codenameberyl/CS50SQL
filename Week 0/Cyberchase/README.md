# Cyberchase

## Overview

Welcome to the Cyberchase database! In this project, you will interact with a SQLite database named `cyberchase.db`. The database contains information about the episodes of the educational children's television series Cyberchase, which focuses on teaching math, science, and problem-solving skills.

## Schema

The database has a single table called `episodes` with the following columns:

- `id`: Uniquely identifies each episode.
- `season`: The season number in which the episode aired.
- `episode_in_season`: The episode's number within its given season.
- `title`: The episode's title.
- `topic`: Identifies the ideas the episode aimed to teach.
- `air_date`: The date (YYYY-MM-DD) on which the episode aired or was published.
- `production_code`: The unique ID used by PBS to refer to each episode internally.

## Files

- `1.sql`: List the titles of all episodes in Cyberchase’s original season, Season 1.
- `2.sql`: List the season number and title of the first episode of every season.
- `3.sql`: Find the production code for the episode “Hackerized!”.
- `4.sql`: Find the titles of episodes that do not yet have a listed topic.
- `5.sql`: Find the title of the holiday episode that aired on December 31st, 2004.
- `6.sql`: List the titles of episodes from season 6 (2008) that were released early, in 2007.
- `7.sql`: List the titles and topics of all episodes teaching fractions.
- `8.sql`: Count the number of episodes released in the last 6 years, from 2018 to 2023, inclusive.
- `9.sql`: Count the number of episodes released in Cyberchase’s first 6 years, from 2002 to 2007, inclusive.
- `10.sql`: List the ids, titles, and production codes of all episodes. Order the results by production code, from earliest to latest.
- `11.sql`: List the titles of episodes from season 5, in reverse alphabetical order.
- `12.sql`: Count the number of unique episode titles.
- `13.sql`: Custom query for exploring a specific question involving at least one condition.

## Running Queries

To test the queries, you can run the following command in your terminal:

```bash
cat FILENAME | sqlite3 cyberchase.db > output.txt
```

Replace `FILENAME` with the name of the SQL file you want to execute. The results will be stored in the `output.txt` file.

This will redirect the output of the query to a text file called `output.txt`.