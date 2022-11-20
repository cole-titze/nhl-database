CREATE TABLE [dbo].[GameRoster]
(
    gameId INT NOT NULL,
    teamId INT NOT NULL,
    playerId INT NOT NULL,
    PRIMARY KEY(gameId),
    FOREIGN KEY (gameId) REFERENCES Game(id),
    FOREIGN KEY (teamId) REFERENCES Team(id),
    FOREIGN KEY (teamId) REFERENCES PlayerValue(id),
);