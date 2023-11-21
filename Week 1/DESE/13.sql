SELECT "name" FROM "schools"
WHERE "district_id" IN (
    SELECT "district_id" FROM "staff_evaluations"
    WHERE "proficient" > 98
);