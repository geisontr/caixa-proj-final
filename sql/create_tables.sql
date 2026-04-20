CREATE TABLE movies (
    movie_id      INTEGER PRIMARY KEY,
    title         TEXT,
    genre         TEXT,
    release_year  INTEGER,
    duration_min  INTEGER
);
CREATE TABLE users (
    user_id      INTEGER PRIMARY KEY,
    name         TEXT,
    email        TEXT,
    country      TEXT,
    signup_date  DATE
);
CREATE TABLE ratings (
    rating_id    SERIAL PRIMARY KEY,
    user_id      INTEGER,
    movie_id     INTEGER,
    rating       NUMERIC(2,1),
    rating_date  DATE,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);
