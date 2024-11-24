SELECT 
    users.name AS user_name,
    teams.name AS team_name
FROM users
LEFT JOIN teams ON users.team_id = teams.id;
