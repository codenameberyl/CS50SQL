CREATE TABLE "message_temp" (
    "id" INTEGER,
    "phrase" TEXT NOT NULL,
    PRIMARY KEY("id")
);

INSERT INTO "message_temp" ("phrase")
SELECT substr("sentence", 98, 4) FROM "sentences"
WHERE "id" = 14;

INSERT INTO "message_temp" ("phrase")
SELECT substr("sentence", 3, 5) FROM "sentences"
WHERE "id" = 114;

INSERT INTO "message_temp" ("phrase")
SELECT substr("sentence", 72, 9) FROM "sentences"
WHERE "id" = 618;

INSERT INTO "message_temp" ("phrase")
SELECT substr("sentence", 7, 3) FROM "sentences"
WHERE "id" = 630;

INSERT INTO "message_temp" ("phrase")
SELECT substr("sentence", 12, 5) FROM "sentences"
WHERE "id" = 932;

INSERT INTO "message_temp" ("phrase")
SELECT substr("sentence", 50, 7) FROM "sentences"
WHERE "id" = 2230;

INSERT INTO "message_temp" ("phrase")
SELECT substr("sentence", 44, 10) FROM "sentences"
WHERE "id" = 2346;

INSERT INTO "message_temp" ("phrase")
SELECT substr("sentence", 14, 5) FROM "sentences"
WHERE "id" = 3041;

CREATE VIEW "message" AS
SELECT "phrase" FROM "message_temp";