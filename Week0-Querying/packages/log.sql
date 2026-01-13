
-- *** The Lost Letter ***
-- I started my queries trying to find the id of the objects that i was trying to find.
-- As you can see below i started finding the '900 Somerville Avenue' id first
-- so then i could find the letters that came from this address.
SELECT "id", "address", "type" FROM "addresses" where "address" = '900 Somerville Avenue';

-- This query i could find the packages ids that came from 900 Somerville Avenue.
-- And it resulted on a list of packages from 900 Somerville Avenue,
-- Then i assumed that the letter i was searching for was the one that had something similar
-- to "congratulations" in contents, wich was the 384 id.
SELECT "id", "contents" FROM "packages" WHERE "from_address_id" =
    (SELECT "id" FROM "addresses" WHERE "address" = '900 Somerville Avenue');

-- The last step was to find the status of the package on the scans table wich was, Pick from: 900 Somerville Avenue and Drop to: 2
--  Finnigan Street
SELECT * FROM "scans" WHERE "package_id" = '384'

-- *** The Devious Delivery ***
-- According to the problem statement, the individual was worried about the absence of a “From address.”
-- Based on this, I filtered the columns with NULL values and concluded that the Duck debugger was the relevant result.
SELECT * FROM "packages" WHERE "from_address_id" is NULL;

-- Here i just searched on the scans table for the id that i found previusly and could found the package status.
SELECT * FROM "scans" WHERE "package_id" = '5098';

-- And to finalize i selected the address id that the package was delivered on and found the police station.
SELECT * FROM "addresses" WHERE "id" = '348';

-- *** The Forgotten Gift ***
-- Here i selected all informations about the "109 Tileston Street" Where The grandfather lives.
SELECT * FROM "addresses" WHERE "address" = '109 Tileston Street';

-- Than i consulted the package tha came from the "109 Tileston Street" id.
SELECT * FROM "packages" WHERE "from_address_id" = '9873';

-- And finally tracked the package with its id.
SELECT * FROM "scans" WHERE "package_id" = '9523';

-- Also consulted the driver id and found his name, (Hope he is with the flowers).
SELECT "name" FROM "drivers" WHERE "id" = '17';
