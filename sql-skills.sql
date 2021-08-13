-- Artist #1
INSERT INTO artist (name) VALUES ('Alexander Jean');
INSERT INTO artist (name) VALUES ('Geronimo Rauch');
INSERT INTO artist (name) VALUES ('Carlos Rivera');

-- #2
SELECT * FROM artist order by name ASC LIMIT 5;

-- Employee #1
SELECT first_name, last_name FROM employee WHERE city = 'Calgary';

-- #2
SELECT * FROM employee WHERE reports_to = 2;

-- #3
SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';

-- invoice #1
SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';

-- #2
SELECT MAX(TOTAL) FROM invoice;

-- #3
SELECT MIN(total) FROM invoice;

-- #4
SELECT * FROM invoice WHERE total > 5;

-- #5
SELECT COUNT(*) FROM invoice WHERE total < 5;

-- #6
SELECT SUM(total) FROM invoice;

-- join #1
SELECT * FROM invoice i
JOIN invoice_line il ON il.invoice_id = i.invoice_id
WHERE il.unit_price > 0.99;

-- #2
SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i
JOIN customer c ON i.customer_id = c.customer_id;

-- #3
SELECT c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c 
JOIN employee e ON c.support_rep_id = e.employee_id;

-- #4
SELECT al.title, ar.name
FROM album al
JOIN artist ar ON al.artist_id = ar.artist_id;