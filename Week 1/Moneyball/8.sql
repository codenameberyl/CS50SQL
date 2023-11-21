SELECT "salary" FROM "salaries"
WHERE "player_id" = (
    SELECT "player_id" FROM "performances"
    WHERE "HR" = (
        SELECT MAX("HR") FROM "performances"
        WHERE "year" = 2001
    )
)
AND "year" = 2001;