# The Private Eye

## Overview

Welcome to the mysterious world of the private detective! In this problem, you find yourself in the detective's study, deciphering a coded message left on their desk. The message seems to be encoded using a book cipher, and your task is to decode it.

## Files

Download the distribution code for the project, which includes:

- `private.db`: The SQLite database containing a table named `sentences` from The Adventures of Sherlock Holmes.
- `private.sql`: SQL statements to create a view named `message` that decodes the cipher.

## Schema

In `private.db`, you'll find a single table, `sentences`, with the following columns:

- `id`: Uniquely identifies each sentence.
- `sentence`: The text of the sentence from The Adventures of Sherlock Holmes.

## Specifications

Your goal is to decode the cipher and create a view named `message` with a single column, `phrase`. The phrases in this column should represent the decoded message.

### Decoding Process

The encoding process involves triplets of numbers (e.g., 2, 1, 8), where:

1. The first number is the sentence number.
2. The second number is the character number within that sentence where the message begins.
3. The third number is the length of the message in characters.

Use the `substr` function in SQLite to extract substrings based on these triplets.

### View

In `private.sql`, write SQL statements to create a view named `message`. This view should have a single column, `phrase`. When the following SQL query is executed on `private.db`, your view should return a single column in which each row is one phrase in the message.

```sql
SELECT "phrase" FROM "message";
```

### Advice

SQLite comes with a function, `substr`, that can be helpful for implementing the book cipher. The `substr` function takes three inputs: a string from which to take a substring, the starting character of the substring (the first character is 1), and the length of the substring.

### Example

Suppose you have the triplet 2, 1, 8 and the following sentences:

1. Quite so!
2. You have not observed.
3. And yet you have seen.

If you run the following SQL query:

```sql
SELECT substr("sentence", 1, 8) FROM "sentences";
```

You would receive the following results:

```sql
substr("sentence", 1, 8)
------------------------
You have
```

This represents the decoded message from the triplet 2, 1, 8.

## Usage

To test your decoding, run the following command in the SQLite3 console:

```bash
.read private.sql
```

This will execute the SQL statements in `private.sql` on the `private.db` database, creating the `message` view. You can then run the query to check the decoded message:

```sql
SELECT "phrase" FROM "message";
```

Feel free to explore the database and experiment with different decoding techniques. Good luck in unraveling the detective's message!