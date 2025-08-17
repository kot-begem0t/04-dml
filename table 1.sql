CREATE TABLE IF NOT EXISTS genres(
genre_id SERIAL PRIMARY KEY,
name_genre VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS musicians(
musician_id SERIAL PRIMARY KEY,
name_musician VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS albums(
album_id SERIAL PRIMARY KEY,
album_title VARCHAR(50) NOT NULL,
years_of_issue DATE
);

CREATE TABLE IF NOT EXISTS tracks(
track_id SERIAL PRIMARY KEY,
track_title VARCHAR(50) NOT NULL,
duratuon INT,
album_id INT REFERENCES albums(album_id)
);

CREATE TABLE IF NOT EXISTS collections(
collection_id SERIAL PRIMARY KEY,
collecrion_title VARCHAR(50),
years_of_issue DATE
);

CREATE TABLE IF NOT EXISTS genres_musicians(
genres_musicians_id SERIAL PRIMARY KEY,
genre_id INT REFERENCES genres(genre_id),
musician_id INT REFERENCES musicians(musician_id)
);

CREATE TABLE IF NOT EXISTS albums_musicians(
albums_musicians_id SERIAL PRIMARY KEY,
musician_id INT REFERENCES musicians(musician_id),
album_id INT REFERENCES albums(album_id)
);

CREATE TABLE IF NOT EXISTS collection_tracks(
collections_tracks_id SERIAL PRIMARY KEY,
track_id INT REFERENCES tracks(track_id),
collection_id INT REFERENCES collections(collection_id)
);