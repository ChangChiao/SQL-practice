-- task 1 哪個欄位適合變成外來鍵？
-- | 學生編號 | 姓名 | 班級 | 性別 | 年齡 |
-- |---------|------|------|------|------|
-- | 1 | 小明 | 三年一班 | 男 | 8 |
-- | 2 | 小華 | 三年二班 | 女 | 9 |
-- | 3 | 小美 | 三年一班 | 男 | 8 |
-- | 4 | 小強 | 三年一班 | 女 | 8 |
-- | 5 | 小智 | 三年二班 | 男 | 9 |


CREATE TABLE classes (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

INSERT INTO classes (name) VALUES 
    ('三年一班'),
    ('三年二班');

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    gender VARCHAR(10),
    age INTEGER,
    class_id INTEGER,
    FOREIGN KEY (class_id) REFERENCES classes (id)
);

INSERT INTO students (name, class_id, gender, age) VALUES 
('小明', 1, '男', 8),
('小華', 2, '女', 9),
('小美', 1, '男', 8),
('小強', 1, '女', 8),
('小智', 2, '男', 9);





-- task 2 第一題的延伸，多了一個老師
