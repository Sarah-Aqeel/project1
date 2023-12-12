insert into Cinema_lara (
    Cinema_id,
    Cinema_name,
    Cinema_address,
    Cinema_phone,
    Cinema_email
   )values(
   	122,
   	'Imex',
   	'15 tri-parkway WI 54914',
   	+1800-9286780,
   	'Imexglobal@Icloud.com'
	);

insert into Theater_lara(
    Theater_id,
    Theater_name,
    Cinema_id  -- Add the cinema_id column
	)values(
    111,
   	'Hall 2',
    122
    );
 select * from theater_lara
 insert into ticket_lara(
	ticket_id,
	order_date,
	sub_total,
	total_cost
	)values(
	435,
	'12/11/2023',
	256,
	375
	);
select * from ticket_lara
insert into seat_lara(
	seat_id,
	Theater_id,
	seat_type
	)values(
	165,
	111,
	'Front'
	);
select * from seat_lara
insert into booking_lara(
    show_id,
    seat_id
  )values(
	11,
	165
	);
select * from booking_lara
insert into shows_lara (
    show_id,
    movie_id,
    theater_id,
    show_time
    )values(
    11,
    31,
    54,
    '12/11/2023'
    );
   
 insert into movie_lara(
	movie_id,
	movie_name,
	movie_language,
	movie_ratings
	)values(
	31,
	'LALA Land',
	'English',
	'Four stars'
	);
	