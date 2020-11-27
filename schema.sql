CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username TEXT UNIQUE,
    password TEXT
);

CREATE TABLE exercises (
    id SERIAL PRIMARY KEY,
    heading TEXT,
    description TEXT,
    topic INTEGER,
    input_size INTEGER
);

CREATE TABLE tests (
    id SERIAL PRIMARY KEY,
    exercise_id INTEGER REFERENCES exercises,
    input TEXT,
    output INTEGER
);

CREATE TABLE submissions (
	id SERIAL PRIMARY KEY,
	user_id INTEGER REFERENCES users,
	submission TEXT,
	exercise_id INTEGER REFERENCES exercises,
	date TIMESTAMP,
	verdict TEXT
);

CREATE TABLE comments (
	id SERIAL PRIMARY KEY,
	comment TEXT,
	username TEXT,
	date TIMESTAMP,
	exercise_id INTEGER REFERENCES exercises
);
