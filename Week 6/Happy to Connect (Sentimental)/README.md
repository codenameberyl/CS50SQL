# Happy to Connect (Sentimental)

## Overview

In this project, you will design a MySQL database schema for LinkedIn, the world's largest professional network. The schema will include tables for users, schools and universities, companies, and connections. Your goal is to create a database that can represent LinkedIn's platform specifications and handle sample data.

## Files

- `schema.sql`: MySQL database schema design file.

## Database Schema

### Users

The users' table will store information about LinkedIn's users.

- `id`: Uniquely identifies each user.
- `first_name`: User's first name.
- `last_name`: User's last name.
- `username`: User's username.
- `password`: User's password.

### Schools and Universities

The schools table will store information about schools and universities.

- `id`: Uniquely identifies each school.
- `name`: Name of the school.
- `type`: Type of school (Primary, Secondary, Higher Education).
- `location`: Location of the school.
- `founded_year`: The year in which the school was founded.

### Companies

The companies table will store information about companies.

- `id`: Uniquely identifies each company.
- `name`: Name of the company.
- `industry`: Industry of the company (Technology, Education, Business).
- `location`: Location of the company.

### Connections

The connections table will represent connections between users, schools, and companies.

- `id`: Uniquely identifies each connection.
- `user_id`: Foreign key referencing the Users table.
- `school_id`: Foreign key referencing the Schools table.
- `company_id`: Foreign key referencing the Companies table.
- `title`: Title of the connection.
- `start_date`: Start date of the connection.
- `end_date`: End date of the connection.

## Sample Data

Your database should be able to represent the following sample data:

- User: Claudine Gay, username: claudine, password: password.
- User: Reid Hoffman, username: reid, password: password.
- School: Harvard University, type: Higher Education, location: Cambridge, Massachusetts, founded_year: 1636.
- Company: LinkedIn, industry: Technology, location: Sunnyvale, California.
- Connection: Claudine Gay's connection with Harvard, pursuing a PhD from January 1st, 1993, to December 31st, 1998.
- Connection: Reid Hoffman's connection with LinkedIn, title: CEO and Chairman, from January 1st, 2003, to February 1st, 2007.

## Usage

To create the LinkedIn database using the provided schema, follow these steps:

1. Start a MySQL server using Docker:
    ```bash
    docker container run --name mysql -p 3306:3306 -v /workspaces/$RepositoryName:/mnt -e MYSQL_ROOT_PASSWORD=crimson -d mysql
    ```

2. Connect to the MySQL server:
    ```bash
    mysql -h 127.0.0.1 -P 3306 -u root -p
    ```

3. Create a new database and use it:
    ```sql
    CREATE DATABASE `linkedin`;
    USE `linkedin`;
    ```

4. Execute the schema.sql file to create the tables:
    ```sql
    source /mnt/sentimental-connect/schema.sql;
    ```

Now, you have successfully created the LinkedIn database. You can proceed to insert sample data and test various queries.

Feel free to explore the database and run additional SQL statements to ensure it meets LinkedIn's specifications.