# alist-replit

The fastest way to deploy the alist to `repl.it` is to click the `run on repl.it` button below.

<a href="https://repl.it/github/alist-org/alist-replit">
  <img alt="Run on Repl.it" src="https://repl.it/badge/github/alist-org/alist-replit" style="height: 40px; width: 190px;" />
</a>

## Database
You may need to use another remote MySQL/Postgres database as local sqlite3 is public for everyone. Some Free MySQL/Postgres Databases:

- https://db4free.net/
- https://remotemysql.com/
- https://www.freesqldatabase.com/
- https://planetscale.com/
- https://bit.io/
- https://www.elephantsql.com/
- https://scalingo.com/
- http://cloud.yugabyte.com/

How to change the database?
> Switch to `secrets` tab then edit `System environment variables`.You can also edit raw json:
> ```json
> {
>   "DB_TYPE":"mysql",
>   "DB_HOST":"sql.com",
>   "DB_PORT":"3306",
>   "DB_USER":"alist",
>   "DB_PASS":"password",
>   "DB_NAME":"alist",
>   "DB_TABLE_PREFIX":"alist_",
>   "DB_SLL_MODE":"true"
> }
> ```
> The secrets is private so you don't need to worry about leaking your data.

## Password
The initial password is randomly generated, and you can get it by checking the console logs.
