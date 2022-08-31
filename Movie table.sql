CREATE TABLE Customer (
  customer_id SERIAL,
  first_name VARCHAR(60),
  last_name VARCHAR(60),
  PRIMARY KEY ("customer_id")
);

CREATE TABLE Concessions (
  concession_id SERIAL,
  amount NUMERIC(5,2),
  concession_name VARCHAR(60),
  customer_id SERIAL,
  PRIMARY KEY ("concession_id"),
	FOREIGN KEY("customer_id")
   REFERENCES Customer("customer_id")
);

CREATE TABLE Movies (
  movie_id SERIAL,
  runtime TIME,
  rating VARCHAR(60),
  movie_name VARCHAR(60),
  show_time DATE DEFAULT CURRENT_DATE,
  PRIMARY KEY (movie_id)
);
CREATE TABLE Showtimes(
	showtime_id SERIAL,
	movie_id INTEGER,
	show_time TIMESTAMP WITH TIME ZONE,
	PRIMARY KEY (showtime_id),
	FOREIGN KEY (movie_id)
		REFERENCES Movies("movie_id")
	
);

CREATE TABLE Tickets (
  ticket_id SERIAL,
  price NUMERIC(5,2),
  movie_id INTEGER NOT NULL,
  customer_id INTEGER NOT NULL,
  PRIMARY KEY ("ticket_id"),
  FOREIGN KEY ("movie_id")
	REFERENCES Movies("movie_id"),
  FOREIGN KEY ("customer_id")
	REFERENCES Customer("customer_id")
);
ALTER TABLE Tickets
ADD movie_name VARCHAR(60);
ALTER TABLE movies
DROP show_time;
ALTER TABLE Movies
ADD movie_genre VARCHAR(60);
ALTER TABLE Tickets
ADD showtime_id INTEGER;
ALTER TABLE Tickets
DROP rating;
ALTER TABLE Tickets
DROP movie_name;

