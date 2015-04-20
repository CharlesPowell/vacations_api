CREATE DATABASE vacations_db;
\c vacations_db;

CREATE TABLE users (id SERIAL PRIMARY KEY, name VARCHAR(255));
CREATE TABLE locations (id SERIAL PRIMARY KEY, name VARCHAR(255));

CREATE TABLE visits (id SERIAL PRIMARY KEY, user_id INTEGER REFERENCES users(id), location_id INTEGER REFERENCES locations(id));
