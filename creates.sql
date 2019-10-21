CREATE DATABASE baseball;

USE baseball;

CREATE TABLE teams
(
  id INT
  AUTO_INCREMENT,
  location VARCHAR
  (255),
  mascot VARCHAR
  (255),
  abbreviation VARCHAR
  (3),
  league ENUM
  ('AL', 'NL'),
  division ENUM
  ('East', 'Central', 'West'),
  PRIMARY KEY
  (id),
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON
  UPDATE CURRENT_TIMESTAMP,
  deletedAt DATETIME
  );

  CREATE TABLE games
  (
    id INT
    AUTO_INCREMENT,
  homeTeamId INT,
  awayTeamId INT,
  homeScore INT,
  awayScore INT,
  startTime TIMESTAMP,
  PRIMARY KEY
    (id),
  FOREIGN KEY
    (homeTeamId) REFERENCES teams
    (id),
  FOREIGN KEY
    (awayTeamId) REFERENCES teams
    (id),
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON
    UPDATE CURRENT_TIMESTAMP,
  deletedAt DATETIME
    );

    CREATE TABLE players
    (
      id INT
      AUTO_INCREMENT,
  firstName VARCHAR
      (255),
  lastName VARCHAR
      (255),
  position ENUM
      ('SP', '1B', 'CF', '3B', 'SS', 'RF', 'LF', 'C', 'RP', '2B', 'DH'),
  throws ENUM
      ('R','L','B'),
  hits ENUM
      ('R','L','B'),
  teamId INT,
  PRIMARY KEY
      (id),
  FOREIGN KEY
      (teamId) REFERENCES teams
      (id),
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON
      UPDATE CURRENT_TIMESTAMP,
  deletedAt DATETIME
      );

      CREATE TABLE hittersStats
      (
        playerId INT,
        gameId INT,
        teamId INT,
        atBats INT,
        runs INT,
        hits INT,
        doubles INT,
        triples INT,
        homeRuns INT,
        runsBattedIn INT,
        walks INT,
        strikeOuts INT,
        steals INT,
        PRIMARY KEY(playerId, gameId),
        FOREIGN KEY (playerId) REFERENCES players(id),
        FOREIGN KEY (gameId) REFERENCES games(id),
        FOREIGN KEY (teamId) REFERENCES teams(id),
        createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
        updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP
        ON
        UPDATE CURRENT_TIMESTAMP,
  deletedAt DATETIME
        );

        CREATE TABLE pitcherStats
        (
          playerId INT,
          gameId INT,
          teamId INT,
          win TINYINT,
          innings DECIMAL(3,1),
          hits INT,
          runs INT,
          earnedRuns INT,
          walks INT,
          strikeOuts INT,
          PRIMARY KEY(playerId, gameId),
          FOREIGN KEY (playerId) REFERENCES players(id),
          FOREIGN KEY (gameId) REFERENCES games(id),
          FOREIGN KEY (teamId) REFERENCES teams(id),
          createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
          updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP
          ON
          UPDATE CURRENT_TIMESTAMP,
  deletedAt DATETIME
          );

