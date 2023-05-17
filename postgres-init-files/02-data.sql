insert into movie(movie_id, title, duration) values
    (1, 'John Wick Chapter 4', 169),
    (2, 'Dungeons and Dragons: Honor Among Thieves', 134),
    (3, 'Super Mario Bros Movie', 92),
    (4, 'Guardians of the Galaxy Vol. 3', 150),
    (5, 'Puss in Boots: The Last Wish', 102),
    (6, 'Scream 6', 122),
    (7, 'Encanto', 102),
    (8, 'Evil Dead Rise', 96),
    (9, 'Glass Onion: A Knives Out Mystery', 139);

insert into room(room_number) values
    (1),
    (2),
    (3),
    (4),
    (5);

insert into row(row_id, room_number, row_number, seat_count) values
    (1, 1, 1, 8),
    (2, 1, 2, 10),
    (3, 1, 3, 12),
    (4, 1, 4, 12),
    (5, 1, 5, 12),
    (6, 1, 6, 12),
    (7, 1, 7, 12),
    (8, 2, 1, 10),
    (9, 2, 2, 12),
    (10, 2, 3, 14),
    (11, 2, 4, 14),
    (12, 2, 5, 14),
    (13, 2, 6, 14),
    (14, 2, 7, 14),
    (15, 2, 8, 14),
    (16, 3, 1, 8),
    (17, 3, 2, 10),
    (18, 3, 3, 10),
    (19, 3, 4, 10),
    (20, 3, 5, 10),
    (21, 3, 6, 10),
    (22, 3, 1, 8),
    (23, 4, 2, 10),
    (24, 4, 3, 10),
    (25, 4, 4, 10),
    (26, 4, 5, 10),
    (27, 4, 6, 10),
    (28, 5, 1, 8),
    (29, 5, 2, 10),
    (30, 5, 3, 10),
    (31, 5, 4, 10),
    (32, 5, 5, 10),
    (33, 5, 6, 10);


