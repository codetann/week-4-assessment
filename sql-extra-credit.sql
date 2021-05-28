-- ARTIST TABLE --
-- #1
SELECT *
FROM artist
ORDER BY name DESC
LIMIT 10
-- #2
SELECT *
FROM artist
WHERE name like 'Black%'
-- #3
SELECT *
FROM artist
WHERE name like '%black%'