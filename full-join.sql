
SELECT 
    teams.name AS team_name,
    users.name AS user_name
FROM users
FULL JOIN teams ON users.team_id = teams.id;