insert into screening(screening_id, movie_id, start_time, room_number) values
    (1, 1, extract(epoch from '2023-05-08T14:20:00'::timestamp)*1000, 1),
    (2, 1, extract(epoch from '2023-05-08T17:35:00'::timestamp)*1000, 1),
    (3, 1, extract(epoch from '2023-05-08T20:50:00'::timestamp)*1000, 1),
    (4, 1, extract(epoch from '2023-05-09T14:20:00'::timestamp)*1000, 1),
    (5, 1, extract(epoch from '2023-05-09T17:35:00'::timestamp)*1000, 1),
    (6, 1, extract(epoch from '2023-05-09T20:50:00'::timestamp)*1000, 1),
    (7, 1, extract(epoch from '2023-05-10T14:20:00'::timestamp)*1000, 1),
    (8, 1, extract(epoch from '2023-05-10T17:35:00'::timestamp)*1000, 1),
    (9, 1, extract(epoch from '2023-05-10T20:35:00'::timestamp)*1000, 1),
    (10, 2, extract(epoch from '2023-05-08T16:00:00'::timestamp)*1000, 2),
    (11, 2, extract(epoch from '2023-05-08T18:40:00'::timestamp)*1000, 2),
    (12, 2, extract(epoch from '2023-05-08T21:20:00'::timestamp)*1000, 2),
    (13, 2, extract(epoch from '2023-05-09T16:00:00'::timestamp)*1000, 2),
    (14, 2, extract(epoch from '2023-05-09T18:40:00'::timestamp)*1000, 2),
    (15, 2, extract(epoch from '2023-05-09T21:20:00'::timestamp)*1000, 2),
    (16, 2, extract(epoch from '2023-05-10T16:00:00'::timestamp)*1000, 2),
    (17, 2, extract(epoch from '2023-05-10T18:40:00'::timestamp)*1000, 2),
    (18, 2, extract(epoch from '2023-05-10T21:20:00'::timestamp)*1000, 2),
    (19, 2, extract(epoch from '2023-05-11T16:00:00'::timestamp)*1000, 2),
    (20, 2, extract(epoch from '2023-05-11T18:40:00'::timestamp)*1000, 2),
    (21, 2, extract(epoch from '2023-05-11T21:20:00'::timestamp)*1000, 2),
    (22, 3, extract(epoch from '2023-05-08T09:20:00'::timestamp)*1000, 2),
    (23, 3, extract(epoch from '2023-05-08T11:20:00'::timestamp)*1000, 2),
    (24, 3, extract(epoch from '2023-05-08T13:20:00'::timestamp)*1000, 3),
    (25, 3, extract(epoch from '2023-05-08T15:20:00'::timestamp)*1000, 3),
    (26, 3, extract(epoch from '2023-05-09T09:20:00'::timestamp)*1000, 2),
    (27, 3, extract(epoch from '2023-05-09T11:20:00'::timestamp)*1000, 2),
    (28, 3, extract(epoch from '2023-05-09T13:20:00'::timestamp)*1000, 3),
    (29, 3, extract(epoch from '2023-05-09T15:20:00'::timestamp)*1000, 3),
    (30, 3, extract(epoch from '2023-05-10T09:20:00'::timestamp)*1000, 2),
    (31, 3, extract(epoch from '2023-05-10T11:20:00'::timestamp)*1000, 2),
    (32, 3, extract(epoch from '2023-05-10T13:20:00'::timestamp)*1000, 3),
    (33, 3, extract(epoch from '2023-05-10T15:20:00'::timestamp)*1000, 3),
    (34, 3, extract(epoch from '2023-05-11T09:20:00'::timestamp)*1000, 2),
    (35, 3, extract(epoch from '2023-05-11T11:20:00'::timestamp)*1000, 2),
    (36, 3, extract(epoch from '2023-05-11T13:20:00'::timestamp)*1000, 3),
    (37, 3, extract(epoch from '2023-05-11T15:20:00'::timestamp)*1000, 3),
    (38, 4, extract(epoch from '2023-05-08T17:20:00'::timestamp)*1000, 3),
    (39, 4, extract(epoch from '2023-05-08T20:00:00'::timestamp)*1000, 3),
    (40, 4, extract(epoch from '2023-05-09T17:20:00'::timestamp)*1000, 3),
    (41, 4, extract(epoch from '2023-05-09T20:00:00'::timestamp)*1000, 3),
    (42, 4, extract(epoch from '2023-05-10T17:20:00'::timestamp)*1000, 3),
    (43, 4, extract(epoch from '2023-05-10T20:00:00'::timestamp)*1000, 3),
    (44, 4, extract(epoch from '2023-05-11T14:20:00'::timestamp)*1000, 1),
    (45, 4, extract(epoch from '2023-05-11T17:00:00'::timestamp)*1000, 1),
    (46, 4, extract(epoch from '2023-05-11T19:50:00'::timestamp)*1000, 1),
    (47, 4, extract(epoch from '2023-05-12T14:20:00'::timestamp)*1000, 1),
    (48, 4, extract(epoch from '2023-05-12T17:00:00'::timestamp)*1000, 1),
    (49, 4, extract(epoch from '2023-05-12T19:50:00'::timestamp)*1000, 1),
    (50, 5, extract(epoch from '2023-05-09T09:20:00'::timestamp)*1000, 1),
    (51, 5, extract(epoch from '2023-05-09T11:20:00'::timestamp)*1000, 1),
    (52, 5, extract(epoch from '2023-05-09T13:20:00'::timestamp)*1000, 4),
    (53, 5, extract(epoch from '2023-05-09T15:20:00'::timestamp)*1000, 4),
    (54, 5, extract(epoch from '2023-05-10T09:20:00'::timestamp)*1000, 1),
    (55, 5, extract(epoch from '2023-05-10T11:20:00'::timestamp)*1000, 1),
    (56, 5, extract(epoch from '2023-05-10T13:20:00'::timestamp)*1000, 4),
    (57, 5, extract(epoch from '2023-05-10T15:20:00'::timestamp)*1000, 4),
    (58, 5, extract(epoch from '2023-05-11T09:20:00'::timestamp)*1000, 1),
    (59, 5, extract(epoch from '2023-05-11T11:20:00'::timestamp)*1000, 1),
    (60, 5, extract(epoch from '2023-05-11T13:20:00'::timestamp)*1000, 4),
    (61, 5, extract(epoch from '2023-05-11T15:20:00'::timestamp)*1000, 4),
    (62, 5, extract(epoch from '2023-05-12T09:20:00'::timestamp)*1000, 1),
    (63, 5, extract(epoch from '2023-05-12T11:20:00'::timestamp)*1000, 1),
    (64, 5, extract(epoch from '2023-05-12T13:20:00'::timestamp)*1000, 4),
    (65, 5, extract(epoch from '2023-05-12T15:20:00'::timestamp)*1000, 4),
    (66, 5, extract(epoch from '2023-05-13T09:20:00'::timestamp)*1000, 1),
    (67, 5, extract(epoch from '2023-05-13T11:20:00'::timestamp)*1000, 1),
    (68, 5, extract(epoch from '2023-05-13T13:20:00'::timestamp)*1000, 1),
    (69, 5, extract(epoch from '2023-05-13T15:20:00'::timestamp)*1000, 1),
    (70, 6, extract(epoch from '2023-05-09T17:20:00'::timestamp)*1000, 4),
    (71, 6, extract(epoch from '2023-05-09T19:40:00'::timestamp)*1000, 4),
    (72, 6, extract(epoch from '2023-05-09T22:00:00'::timestamp)*1000, 4),
    (73, 6, extract(epoch from '2023-05-10T17:20:00'::timestamp)*1000, 4),
    (74, 6, extract(epoch from '2023-05-10T19:40:00'::timestamp)*1000, 4),
    (75, 6, extract(epoch from '2023-05-10T22:00:00'::timestamp)*1000, 4),
    (76, 6, extract(epoch from '2023-05-11T17:20:00'::timestamp)*1000, 4),
    (77, 6, extract(epoch from '2023-05-11T19:40:00'::timestamp)*1000, 4),
    (78, 6, extract(epoch from '2023-05-11T22:00:00'::timestamp)*1000, 4),
    (79, 6, extract(epoch from '2023-05-12T17:20:00'::timestamp)*1000, 4),
    (80, 6, extract(epoch from '2023-05-12T19:40:00'::timestamp)*1000, 4),
    (81, 6, extract(epoch from '2023-05-12T22:00:00'::timestamp)*1000, 4),
    (82, 6, extract(epoch from '2023-05-13T17:20:00'::timestamp)*1000, 1),
    (83, 6, extract(epoch from '2023-05-13T19:40:00'::timestamp)*1000, 1),
    (84, 6, extract(epoch from '2023-05-13T19:40:00'::timestamp)*1000, 1),
    (85, 7, extract(epoch from '2023-05-12T11:00:00'::timestamp)*1000, 2),
    (86, 7, extract(epoch from '2023-05-12T13:00:00'::timestamp)*1000, 2),
    (87, 7, extract(epoch from '2023-05-12T15:00:00'::timestamp)*1000, 2),
    (88, 7, extract(epoch from '2023-05-13T11:00:00'::timestamp)*1000, 2),
    (89, 7, extract(epoch from '2023-05-13T13:00:00'::timestamp)*1000, 2),
    (90, 7, extract(epoch from '2023-05-13T15:00:00'::timestamp)*1000, 2),
    (91, 8, extract(epoch from '2023-05-12T17:00:00'::timestamp)*1000, 2),
    (92, 8, extract(epoch from '2023-05-12T19:00:00'::timestamp)*1000, 2),
    (93, 8, extract(epoch from '2023-05-12T21:00:00'::timestamp)*1000, 2),
    (94, 8, extract(epoch from '2023-05-13T17:00:00'::timestamp)*1000, 2),
    (95, 8, extract(epoch from '2023-05-13T19:00:00'::timestamp)*1000, 2),
    (96, 8, extract(epoch from '2023-05-13T21:00:00'::timestamp)*1000, 2),
    (97, 9, extract(epoch from '2023-05-13T13:00:00'::timestamp)*1000, 4),
    (98, 9, extract(epoch from '2023-05-13T15:40:00'::timestamp)*1000, 4),
    (99, 9, extract(epoch from '2023-05-13T18:20:00'::timestamp)*1000, 4),
    (100, 9, extract(epoch from '2023-05-13T20:40:00'::timestamp)*1000, 4);


insert into booking(booking_id, screening_id, name) values
    (1, 1, 'John Doe'),
    (2, 1, 'Jane Doe'),
    (3, 5, 'Alice Smith'),
    (4, 20, 'Anna Pawlikowska-Jasnorzębska'),
    (5, 79, 'Jan Kowalski');

insert into ticket(ticket_id, booking_id, row_id, seat_number, type) values
    (1, 1, 5, 1, 'adult'),
    (2, 1, 5, 2, 'adult'),
    (3, 1, 5, 3, 'adult'),
    (4, 1, 5, 4, 'adult'),
    (5, 1, 6, 4, 'adult'),
    (6, 1, 6, 5, 'adult'),
    (7, 1, 6, 6, 'adult'),
    (8, 2, 2, 2, 'adult'),
    (9, 2, 2, 3, 'adult'),
    (10, 2, 2, 4, 'adult'),
    (11, 3, 3, 4, 'adult'),
    (12, 3, 3, 5, 'adult'),
    (13, 4, 10, 6, 'adult'),
    (14, 4, 10, 7, 'adult'),
    (15, 4, 10, 8, 'adult'),
    (16, 5, 26, 1, 'adult'),
    (17, 5, 26, 2, 'student'),
    (18, 5, 26, 3, 'student');




