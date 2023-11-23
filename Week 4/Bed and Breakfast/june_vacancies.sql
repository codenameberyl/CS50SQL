CREATE VIEW "june_vacancies" AS
SELECT "listings"."id", "property_type", "host_name", COUNT("availabilities"."date") AS "days_vacant"
FROM "listings"
JOIN "availabilities" ON "availabilities"."listing_id" = "listings"."id"
WHERE "date" BETWEEN '2023-06-01' AND '2023-06-31' AND "available" = 'TRUE'
GROUP BY "availabilities"."listing_id";