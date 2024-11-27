SELECT 
    teams.name AS team_name
    user_name AS user_name
FROM users
RIGHT JOIN teams ON users.team_id = teams.id;
-- WHERE user_name IS NULL;
