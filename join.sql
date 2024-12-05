-- 建立部門資料表
CREATE TABLE teams (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50)
);

-- 建立員工資料表
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    salary INTEGER,
    team_id INTEGER,              -- 允許 NULL，代表未分配部門的員工
    FOREIGN KEY (team_id) REFERENCES teams(id)
);

-- 新增部門資料
INSERT INTO teams (name) VALUES 
    ('開發部'),
    ('人事部'),
    ('行銷部'),         -- 新成立還沒有人的部門
    ('研發部');         -- 新成立還沒有人的部門

-- 新增員工資料
INSERT INTO users (name, salary, team_id) VALUES 
    ('張小明', 45000, 1),
    ('王大明', 48000, 1),
    ('李小華', 52000, 2),
    ('陳小玉', 55000, 2),
    ('林小豪', 47000, 1),
    ('陳小明', 42000, NULL),     -- 新進員工，還沒分配部門
    ('王小美', 41000, NULL);     -- 新進員工，還沒分配部門


-- INNER JOIN
SELECT 
    users.id,
    users.name AS 姓名,
    users.salary,
    teams.name AS 部門
FROM users
INNER JOIN teams ON users.team_id = teams.id;
