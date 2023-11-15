CREATE TABLE users(
    id SERIAL PRIMARY KEY NOT NULL,
    username varchar(255) UNIQUE NOT NULL,
    email varchar(255) UNIQUE NOT NULL,
    first_name varchar(255) NOT NULL,
    last_name varchar(255) NOT NULL,
    password varchar(255) NOT NULL
)