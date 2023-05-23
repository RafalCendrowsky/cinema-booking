create table movie(
     movie_id int primary key generated always as identity,
     title    varchar(100) not null ,
     duration int          not null
);

create table room(
    room_number int primary key
);

create table screening
(
    screening_id int primary key generated always as identity,
    movie_id     int    not null,
    start_time   bigint not null,
    room_number  int    not null,
    foreign key (movie_id) references movie (movie_id),
    foreign key (room_number) references room (room_number)
);

create table seat_row(
    row_id      int primary key generated always as identity,
    room_number int not null,
    row_number  int not null,
    seat_count  int not null,
    foreign key (room_number) references room(room_number),
    constraint row_number_unique unique (room_number, row_number)
);

create table booking
(
    booking_id   int primary key generated always as identity,
    screening_id int          not null,
    name         varchar(100) not null,
    foreign key (screening_id) references screening (screening_id)
);

create table ticket_type(
                            type_id int primary key,
                            name    varchar(15) not null,
                            price int not null
);

create table ticket(
    ticket_id   int primary key generated always as identity,
    booking_id  int not null,
    row_id      int not null,
    seat_number int not null,
    type_id     int not null,
    foreign key (booking_id) references booking(booking_id),
    foreign key (row_id) references seat_row(row_id),
    foreign key (type_id) references ticket_type(type_id)
);