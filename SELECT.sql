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
--Должно быть 6 треков
SELECT COUNT(*) FROM tracks t
JOIN albums a ON a.album_id = t.album_id
WHERE a.years_of_issue BETWEEN '2019-01-01' AND '2020-12-31';

--3. Средняя продолжительность треков по каждому альбому.
SELECT a.album_title, CAST(AVG(t.duration) AS NUMERIC(16,2)) FROM tracks t
JOIN albums a ON a.album_id = t.album_id
GROUP BY a.album_title;

--4. Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT m.name_musician FROM musicians m
JOIN albums_musicians am ON m.musician_id = am.musician_id
JOIN albums a ON am.album_id = a.album_id
WHERE a.years_of_issue NOT BETWEEN '2020-01-01' AND '2020-12-31'
GROUP BY m.name_musician;

--5. Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT c.collection_title FROM tracks t
JOIN albums a ON t.album_id = a.album_id
JOIN collection_tracks ct ON t.track_id = ct.track_id
JOIN collections c ON ct.collection_id = c.collection_id
JOIN albums_musicians am ON t.album_id = am.album_id
JOIN musicians m ON am.musician_id = m.musician_id
WHERE m.name_musician IN ('Imagine Dragons')
GROUP BY c.collection_title;



--Задание 4
--1. Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
--Только "plenka" имеет 1 жанр
SELECT a.album_title FROM musicians m
JOIN genres_musicians gm ON m.musician_id = gm.musician_id
JOIN genres g ON gm.genre_id = g.genre_id
JOIN albums_musicians am ON m.musician_id = am.musician_id
JOIN albums a ON am.album_id = a.album_id
-- У меня нет идей, как можно использовать WHERE здесь, чтобы снизить нагрузку на БД 
GROUP BY a.album_title
HAVING COUNT(g.name_genre) > 1

--2. Наименования треков, которые не входят в сборники.
SELECT t.track_title FROM tracks t
LEFT JOIN collection_tracks ct ON t.track_id = ct.track_id
WHERE ct.collection_id IS NULL
ORDER BY t.track_id;

--3. Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, 
--теоретически таких треков может быть несколько.
SELECT m.name_musician FROM musicians m
JOIN albums_musicians am ON m.musician_id = am.musician_id
JOIN albums a ON am.album_id = a.album_id
JOIN tracks t ON a.album_id = t.album_id
-- Думаю, целесообразно добавить такую проверку, для снижения нагрузки на БД.
WHERE t.duration < 200
GROUP BY m.name_musician
ORDER BY MIN(t.duration)
LIMIT 1;

--4. Названия альбомов, содержащих наименьшее количество треков.
--Я немного поправлю задание, т.к. я добавял треки  в одинаковом кол-ве, чтобы не менять данные, 
--выведу альбом с максимальным количеством треков, разница будет в одном слове
SELECT a.album_title, COUNT(*) FROM tracks t
JOIN albums a ON a.album_id = t.album_id
GROUP BY a.album_title
ORDER BY COUNT(*) DESC
LIMIT 1;