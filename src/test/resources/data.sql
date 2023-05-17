insert into movie(movie_id, title, duration) values
      (1, 'John Wick Chapter 4', 169),
      (2, 'Dungeons and Dragons: Honor Among Thieves', 134),
      (3, 'Super Mario Bros Movie', 92);

insert into room(room_number) values (1), (2);

insert into row(row_id, room_number, row_number, seat_count) values
    (1, 1, 1, 8),
    (2, 1, 2, 10),
    (3, 1, 3, 12),
    (4, 2, 1, 10),
    (5, 2, 2, 12),
    (6, 2, 3, 14),
    (7, 3, 1, 8),
    (8, 3, 2, 10),
    (9, 3, 3, 10);

insert into screening(screening_id, movie_id, start_time, room_number) values
    (1, 1, extract(epoch from '2023-05-08T14:20:00'::timestamp)*1000, 1),
    (2, 1, extract(epoch from '2023-05-08T17:35:00'::timestamp)*1000, 1),
    (3, 1, extract(epoch from '2023-05-08T20:50:00'::timestamp)*1000, 1),
    (4, 1, extract(epoch from '2023-05-09T14:20:00'::timestamp)*1000, 1),
    (5, 1, extract(epoch from '2023-05-09T17:35:00'::timestamp)*1000, 1),
    (6, 1, extract(epoch from '2023-05-09T20:50:00'::timestamp)*1000, 1),
    (7, 2, extract(epoch from '2023-05-08T16:00:00'::timestamp)*1000, 2),
    (8, 2, extract(epoch from '2023-05-08T18:40:00'::timestamp)*1000, 2),
    (9, 2, extract(epoch from '2023-05-08T21:20:00'::timestamp)*1000, 2),
    (10, 2, extract(epoch from '2023-05-09T16:00:00'::timestamp)*1000, 2),
    (11, 2, extract(epoch from '2023-05-09T18:40:00'::timestamp)*1000, 2),
    (12, 2, extract(epoch from '2023-05-09T21:20:00'::timestamp)*1000, 2),
    (13, 3, extract(epoch from '2023-05-08T13:20:00'::timestamp)*1000, 3),
    (14, 3, extract(epoch from '2023-05-08T15:20:00'::timestamp)*1000, 3),
    (15, 3, extract(epoch from '2023-05-09T09:20:00'::timestamp)*1000, 2),
    (16, 3, extract(epoch from '2023-05-09T11:20:00'::timestamp)*1000, 2),
    (17, 3, extract(epoch from '2023-05-09T13:20:00'::timestamp)*1000, 3),
    (18, 3, extract(epoch from '2023-05-09T15:20:00'::timestamp)*1000, 3);



insert into booking(booking_id, screening_id, name) values
    (1, 1, 'John Doe'),
    (2, 1, 'Jane Doe'),
    (3, 7, 'Alice Smith'),
    (4, 12, 'Anna Pawlikowska-Jasnorzębska'),
    (5, 18, 'Jan Kowalski');

insert into ticket(ticket_id, booking_id, row_id, seat_number, type) values
    (1, 1, 2, 1, 'adult'),
    (2, 1, 2, 2, 'adult'),
    (3, 1, 2, 3, 'adult'),
    (4, 1, 2, 4, 'adult'),
    (5, 1, 3, 4, 'adult'),
    (6, 1, 3, 5, 'adult'),
    (7, 1, 3, 6, 'adult'),
    (8, 2, 2, 2, 'adult'),
    (9, 2, 2, 3, 'adult'),
    (10, 2, 2, 4, 'adult'),
    (11, 3, 5, 4, 'adult'),
    (12, 3, 5, 5, 'adult'),
    (13, 4, 6, 6, 'adult'),
    (14, 4, 6, 7, 'adult'),
    (15, 4, 6, 8, 'adult'),
    (16, 5, 9, 1, 'adult');




