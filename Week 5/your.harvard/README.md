# your.harvard

## Overview

Welcome to the your.harvard project! In this task, you'll be optimizing the `harvard.db` database, which is used for course registration at Harvard. The goal is to create indexes that improve the performance of typical queries and make the system more responsive.

## Schema

The `harvard.db` database has the following tables:

1. **students table**: Contains information about students.
2. **courses table**: Contains details about courses.
3. **enrollments table**: Represents student enrollments in courses.
4. **requirements table**: Holds information about course requirements.
5. **satisfies table**: Indicates which courses satisfy specific requirements.

## Files

Download the distribution code for the project, including:

- `harvard.db`: The SQLite database containing the five tables.
- `indexes.sql`: A file where you'll write SQL statements to create the necessary indexes.

## Specifications

In `indexes.sql`, your task is to write SQL statements that create indexes to improve the performance of typical queries on the my.harvard database. Consider trade-offs in terms of space and time, creating indexes that balance efficiency.

Typical queries run on harvard.db include:

1. Finding a student’s historical course enrollments based on their ID.
2. Identifying all students who enrolled in a specific course in a particular semester.
3. Sorting courses by most- to least-enrolled in a given semester.
4. Finding all courses of a specific department taught in a particular semester.
5. Finding the requirement satisfied by a specific course in a given semester.
6. Determining how many courses in each requirement a student has satisfied.
7. Searching for a course by title and semester.

## Usage

To test your indexes, run the following command in the SQLite3 console:

```bash
.read indexes.sql
```

This will execute the SQL statements in the specified file on the `harvard.db` database, creating or updating the indexes. You can then run the typical queries to assess the performance improvement.

Keep in mind that you can use the following command to remove an index before creating it anew:

```bash
DROP INDEX name;
```

You may want to use `VACUUM` to free up disk space after deleting an index.