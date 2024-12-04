SELECT 
    name AS 姓名,
    salary AS 薪水
    team_id AS 部門ID
FROM users
ORDER BY team_id ASC, salary DESC
LIMIT 5;
-- ORDER BY salary ASC;
