create table movie(
    movie_id serial primary key,
    title    varchar(100) not null ,
    duration int not null
);

create table room(
    room_number serial primary key
);

create table screening(
    screening_id serial primary key,
    movie_id     int not null,
    start_time   bigint not null,
    room_number  int not null,
    foreign key (movie_id) references movie(movie_id),
    foreign key (room_number) references room(room_number)
);

create table row(
    row_id serial primary key,
    room_number int not null,
    row_number  int not null,
    seat_count  int not null,
    foreign key (room_number) references room(room_number)
);

create table booking(
    booking_id serial primary key,
    screening_id int not null,
    foreign key (screening_id) references screening(screening_id)
);

create table ticket(
    ticket_id serial primary key,
    booking_id  int not null,
    row_id      int not null,
    seat_number int not null,
    type        varchar(15) not null,
    foreign key (booking_id) references booking(booking_id),
    foreign key (row_id) references row(row_id)
)