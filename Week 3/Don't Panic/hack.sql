UPDATE "users" SET "password" = '982c0381c279d139fd221fce974916e7'
WHERE "username" = 'admin';

UPDATE "user_logs" SET "new_password" = (
    SELECT "password" FROM "users"
    WHERE "username" = 'emily33'
)
WHERE "type" = 'update'
AND "old_username" = 'admin';