CREATE TABLE IF NOT EXISTS genres(
genre_id SERIAL PRIMARY KEY,
name_genre VARCHAR(30) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS musicians(
musician_id SERIAL PRIMARY KEY,
name_musician VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS albums(
album_id SERIAL PRIMARY KEY,
album_title VARCHAR(50) NOT NULL,
years_of_issue DATE CHECK (years_of_issue >= '1900-01-01 00:00:00'),
UNIQUE (album_title, years_of_issue)
);

CREATE TABLE IF NOT EXISTS tracks(
track_id SERIAL PRIMARY KEY,
track_title VARCHAR(50) NOT NULL,
duration INT NOT NULL CHECK (duration < 600),
album_id INT REFERENCES albums(album_id),
CONSTRAINT albums FOREIGN KEY(album_id) REFERENCES albums(album_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS collections(
collection_id SERIAL PRIMARY KEY,
collection_title VARCHAR(50),
years_of_issue DATE CHECK (years_of_issue >= '1900-01-01 00:00:00')
);

CREATE TABLE IF NOT EXISTS genres_musicians(
genres_musicians_id SERIAL PRIMARY KEY,
genre_id INT REFERENCES genres(genre_id),
musician_id INT REFERENCES musicians(musician_id),
CONSTRAINT genres FOREIGN KEY(genre_id) REFERENCES genres(genre_id) ON DELETE CASCADE,
CONSTRAINT musicians FOREIGN KEY(musician_id) REFERENCES musicians(musician_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS albums_musicians(
albums_musicians_id SERIAL PRIMARY KEY,
musician_id INT REFERENCES musicians(musician_id),
album_id INT REFERENCES albums(album_id),
CONSTRAINT musicians FOREIGN KEY(musician_id) REFERENCES musicians(musician_id) ON DELETE CASCADE,
CONSTRAINT albums FOREIGN KEY(album_id) REFERENCES albums(album_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS collection_tracks(
collections_tracks_id SERIAL PRIMARY KEY,
track_id INT REFERENCES tracks(track_id),
collection_id INT REFERENCES collections(collection_id),
CONSTRAINT tracks FOREIGN KEY(track_id) REFERENCES tracks(track_id) ON DELETE CASCADE,
CONSTRAINT collections FOREIGN KEY(collection_id) REFERENCES collections(collection_id) ON DELETE CASCADE
);