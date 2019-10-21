USE baseball;

INSERT INTO teams

    (location, mascot, abbreviation, league, division)

VALUES

    ("Pittsburgh", "Pirates", "PIT", "NL", "Central");


INSERT INTO games

    (homeTeamId, awayTeamId, homeScore, awayScore, startTime)
VALUES


    ((SELECT id
        from teams
        where abbreviation = "PIT"), (SELECT id
        from teams
        where abbreviation = "ATL"), "6", "1", "2019-06-06 12:35:00");


INSERT INTO players

    (firstName, lastName, position, throws, hits, teamId)

VALUES



    ("Chris", "Archer", "SP", "R", "R", (SELECT id
        FROM teams
        WHERE abbreviation = "PIT"));


INSERT INTO hittersStats

    (playerId, gameId, teamId, atBats, runs, hits, doubles, triples, homeRuns, runsBattedIn, walks, strikeouts, steals)

VALUES

    ((SELECT id
        FROM players
        WHERE firstName = 'Josh' AND lastName = 'Bell' AND position = '1B'), (SELECT id
        FROM games
        WHERE startTime = '2019-06-06 12:35:00' AND homeTeamId = (SELECT id
            FROM teams
            WHERE abbreviation = 'PIT') AND awayTeamId = (SELECT id
            FROM teams
            WHERE abbreviation = 'ATL')), (SELECT id
        FROM teams
        WHERE abbreviation = 'PIT'), 4, 2, 3, 3, 0, 0, 2, 0, 0, 0);


INSERT INTO pitchingStats

    (playerId, gameId, teamId, win, innings, hits, runs, earnedRuns, walks, strikeOuts)

VALUES

    ((SELECT id
        FROM players
        WHERE firstName = 'Felipe' AND lastName = 'Vazquez' AND position = 'RP' AND teamId = (SELECT id
            FROM teams
            WHERE abbreviation = 'PIT')), (SELECT id
        FROM games
        WHERE startTime = '2019-06-06 12:35:00' AND homeTeamId = (SELECT id
            FROM teams
            WHERE abbreviation = 'PIT') AND awayTeamId = (SELECT id
            FROM teams
            WHERE abbreviation ='ATL')), (SELECT id
        FROM teams
        WHERE abbreviation = 'PIT'), 1, 1.1, 1, 0, 0, 2, 1);
