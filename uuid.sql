CREATE TABLE users (
    id UUID PRIMARY KEY DEFAULT get_random_uuid(),
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    salary INTEGER NULL
);
