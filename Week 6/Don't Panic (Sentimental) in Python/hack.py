from cs50 import SQL

# Connect to the database
db = SQL("sqlite:///dont-panic.db")

# Prompt the user for a new password
new_password = input("Enter a new password for the administrator: ")

# Update the administrator's password using a prepared statement
db.execute(
    """
    UPDATE "users"
    SET "password" = ?
    WHERE "username" = 'admin';
    """,
    new_password
)

# Inform the user that the hack is complete
print("Administrator's password has been updated!")
