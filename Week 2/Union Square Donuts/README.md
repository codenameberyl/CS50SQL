# Union Square Donuts

## Overview

Welcome to the Union Square Donuts project! In this task, you will create a SQLite database for Union Square Donuts, a popular donut shop in Boston, Brookline, and Somerville. The goal is to design a database that can efficiently manage day-to-day operations, including ingredients, donuts, orders, and customer information.

## Database Schema

The database schema includes the following entities:

- **Ingredients**: Keep track of various ingredients used in making donuts, along with their prices per unit.
- **Donuts**: Store information about the donuts on the menu, including name, gluten-free status, and price. Associate each donut with its ingredients.
- **Orders**: Manage both in-person and online orders, including an order number, the donuts in the order, and the customer who placed the order.
- **Customers**: Store information about customers, including their first and last names and order history.

## Schema File

Create a folder named `donuts` and within it, a file called `schema.sql`. Use this file to write the necessary SQL statements to create the Union Square Donuts database according to the specified requirements.

## Requirements

### Ingredients

- Track various ingredients such as flour, yeast, oil, butter, and sugar.
- Include the price Union Square Donuts pays per unit of each ingredient.

### Donuts

- Include information about each donut, such as its name, gluten-free status, and price.
- Associate each donut with the ingredients used in its preparation.

### Orders

- Keep track of both in-person and online orders.
- Store an order number, the donuts included in the order, and the customer who placed the order.

### Customers

- Maintain information about customers, including their first and last names.
- Keep a history of the orders each customer has made.

## Sample Data

Ensure your database can represent the following sample data:

- Ingredients: Cocoa (cost: $5.00 per pound), Sugar (cost: $2.00 per pound).
- Donuts: "Belgian Dark Chocolate" (not gluten-free, $4.00 per donut) with ingredients Cocoa, Flour, Buttermilk, Sugar. "Back-To-School Sprinkles" (not gluten-free, $4.00 per donut) with ingredients Flour, Buttermilk, Sugar, Sprinkles.
- Order 1 from Luis Singh for 3 Belgian Dark Chocolate donuts and 2 Back-To-School Sprinkles donuts.

## Usage

1. Navigate to the terminal and create a folder named `donuts` using the command `mkdir donuts`.
2. Change into the `donuts` directory with `cd donuts`.
3. Create an empty SQLite database named `donuts.db` by typing `sqlite3 donuts.db`.
4. In the SQLite3 prompt, type `.read schema.sql` to execute the SQL statements from your schema file.

Remember, you can use `DROP TABLE tablename` to delete a table from your database if needed. Enjoy designing the database for Union Square Donuts!