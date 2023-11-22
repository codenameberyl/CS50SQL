# Don't Panic!

## Overview

Welcome to the "Don't Panic!" project! In this task, you will act as a pentester, performing a penetration test on a SQLite database that powers a small enterprise's website. The goal is to alter the password of the website's administrative account, erase any related logs, and add false data to mislead the company. Time is of the essence, as you've gained access to the company premises and have a limited window to execute your plan.

## Files

Download the distribution code for the project and navigate to the `dont-panic` directory in your terminal. This directory contains the following files:

- `dont-panic.db`: The SQLite database you'll be working on.
- `hack.sql`: The file where you'll write SQL statements to achieve the penetration test objectives.
- `reset.sql`: A file to reset the database to its original state.

## Objectives

In `hack.sql`, you are required to write a sequence of SQL statements to accomplish the following:

1. Alter the password of the website’s administrative account (`admin`) to be "oops!".
2. Erase any logs of the above password change recorded by the database.
3. Add false data to frame `emily33`, making it appear as if the `admin` account had its password changed to `emily33`'s password.

Remember, passwords are usually hashed for security, and in this case, MD5 hashes are used.

## Hints

- You can use the `INSERT INTO` statement with a subquery to add false data.
- Subqueries can be used in various parts of a SQL statement, not just in the `WHERE` clause.
- Passwords are hashed, so ensure the hashed password is used when changing the administrative password.

## Usage

1. Open the terminal and navigate to the `dont-panic` directory.
2. Run the SQLite3 console by typing `sqlite3 dont-panic.db`.
3. Test your penetration test by running `.read hack.sql`.
4. If needed, reset the database to its original state by running `.read reset.sql`.

Be cautious, and execute your plan wisely!