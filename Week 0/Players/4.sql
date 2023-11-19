SELECT "first_name", "last_name"
FROM "players"
WHERE NOT "birth_country" = 'USA'
ORDER BY "first_name", "last_name";