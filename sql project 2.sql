
-- Cinemas table creation
CREATE TABLE Cinema_lara (
    Cinema_id SERIAL PRIMARY KEY,
    Cinema_name VARCHAR(100),
    Cinema_address VARCHAR(100),
    Cinema_phone VARCHAR(150),
    Cinema_email VARCHAR(150)
);

-- Theater table creation
CREATE TABLE Theater_lara (
    Theater_id SERIAL PRIMARY KEY,
    Theater_name VARCHAR(100),
    Cinema_id INT,  -- Add the cinema_id column
    FOREIGN KEY (Cinema_id) REFERENCES Cinema_lara(Cinema_id)
);
-----ticket table creation 
create table ticket_lara(
	ticket_id SERIAL primary key,
	order_date DATE default CURRENT_DATE,
	sub_total numeric (10,2),
	total_cost numeric (8,2)
	);
-----seat table creation(
create table seat_lara(
	seat_id SERIAL primary key,
	Theater_id int,
	seat_type Varchar(100),
	foreign key (Theater_id) references Theater_lara(Theater_id)
);

----- booking table creation
CREATE TABLE booking_lara (
    show_id INT,
    seat_id INT,
    PRIMARY KEY (show_id, seat_id),
    FOREIGN KEY (show_id) REFERENCES shows_lara(show_id),
    FOREIGN KEY (seat_id) REFERENCES seat_lara(seat_id)
);
	
	
-----shows table creation
CREATE TABLE shows_lara (
    show_id SERIAL PRIMARY KEY,
    movie_id INT,
    theater_id INT,
    show_time DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (movie_id) REFERENCES movie_lara(movie_id)
   );
----movie table creation
create table movie_lara(
	movie_id SERIAL primary key,
	movie_name VARCHAR(100),
	movie_language VARCHAR(150),
	movie_ratings VARCHAR(150)
	);