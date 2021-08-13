-- Artist #1
SELECT * FROM artist ORDER BY name DESC LIMIT 10;

-- #2
SELECT * FROM artist WHERE name LIKE 'Black%'

-- #3
SELECT * FROM artist WHERE name LIKE '%Black%';

-- Employee #1
SELECT MAX(birth_date) FROM employee;

-- #2
SELECT MIN(birth_date) FROM employee;

-- invoice #1
SELECT COUNT(*) FROM invoice WHERE billing_state in ('CA', 'TX', 'AZ');

-- #2
SELECT AVG(total) FROM invoice;

-- join #1
SELECT pt.track_id
FROM playlist_track pt
JOIN playlist p ON p.playlist_id = pt.playlist_id
WHERE p.name = 'Music';

-- #2
SELECT t.name
FROM track t
JOIN playlist_track pt ON pt.track_id = t.track_id
WHERE pt.playlist_id = 5;

-- #3
SELECT t.name, p.name
FROM track t
JOIN playlist_track pt ON t.track_id = pt.track_id
JOIN playlist p ON pt.playlist_id = p.playlist_id;

-- #4
SELECT t.name, a.title
FROM track t
JOIN album a ON t.album_id = a.album_id
JOIN genre g ON g.genre_id = t.genre_id
WHERE g.name = 'Alternative & Punk';