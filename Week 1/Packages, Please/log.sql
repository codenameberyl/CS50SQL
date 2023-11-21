
-- *** The Lost Letter ***
-- First find the ids of from and to addresses in packages
-- to get the package id, then get the addresses id from
-- scans and check the action if the package was dropped
-- to get the type and address of the Lost Letter
SELECT "type", "address" FROM "addresses"
WHERE "id" IN (
    SELECT "address_id" FROM "scans"
    WHERE "package_id" = (
        SELECT "id" FROM "packages"
        WHERE "from_address_id" = (
            SELECT "id" FROM "addresses" WHERE "address" = '900 Somerville Avenue'
        )
        AND "to_address_id" = (
            SELECT "id" FROM "addresses" WHERE "address" LIKE '2 ________ Street'
        )
    ) AND "action" = 'Drop'
);

-- *** The Devious Delivery ***
-- First, we get the id of the package where
-- from_address_id is NULL. Then, we use the
-- package id to get the address_id from scans
-- then we filter by the corresponding NULL
-- from_address_id
SELECT "type" FROM "addresses"
WHERE "id" = (
    SELECT "address_id" FROM "scans"
    WHERE "package_id" IN (
        SELECT "id" FROM "packages"
        WHERE "from_address_id" IS NULL
    )
    AND "address_id" != (
        SELECT "to_address_id" FROM "packages"
        WHERE "from_address_id" IS NULL
    )
);

SELECT "contents" FROM "packages"
WHERE "from_address_id" IS NULL;

-- *** The Forgotten Gift ***
SELECT "contents" FROM "packages"
WHERE "to_address_id" = (
    SELECT "id" FROM "addresses"
    WHERE "address" = '728 Maple Place'
)
AND "from_address_id" = (
    SELECT "id" FROM "addresses"
    WHERE "address" = '109 Tileston Street'
);

SELECT "name" FROM "drivers"
WHERE "id" IN (
    SELECT "driver_id" FROM "scans"
    WHERE "package_id" = (
        SELECT "id" FROM "packages"
        WHERE "to_address_id" = (
            SELECT "id" FROM "addresses"
            WHERE "address" = '728 Maple Place'
        )
        AND "from_address_id" = (
            SELECT "id" FROM "addresses"
            WHERE "address" = '109 Tileston Street'
        )
    )
    AND "address_id" != (
        SELECT "id" FROM "addresses"
        WHERE "address" = '109 Tileston Street'
    )
    AND "action" = "Pick"
);