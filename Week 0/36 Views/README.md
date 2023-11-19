# 36 Views

This repository contains SQL queries to retrieve information from the 36 Views database (`views.db`). The database contains details on 72 woodblock prints created by Japanese artists Katsushika Hokusai and Utagawa Hiroshige, each depicting different views of Mount Fuji. The prints include statistics such as average color, brightness, contrast, and entropy.

## Schema

In `views.db`, you'll find a single table, `views`, with the following columns:

- `id`: Uniquely identifies each row (print) in the table.
- `print_number`: Identifies the number of the print in either Hokusai’s or Hiroshige’s series.
- `english_title`: English title of the print.
- `japanese_title`: Japanese title of the print.
- `artist`: Last name of the print’s artist.
- `average_color`: Hexadecimal representation of the color found by averaging the colors of each pixel in the image.
- `brightness`: Number corresponding to the overall lightness or darkness of the image.
- `contrast`: Number representing the extent of the difference between light and dark areas of the image.
- `entropy`: Measure used to quantify the complexity of the artwork.

## Files

1. `1.sql`: List the Japanese and English titles of each print side by side.
2. `2.sql`: List the average colors of prints by Hokusai that include "river" in the English title.
3. `3.sql`: Count how many prints by Hokusai include "Fuji" in the English title.
4. `4.sql`: Count how many prints by Hiroshige have English titles that refer to the "Eastern Capital."
5. `5.sql`: Find the highest contrast value of prints by Hokusai.
6. `6.sql`: Find the average entropy of prints by Hiroshige, rounded to two decimal places.
7. `7.sql`: List the English titles of the 5 brightest prints by Hiroshige, from most to least bright.
8. `8.sql`: List the English titles of the 5 prints with the least contrast by Hokusai, from least to highest contrast.
9. `9.sql`: Find the English title and artist of the print with the highest brightness.
10. `10.sql`: Custom query involving AS, WHERE condition, and ORDER BY for additional insights.

## Running Queries

To test the queries, you can run the following command in your terminal:

```bash
cat FILENAME | sqlite3 views.db > output.txt
```

Replace `FILENAME` with the name of the SQL file you want to execute. The results will be stored in the `output.txt` file.