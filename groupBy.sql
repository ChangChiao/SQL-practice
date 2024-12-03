SELECT 
    team_id AS 部門ID,
    COUNT(*) AS 人數
FROM users
GROUP BY team_id;


SELECT 
    teams.name AS 部門名稱,
    COUNT(*) AS 人數
FROM users
JOIN teams ON users.team_id = teams.id
GROUP BY teams.name;


SELECT 
    teams.name AS 部門名稱,
    SUM(users.salary) AS 總薪資
    AVG(users.salary) AS 平均薪資
    MAX(users.salary) AS 最高薪資
    MIN(users.salary) AS 最低薪資
FROM users
JOIN teams ON users.team_id = teams.id
GROUP BY teams.name;
