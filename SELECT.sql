--Задание 2
--1. Название и продолжительность самого длительного трека.
SELECT track_title, duration FROM tracks
ORDER BY duration DESC
LIMIT 1;

SELECT track_title, duration FROM tracks
WHERE duration = (SELECT MAX(duration) FROM tracks)
LIMIT 1;

--2. Название треков, продолжительность которых не менее 3,5 минут.
SELECT track_title, duration FROM tracks
WHERE duration >= 230
ORDER BY duration;

--3. Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT collection_title, years_of_issue FROM collections
WHERE years_of_issue BETWEEN '2018-01-01' AND '2020-12-31'
ORDER BY years_of_issue;

--4. Исполнители, чьё имя состоит из одного слова.
SELECT name_musician FROM musicians
WHERE name_musician NOT LIKE ('% %') AND name_musician NOT LIKE ('%-%'); --Буду считать, что "O-zone" это не одно слово

--5. Название треков, которые содержат слово «мой» или «my».
SELECT track_title FROM tracks
WHERE track_title LIKE ('%мой%') OR track_title LIKE ('%my%') OR track_title LIKE ('%My%'); 
--Я дополнительно добавил проверку на "My", потому что я специально добавил треки под это задание. Ну, хотелось бы их видеть:)


--Задание 3
--1. Количество исполнителей в каждом жанре.
SELECT g.name_genre, COUNT(gm.musician_id) FROM genres_musicians gm
JOIN genres g ON gm.genre_id = g.genre_id
GROUP BY g.name_genre
ORDER BY g.name_genre;

--2. Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT * FROM tracks
;

SELECT * FROM albums
WHERE years_of_issue BETWEEN '2019-01-01' AND '2020-12-31'
;

SELECT a.album_title COUNT(t.track_title) FROM tracks t
JOIN albums a ON a.alubm_id = t.album_id
GROUP BY a.album_title
;
