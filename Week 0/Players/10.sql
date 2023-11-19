SELECT "first_name", "last_name", MAX("height") AS "Tallest Player"
FROM "players"
WHERE "birth_country" = 'USA'
AND "height" < (SELECT AVG("height") FROM "players")
ORDER BY "weight" DESC
LIMIT 5;