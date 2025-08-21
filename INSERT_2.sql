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
('Dar, unde esti...', 234, 8);

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
(7, 2),
(8, 3),
(9, 3),
(10, 3),
(6, 4),
(7, 4);


INSERT INTO collection_tracks(track_id, collection_id)
VALUES
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(2, 3),
(4, 3),
(5, 3),
(6, 3),
(1, 4),
(6, 4),
(9, 4),
(11, 4);
