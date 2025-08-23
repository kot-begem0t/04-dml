INSERT INTO genres(name_genre)
VALUES
('pop rock'), 
('indie rock'), 
('electropop'), 
('indie pop'), 
('alternative rock'), 
('dance'), 
('electronic'), 
('alternative'), 
('indie'), 
('rock');

INSERT INTO musicians(name_musician)
VALUES
('Imagine Dragons'),
('plenka'),
('The Cranberries'),
('O-Zone');

INSERT INTO albums(album_title, years_of_issue)
VALUES
('Evolve', '2017-06-23 00:00:00'),
('Night Visions', '2012-09-05 00:00:00'),
('Pt. One', '2020-01-01 00:00:00'),
('Pt. Three', '2020-01-01 00:00:00'),
('In the End', '2019-04-26 00:00:00'),
('Bury the Hatchet', '1999-04-19 00:00:00'),
('DiscO-Zone', '2004-06-06 00:00:00'),
('Dar, Unde Eşti…', '1999-09-02 00:00:00'),
--Альбом ниже не имеет связей с исполнителями, хотя есть треки которые в действительности
--имеют исполнителей, которые добавлены.
('without album', '1900-01-01 00:00:00');

INSERT INTO collections(collection_title, years_of_issue)
VALUES
('After 250 seconds', '2018-01-01 00:00:00'),
('Before 250 seconds', '2020-01-01 00:00:00'),
('THE BEST', '2013-01-01 00:00:00'),
('Random', '2016-01-01 00:00:00');

INSERT INTO tracks(track_title, duration, album_id)
VALUES
('Don’t Know Why', 190, 1),
('Believer', 204, 1),
('Radioactive', 187, 2),
('It is Time', 240, 2),
('I Bet My Life', 214, 9),
('Enemy', 214, 9),
('Plenka', 144, 3),
('807. from Past', 123, 3), 
('Love Me', 244, 4),
('No Sleep', 268, 4),
('All Over Now', 256, 5),
('Catch Me If You Can', 278, 5), 
('Animal Instinct', 212, 6),
('Promises', 328, 6),
('Ode To My Family', 277, 9),
('Dreaming My Dreams', 231, 9),
('Fiesta de la noche', 244, 7),
('De ce plang chitarele', 253, 7), 
('M-as trezi', 247, 8),
('Dar, unde esti...', 234, 8),
--Ниже 2 трека для задания 4.2
('WithoutCollection#1', 101, 9),
('WithoutCollection#2', 102, 9);


INSERT INTO albums_musicians(musician_id, album_id)
VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8);

INSERT INTO genres_musicians(genre_id, musician_id)
VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 2),
(8, 3),
(10, 3),
(6, 4),
(7, 4);


INSERT INTO collection_tracks(track_id, collection_id)
VALUES
(10, 1),
(11, 1),
(12, 1),
(14, 1),
(15, 1),
(18, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(13, 2),
(16, 2),
(17, 2),
(19, 2),
(20, 2),
(2, 3),
(4, 3),
(5, 3),
(6, 3),
(1, 4),
(6, 4),
(9, 4),
(11, 4);
