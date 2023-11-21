SELECT "name", "per_pupil_expenditure", "graduated" FROM "schools"
JOIN "expenditures" ON "expenditures"."district_id" = "schools"."district_id"
JOIN "graduation_rates" oN "graduation_rates"."school_id" = "schools"."id"
ORDER BY "per_pupil_expenditure" DESC, "name";