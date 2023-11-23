CREATE VIEW "frequently_reviewed" AS
SELECT "listings"."id", "property_type", "host_name", COUNT("listing_id") AS "reviews"
FROM "listings"
JOIN "reviews" ON "reviews"."listing_id" = "listings"."id"
GROUP BY "reviews"."listing_id"
ORDER BY "reviews"."listing_id" DESC, "property_type", "host_name"
LIMIT 100;