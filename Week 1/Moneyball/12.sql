WITH "PlayerRanking" AS (
    SELECT
        "players"."id",
        "players"."first_name",
        "players"."last_name",
        ROUND("salaries"."salary" / NULLIF("performances"."H", 0), 2) AS "dollars_per_hit",
        ROUND("salaries"."salary" / NULLIF("performances"."RBI", 0), 2) AS "dollars_per_rbi",
        ROW_NUMBER() OVER (ORDER BY "salaries"."salary" / NULLIF("performances"."H", 0) ASC, "players"."id" ASC) AS "hit_rank",
        ROW_NUMBER() OVER (ORDER BY "salaries"."salary" / NULLIF("performances"."RBI", 0) ASC, "players"."id" ASC) AS "rbi_rank"
    FROM
        "players"
    JOIN
        "salaries" ON "salaries"."player_id" = "players"."id"
    JOIN
        "performances" ON "performances"."player_id" = "players"."id" AND "performances"."year" = "salaries"."year"
    WHERE
        "performances"."year" = 2001
        AND "performances"."H" > 0
        AND "performances"."RBI" > 0
)
SELECT
    "first_name",
    "last_name"
FROM
    "PlayerRanking"
WHERE
    "hit_rank" <= 10 AND "rbi_rank" <= 10
ORDER BY
    "id";