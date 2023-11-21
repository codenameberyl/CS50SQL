# Packages, Please

## Overview

Welcome to the Packages, Please project! In this task, you will play the role of a mail clerk for the city of Boston, solving mysteries of missing packages reported by customers. The database `packages.db` contains information about package deliveries, drivers, addresses, and package scans. Your goal is to use SQL queries to locate the missing packages and provide details about their current location and contents.

## Schema

The `packages.db` database represents recent package deliveries in the city of Boston. It includes the following entities:

- **Drivers**: People who deliver packages
- **Packages**: Information about the packages themselves
- **Addresses**: Represents addresses like 1234 Main Street
- **Scans**: Confirmations that a delivery driver picked up or dropped off a given package

These entities are related per the entity relationship (ER) diagram provided in the project description.

## Files

- `log.sql`: Keep a log of all SQL queries used to find the missing packages. Include comments above each query to describe why it's being executed and what information is expected.
- `answers.txt`: Once a missing package is found, fill in details about the location and contents of the package in this file. Do not change existing text or add extra lines.

## Mysteries to Solve

### The Lost Letter

Anneke reports a missing congratulatory letter sent to her friend Varsha. The letter is meant for 2 Finnegan Street. Use SQL queries to find and describe the lost letter's details.

### The Devious Delivery

A mysterious person from Fiftyville reports a missing package with a unique quack factor. There's no "From" address, but it's a parcel that adds some quack to bath times. Use SQL queries to uncover the devious delivery.

### The Forgotten Gift

A grandparent reports a missing mystery gift sent to their granddaughter at 728 Maple Place. The delivery date has passed, and they can't remember what's inside, but it's filled with love. Use SQL queries to track down the forgotten gift.

## Usage

To test your queries, run the following command in the SQLite3 console:

```bash
.read log.sql
```

Replace `log.sql` with the name of the file containing your SQL queries. Similarly, you can use the following command in your terminal:

```bash
cat log.sql | sqlite3 packages.db > output.txt
```

This will redirect the output of the queries to a text file called `output.txt`. Remember to provide thorough explanations in the log and accurate details in the answers file.