SELECT
        "schools"."name",
        "graduation_rates"."dropped"
FROM "schools"
JOIN "graduation_rates" ON "schools"."id" = "graduation_rates"."school_id"
WHERE "graduation_rates"."dropped" > 10;
