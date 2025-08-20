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
('Imagine Dragons '),
('plenka'),
('The Cranberries'),
('O-Zone');

INSERT INTO albums(album_title, years_of_issue)
VALUES
('Evolve', '2017-06-23 00:00:00'),
('Night Visions', '2012-09-05 00:00:00'),
('Pt. One', '2019-01-01 00:00:00'),
('Pt. Three', '2020-01-01 00:00:00'),
('In the End', '2019-04-26 00:00:00'),
('Bury the Hatchet', '1999-04-19 00:00:00'),
('DiscO-Zone', '2004-06-06 00:00:00'),
('Dar, Unde Eşti…','1999-09-02 00:00:00');

INSERT INTO tracks(track_title, duration, album_id)
VALUES
('Don’t Know Why', 190, 1),
('Believer', 204, 1),
('Radioactive', 187, 2),
('It is Time', 240, 2),
('Plenka', 144, 3),
('807. from Past', 123, 3),
('Love Me', 244, 4),
('No Sleep', 268, 4),
('All Over Now', 256, 5),
('Catch Me If You Can', 278, 5),
('Animal Instinct', 212, 6),
('Promises', 328, 6),
('Fiesta de la noche', 244, 7),
('De ce plang chitarele', 253, 7),
('M-as trezi', 247, 8),
('Dar, unde esti...', 234, 8);

INSERT INTO collections(collecrion_title, years_of_issue)
VALUES
('After 300 seconds', '2025-01-01 00:00:00'),
('Before 300 seconds', '2024-01-01 00:00:00'),
('THE BEST', '2023-01-01 00:00:00'),
('Random', '2022-01-01 00:00:00');

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
