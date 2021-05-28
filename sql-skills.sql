-- ARTIST TABLE --
-- #1
INSERT INTO artist (name)
    VALUES ('Taylor Swift'), ('Justin Beiber'), ('Post Melon');
-- #2
SELECT *
FROM artist
ORDER BY name
LIMIT 5

-- EMPLOYEE TABLE --
-- #1
SELECT first_name, last_name
FROM employee
WHERE city = 'Calgary'
-- #2
SELECT *
FROM employee
WHERE reports_to = 2
-- #3
SELECT COUNT(*)
FROM employee
WHERE city = 'Lethbridge'

-- INVOICE TABLE --
-- #1
SELECT COUNT(*)
FROM invoice
WHERE billing_country = 'USA'
-- #2
SELECT MAX(total)
FROM invoice
-- #3
SELECT MIN(total)
FROM invoice
-- #4
SELECT *
FROM invoice
WHERE total > 5
-- #6
SELECT COUNT(*)
FROM invoice
WHERE total < 5
-- #7
SELECT SUM(total)
FROM invoice

-- JOIN QUERIES --
-- #1
SELECT *
FROM invoice i
    JOIN invoice_line il
        ON i.invoice_id = il.invoice_id
    WHERE unit_price > .99
-- #2
SELECT i.invoice_date AS date, c.first_name AS first, c.last_name AS last
FROM invoice i
    JOIN customer c
        ON i.customer_id = c.customer_id
-- #3
SELECT c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c
    JOIN employee e
        ON c.support_rep_id = e.employee_id
-- #4
SELECT al.title, a.name
FROM album al
    JOIN artist a
        ON a.artist_id = al.artist_id 