SELECT "year", ROUND(AVG("salary"), 2) FROM "Salaries"
GROUP BY "year"
ORDER BY "year" DESC;