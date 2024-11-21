CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL, -- 不可為空
    email VARCHAR(100) NOT NULL
    salary INTEGER null -- 預設值為 null
);

INSERT INTO users (name, email) 
VALUES ('小明', '123@gmail.com');
