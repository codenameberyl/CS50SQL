# Moneyball

## Overview

Welcome to the Moneyball project! In this mission, you're tasked with assisting the Oakland Athletics baseball team in optimizing their player budget by analyzing player performances, salaries, and historical data. The data is stored in a SQLite database named `moneyball.db`. Through the use of SQL queries, you'll uncover valuable insights that could help the A's make strategic decisions in building their team.

## Schema

The database schema includes the following tables:

- **players**: Information about Major League Baseball players.
- **teams**: Details on baseball teams, past and present.
- **performances**: Data on player performances, specifically types of hits.
- **salaries**: Information on player salaries.

## Files

- `1.sql`: Find the average player salary by year, sorted in descending order.
- `2.sql`: Retrieve Cal Ripken Jr.'s salary history, sorted by year in descending order.
- `3.sql`: Find Ken Griffey Jr.'s home run history, sorted by year in descending order.
- `4.sql`: Find the 50 players paid the least in 2001, sorted by salary (lowest to highest), and alphabetically by name in case of ties.
- `5.sql`: Find all teams that Satchel Paige played for.
- `6.sql`: Return the top 5 teams in 2001, sorted by the total number of hits by players.
- `7.sql`: Find the player who's been paid the highest salary of all time in Major League Baseball.
- `8.sql`: Find the 2001 salary of the player who hit the most home runs in 2001.
- `9.sql`: Find the 5 lowest paying teams (by average salary) in 2001, sorted from least to greatest.
- `10.sql`: Retrieve a report detailing each player's name, salary for each year, and number of home runs for each year they've been playing.
- `11.sql`: Find the 10 least expensive players per hit in 2001, considering salary and number of hits.
- `12.sql`: Find players among the 10 least expensive per hit and per RBI in 2001.

## Usage

To test your queries, run the following command in the SQLite3 console:

```bash
.read FILENAME
```

Replace `FILENAME` with the name of the file containing your SQL query (e.g., `1.sql`). Alternatively, you can use the following command in your terminal:

```bash
cat FILENAME | sqlite3 moneyball.db > output.txt
```

This will redirect the output of the query to a text file called `output.txt`. Ensure your queries are accurate, provide clear comments for each query, and seek assistance if needed. Good luck in uncovering the hidden values in players for the Oakland Athletics!