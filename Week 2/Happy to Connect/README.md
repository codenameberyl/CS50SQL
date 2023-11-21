# Happy to Connect

## Overview

Welcome to the Happy to Connect project! In this task, you will create a SQLite database to help LinkedIn manage its users, schools, companies, and connections efficiently. The data is essential for facilitating professional networking and connections on the platform.

## Database Schema

The database schema includes the following entities:

- **Users**: Information about LinkedIn users, including first name, last name, username, and password.
- **Schools**: Details about educational institutions, including the name, type, location, and founding year.
- **Companies**: Information about companies, including the name, industry, and location.
- **Connections**: Facilitates connections between users, schools, and companies.

## Schema File

Create a folder named `connect` and within it, a file called `schema.sql`. Use this file to write the necessary SQL statements to design the LinkedIn database according to the specified requirements.

## Requirements

### Users

- Store first name, last name, username, and password for each user.

### Schools

- Capture the name, type, location, and founding year for each school.

### Companies

- Track the name, industry, and location for each company.

### Connections

- Facilitate connections between users, schools, and companies.

## Sample Data

Ensure your database can represent the following sample data:

- User: Claudine Gay, with the username "claudine" and password "password".
- User: Reid Hoffman, with the username "reid" and password "password".
- School: Harvard University, a university located in Cambridge, Massachusetts, founded in 1636.
- Company: LinkedIn, a technology company headquartered in Sunnyvale, California.
- Connection: Claudine Gay's connection with Harvard, pursuing a PhD from January 1st, 1993, to December 31st, 1998.
- Connection: Reid Hoffman's connection with LinkedIn, with the title "CEO and Chairman," from January 1st, 2003, to February 1st, 2007.

## Usage

1. Navigate to the terminal and create a folder named `connect` using the command `mkdir connect`.
2. Change into the `connect` directory with `cd connect`.
3. Create an empty SQLite database named `connect.db` by typing `sqlite3 connect.db`.
4. In the SQLite3 prompt, type `.read schema.sql` to execute the SQL statements from your schema file.

Remember, you can use `DROP TABLE tablename` to delete a table from your database if needed. Good luck with your database design for LinkedIn!