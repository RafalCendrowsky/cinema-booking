create table movie(
    movie_id bigserial primary key,
    title    varchar(100) not null ,
    duration int not null
);

create table screening(
    screening_id bigserial primary key,
    movie_id     bigint not null,
    start_time   bigint not null,
    room         int not null,
    foreign key (movie_id) references movie(movie_id)
);
