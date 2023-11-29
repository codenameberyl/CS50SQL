# Don't Panic! (Sentimental) in Python

## Overview

Welcome to the Don't Panic! (Sentimental) in Python project! In this task, you will act as a penetration tester, creating a Python program to automate the process of altering the administrator's password in a SQLite database for a covert operation.

## Files

Download the distribution code for this project, which includes:

- `hack.py`: A Python file where you'll write the program to perform the penetration test.
- `dont-panic.db`: The SQLite database containing user information.
- `reset.sql`: A set of SQL statements to reset the database to its original state.

## Specification

In `hack.py`, your goal is to write a Python program that accomplishes the following:

1. Connect, via Python, to a SQLite database (`dont-panic.db`).
2. Alter, within your Python program, the administrator’s password.

When your program (`hack.py`) is run on a new instance of the database, it should successfully alter the administrator's password.

## Python Walkthrough

The `hack.py` file initially contains a single line of code to print "Hacked!" to the console. Let's break down the steps to accomplish the specifications:

### Connecting to a Database

1. **Import CS50 SQL Library:**
   ```python
   from cs50 import SQL
   ```

2. **Establish a Database Connection:**
   ```python
   db = SQL("sqlite:///dont-panic.db")
   ```

   - This line establishes a connection to the SQLite database (`dont-panic.db`) using the CS50 SQL library.
   - The variable `db` is used to refer to the database connection in the program.

### Executing SQL Statements with Python

3. **Alter Administrator's Password:**
   ```python
   db.execute(
       """
       UPDATE "users"
       SET "password" = 'hacked!'
       WHERE "username" = 'admin';
       """
   )
   ```

   - The `execute` method is used to execute a SQL query on the connected database.
   - In this case, the SQL query updates the administrator's password to 'hacked!'.

### Running the Program

To run the program, open your terminal, navigate to the directory containing `hack.py` and execute:

```bash
python hack.py
```

After running the program, check the `dont-panic.db` database to verify that the administrator's password has been altered.

### Prepared Statements

4. **Prepared Statements:**
   - You can modify the program to accept user input for the new administrator's password using a prepared statement.

   ```python
   password = input("Enter a password: ")
   db.execute(
       """
       UPDATE "users"
       SET "password" = ?
       WHERE "username" = 'admin';
       """,
       password
   )
   ```

   - The `?` in the SQL query is a placeholder for the user-chosen password.
   - The `password` variable is used to store the user's input.

Now, your Python program is interactive, allowing users to specify the new administrator's password.

### Resetting the Database

If you want to reset the `dont-panic.db` database to its original state, you can use the provided `reset.sql` file:

```bash
cat reset.sql | sqlite3 dont-panic.db
```

This will execute the SQL statements in `reset.sql`, restoring the database to its initial configuration.

Feel free to run the `hack.py` program again to test different scenarios.

Happy hacking!