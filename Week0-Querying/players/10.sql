-- In 10.sql, write SQL query to answer a question of your choice. This query should:
-- Make use of AS to rename a column
-- Involve at least condition, using WHERE
-- Sort by at least one column using ORDER BY

SELECT "first_name" AS "Hi, I'Am", "last_name" AS "This is my last name", "debut" AS "That's my debut date" FROM "players" WHERE "debut" LIKE "%2020%"
ORDER BY "debut";
