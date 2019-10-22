USE baseball;

SELECT CONCAT(firstName, ' ', lastName) AS FullName, p.position, p.hits, p.throws, t.abbreviation
FROM players p JOIN teams t ON p.teamId = t.id
WHERE t.mascot = "Red Sox";

SELECT CONCAT(firstName, ' ', lastName) AS FullName, p.position, t.abbreviation, hs.homeRuns
FROM players p JOIN teams t ON p.teamId = t.id
    JOIN hittersStats hs ON p.id = hs.playerId
    JOIN games g ON hs.gameId = g.id
WHERE g.startTime LIKE "2019-06-06%"
ORDER BY hs.homeRuns DESC
LIMIT 5;


SELECT CONCAT(firstName, ' ', lastName) AS FullName, t.abbreviation, (ps.earnedRuns/ ps.innings) AS ERA FROM players p
JOIN teams t ON p.teamId = t
.id
JOIN pitcherStats ps ON p.id = ps.playerId
JOIN games g ON ps.gameID = g.id
WHERE g.startTime LIKE "2019-06-06%" AND ps.innings >= 4
ORDER BY
(ps.earnedRuns / ps.innings) ASC
LIMIT 5;

SELECT CONCAT(firstName, ' ', lastName) AS FullName, p.position, t.abbreviation, hs.doubles,
g.startTime, home.abbreviation AS homeTeam, away.abbreviation AS awayTeam
FROM players p JOIN teams t ON p.teamId = t.id
    JOIN hittersStats hs ON p.id = hs.playerId
    JOIN games g ON hs.gameId = g.id
    JOIN teams home ON g.homeTeamId = home.id
    JOIN teams home ON g.awayTeamId = away.id
WHERE g.startTime LIKE "2019-06-06%"
ORDER BY hs.doubles DESC
LIMIT 1;
