# ATL

## Overview

Welcome to the ATL project! In this task, you will create a SQLite database to help Hartsfield-Jackson International Airport (ATL) keep track of its passengers and their flights. The data is essential for managing passenger information, check-ins, airlines, and flights efficiently.

## Database Schema

The database schema includes the following entities:

- **Passengers**: Essential information about passengers, including first name, last name, and age.
- **Check-Ins**: A log of passenger check-ins, storing the date, time, and associated flight.
- **Airlines**: Information about airlines, including the name and concourse.
- **Flights**: Details about flights, such as flight number, operating airline, departure, and arrival information.

## Schema File

Create a folder named `atl` and within it, a file called `schema.sql`. Use this file to write the necessary SQL statements to design the ATL database according to the specified requirements.

## Requirements

### Passengers

- Store first name, last name, and age for each passenger.

### Check-Ins

- Log the exact date and time of passenger check-ins.
- Record the associated flight for each check-in.

### Airlines

- Track the name of each airline operating at ATL.
- Include the concourse (section) where the airline operates.

### Flights

- Capture flight details, including flight number, operating airline, departure airport code, destination airport code, expected departure date and time, and expected arrival date and time.

## Sample Data

Ensure your database can represent the following sample data:

- A passenger, Amelia Earhart, who is 39 years old.
- An airline, Delta, operating out of concourses A, B, C, D, and T.
- A flight, Delta Flight 300, departing from ATL on August 3rd, 2023, at 6:46 PM, and arriving at BOS on August 3rd, 2023, at 9:09 PM.
- A check-in for Amelia Earhart, for Delta Flight 300, on August 3rd, 2023, at 3:03 PM.

## Usage

1. Navigate to the terminal and create a folder named `atl` using the command `mkdir atl`.
2. Change into the `atl` directory with `cd atl`.
3. Create an empty SQLite database named `atl.db` by typing `sqlite3 atl.db`.
4. In the SQLite3 prompt, type `.read schema.sql` to execute the SQL statements from your schema file.

Remember, you can use `DROP TABLE tablename` to delete a table from your database if needed. Good luck with your database design for ATL!