INSERT INTO singer (name)
VALUES 
('Сплин'), 
('БИ-2'), 
('Eminem'), 
('Hollywood Undead'), 
('The Beatles'), 
('t.A.T.u.'), 
('Miles Davis'), 
('Green Day'),
('Bon Jovi');

INSERT INTO genre (name)
VALUES 
('Русский рок'), 
('Рэп'), 
('Поп'), 
('Джаз'), 
('Рок'); 

INSERT INTO singers_genres(singer_id, genre_id)
VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 3),
(6, 3),
(7, 4),
(8, 5),
(9, 5);

INSERT INTO album(name, year)
values
('Гранатовый альбом', 2018),
('Горизонт событий', 2017),
('The Eminem Show', 2002),
('Swan Songs', 2008),
('Abbey Road', 1969),
('Dangerous and Moving', 2005),
('Kind Of Blue (Legacy Edition)', 1959),
('Greatest Hits: Gods Favorite Band', 2017),
('Bon Jovi Greatest Hits', 2010);
INSERT into singer_album (singer_id, album_id)
values
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9);

INSERT INTO track (name, duration, albom_id)
VALUES('Весь этот бред', 186, 1),
('Достань гранату', 240, 1),
('Орбит без сахара', 147, 1),
('Лётчик', 351, 2),
('Чёрное солнце', 240, 2),
('Детство', 313, 2),
('White America', 324, 3),
('Business', 251, 3),
('The Kiss', 75, 3),
('Undead', 285, 4),
('Everywhere I Go', 210, 4),
('Young', 196, 4),
('Come Together', 259, 5),
('Something', 182, 5),
('Sun King', 146, 5),
('All About Us', 181, 6),
('Cosmos (Outer Space)',252, 6),
('Loves Me Not', 175, 6),
('So What', 561, 7),
('Blue in Green', 334, 7),
('All Blues', 694, 7),
('Longview', 233, 8),
('She', 134, 8),
('Warning', 221, 8),
('Its My Life', 223, 9);

INSERT INTO collection(name, year)
VALUES 
('collection_1', '2018'),
('collection_2', '2019'),
('collection_3', '2020'),
('collection_4', '2015'),
('collection_5', '2020'),
('collection_6', '2021');

INSERT INTO collection_track (collection_id, track_id)
VALUES 
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(2, 6),
(3, 7),
(3, 8),
(3, 9),
(4, 10),
(4, 11),
(4, 12),
(5, 13),
(5, 14),
(5, 15),
(6, 16),
(6, 17),
(6, 18);

INSERT INTO album(name, year)
VALUES
('Тайком', 2019),
('Депрессия', 2019);
INSERT into singer_album (singer_id, album_id)
VALUES
(1, 10),
(2, 11);
INSERT INTO track (name, duration, albom_id)
values
('Воздушный шар', 206, 10),
('Тайком', 225, 10),
('Депрессия',251, 11),
('Депрессия Tesla Boy 80’s remix', 291, 11);
INSERT INTO singers_genres(singer_id, genre_id)
VALUES (4, 5);
