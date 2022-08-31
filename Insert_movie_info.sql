INSERT INTO customer(
	customer_id,
	first_name,
	last_name
)
VALUES(
	5,
	'John',
	'Pope'
);
INSERT INTO Concessions(
	concession_id,
	amount,
	concession_name,
	customer_id
)
VALUES(
	5,
	3.00,
	'Candy',
	5
);
INSERT INTO Movies(
	movie_id,
	runtime,
	rating,
	movie_name
)
VALUES(
	3,
	'01:30:00',
	'R',
	'Hotrod'	
); 
INSERT INTO Tickets(
	ticket_id,
	price,
	movie_id,
	customer_id,
	movie_name,
	rating
)
VALUES(
	3,
	7.00,
	3,
	3,
	'Hotrod',
	'R'
);
UPDATE Tickets
SET movie_name = 'Hotrod'
WHERE movie_id = 3;
UPDATE Tickets
SET rating = 'R'
WHERE movie_id = 3;

INSERT INTO showtimes(
	showtime_id,
	movie_id,
	show_time
)
VALUES(
	1,
	1,
	'2022-08-30 02:00:00-05'
);
INSERT INTO showtimes(
	showtime_id,
	movie_id,
	show_time
)
VALUES(
	2,
	2,
	'2022-08-30 05:00:00-05'
);
INSERT INTO showtimes(
	showtime_id,
	movie_id,
	show_time
)
VALUES(
	3,
	3,
	'2022-08-30 07:00:00-05'
);
UPDATE Movies
SET movie_genre = 'SCI-FI'
WHERE movie_id = 1;
UPDATE Movies
SET movie_genre = 'Comedy'
WHERE movie_id = 2;
UPDATE Movies
SET movie_genre = 'Comedy'
WHERE movie_id = 3;
UPDATE Tickets
SET showtime_id = 1
WHERE ticket_id = 1;
UPDATE Tickets
SET showtime_id = 2
WHERE ticket_id = 2;
UPDATE Tickets
SET showtime_id = 3
WHERE ticket_id = 3;



