SELECT "teams"."name", ROUND(AVG("salaries"."salary"), 2) AS "average salary" FROM "teams"
JOIN "salaries" ON "salaries"."team_id" = "teams"."id"
WHERE "salaries"."year" = 2001
GROUP BY "salaries"."team_id", "team.name"
ORDER BY "average salary"
LIMIT 5;