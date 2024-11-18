CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    team_name VARCHAR(100) NULL,
    salary INTEGER NULL
);

INSERT INTO users (name, email, team_name, salary) VALUES

-- 完整資料的員工
('張小明', 'zhang@example.com', '開發部', 45000),
('王大明', 'wang@example.com', '行銷部', 48000),

-- 還沒分配部門，但已有薪水
('李小華', 'lee@example.com', NULL, 42000),
('陳小玲', 'chen@example.com', NULL, 44000),

-- 已分配部門，但還沒定薪水
('林小美', 'lin@example.com', '人事部', NULL),
('周小威', 'zhou@example.com', '開發部', NULL),

-- 新進員工，部門和薪水都還沒設定
('劉小安', 'liu@example.com', NULL, NULL),
('黃小凱', 'huang@example.com', NULL, NULL);

SELECT 
    id,
    name,
    email,
    COALESCE(team_name, '未分配') as team_name,
    COALESCE(salary, 0) as salary
FROM users;
