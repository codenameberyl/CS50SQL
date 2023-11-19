SELECT "english_title", SUM("print_number") AS "Total Print" FROM "views"
WHERE "brightness" < (SELECT AVG("contrast") FROM "views") ORDER BY "brightness";