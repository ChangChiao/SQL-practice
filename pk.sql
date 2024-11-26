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


-- | 學生編號 | 姓名 | 班級 | 班級老師 | 性別 | 年齡 |
-- |----------|------|------|----------|------|------|
-- | 1 | 小明 | 三年一班 | 廖清杰 | 男 | 8 |
-- | 2 | 小華 | 三年二班 | 卡斯伯 | 女 | 9 |
-- | 3 | 小美 | 三年一班 | 春理 | 男 | 8 |
-- | 4 | 小強 | 三年一班 | 愛可 | 女 | 8 |
-- | 5 | 小智 | 三年二班 | 李燕容 | 男 | 9 |

CREATE TABLE teachers (
    id SERIAL PRIMARY KEY,
    name VARCHAR
);

INSERT INTO
  teachers (name)
VALUES
  ('廖洧杰'),
  ('卡斯伯'),
  ('查理'),
  ('麥可'),
  ('李燕容');

ALTER TABLE students
ADD COLUMN teacher_id INTEGER,
ADD FOREIGN KEY (teacher_id) REFERENCES teachers (id);

UPDATE students
    teacher_id = CASE
    WHEN id = 1 THEN 1
    WHEN id = 2 THEN 2
    WHEN id = 3 THEN 3
    WHEN id = 4 THEN 4
    WHEN id = 5 THEN 5
    END;
WHERE id IN (1, 2, 3, 4, 5);


SELECT 
    students.id AS 學生編號,
    students.name AS 姓名,
    classes.name AS 班級,
    students.gender AS 性別,
    students.age AS 年齡,
    teachers.name AS 班級老師
FROM students, classes, teachers
WHERE 
    students.class_id = classes.id 
AND 
    students.teacher_id = teachers.id;
