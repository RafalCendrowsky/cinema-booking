insert into movie(title, duration) values
      ('John Wick Chapter 4', 169),
      ('Dungeons and Dragons: Honor Among Thieves', 134),
      ('Super Mario Bros Movie', 92);

insert into room(room_number) values (1), (2), (3);

insert into seat_row(room_number, row_number, seat_count) values
    (1, 1, 8),
    (1, 2, 10),
    (1, 3, 12),
    (2, 1, 10),
    (2, 2, 12),
    (2, 3, 14),
    (3, 1, 8),
    (3, 2, 10),
    (3, 3, 10);

insert into screening(movie_id, start_time, room_number) values
    (1, extract(epoch from '2023-05-08T14:20:00'::timestamp)*1000, 1),
    (1, extract(epoch from '2023-05-08T17:35:00'::timestamp)*1000, 1),
    (1, extract(epoch from '2023-05-08T20:50:00'::timestamp)*1000, 1),
    (1, extract(epoch from '2023-05-09T14:20:00'::timestamp)*1000, 1),
    (1, extract(epoch from '2023-05-09T17:35:00'::timestamp)*1000, 1),
    (1, extract(epoch from '2023-05-09T20:50:00'::timestamp)*1000, 1),
    (2, extract(epoch from '2023-05-08T16:00:00'::timestamp)*1000, 2),
    (2, extract(epoch from '2023-05-08T18:40:00'::timestamp)*1000, 2),
    (2, extract(epoch from '2023-05-08T21:20:00'::timestamp)*1000, 2),
    (2, extract(epoch from '2023-05-09T16:00:00'::timestamp)*1000, 2),
    (2, extract(epoch from '2023-05-09T18:40:00'::timestamp)*1000, 2),
    (2, extract(epoch from '2023-05-09T21:20:00'::timestamp)*1000, 2),
    (3, extract(epoch from '2023-05-08T13:20:00'::timestamp)*1000, 3),
    (3, extract(epoch from '2023-05-08T15:20:00'::timestamp)*1000, 3),
    (3, extract(epoch from '2023-05-09T09:20:00'::timestamp)*1000, 2),
    (3, extract(epoch from '2023-05-09T11:20:00'::timestamp)*1000, 2),
    (3, extract(epoch from '2023-05-09T13:20:00'::timestamp)*1000, 3),
    (3, extract(epoch from '2023-05-09T15:20:00'::timestamp)*1000, 3);

insert into ticket_type(type_id, name, price) values
     (1, 'adult', 2500),
     (2, 'student', 1800),
     (3, 'child', 1250);

insert into booking(screening_id, name) values
    (1, 'John Doe'),
    (1, 'Jane Doe'),
    (7, 'Alice Smith'),
    (12, 'Anna Pawlikowska-Jasnorzębska'),
    (18, 'Jan Kowalski');

insert into ticket(booking_id, row_id, seat_number, type_id) values
    (1, 2, 1, 1),
    (1, 2, 2, 1),
    (1, 2, 3, 1),
    (1, 2, 4, 1),
    (1, 3, 4, 1),
    (1, 3, 5, 1),
    (1, 3, 6, 1),
    (2, 2, 2, 1),
    (2, 2, 3, 1),
    (2, 2, 4, 1),
    (3, 5, 4, 1),
    (3, 5, 5, 1),
    (4, 6, 6, 1),
    (4, 6, 7, 1),
    (4, 6, 8, 1),
    (5, 9, 1, 1);




