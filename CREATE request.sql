CREATE TABLE IF NOT EXISTS singer (
	singer_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);
CREATE TABLE IF NOT EXISTS genre (
	genre_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);
CREATE TABLE IF NOT EXISTS singers_genres(
	singer_id INTEGER REFERENCES singer(singer_id),
	genre_id INTEGER REFERENCES genre(genre_id),
	CONSTRAINT pk_singergenre PRIMARY KEY (singer_id, genre_id)
);
CREATE TABLE IF NOT EXISTS album(
	album_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	year INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS singer_album(
	singer_id INTEGER REFERENCES singer(singer_id),
	album_id INTEGER REFERENCES album(album_id),
	CONSTRAINT pk_singlealbum PRIMARY KEY (singer_id, album_id)
);
CREATE TABLE IF NOT EXISTS track(
	track_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	duration INTEGER NOT NULL CHECK (duration < 3600),
	albom_id INTEGER REFERENCES album(album_id)
);
CREATE TABLE IF NOT EXISTS collection(
	collection_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	year INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS collection_track(
	collection_id INTEGER REFERENCES collection(collection_id),
	track_id INTEGER REFERENCES track(track_id),
	CONSTRAINT pk_collectiontrack PRIMARY KEY (collection_id, track_id)
);
