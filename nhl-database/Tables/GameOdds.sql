CREATE TABLE [dbo].[GameOdds]
(
    gameId INT NOT NULL,
    draftKingsHomeOdds FLOAT NOT NULL DEFAULT 0,
    draftKingsAwayOdds FLOAT NOT NULL DEFAULT 0,
    myBookieClosingVegasHomeOdds FLOAT NOT NULL DEFAULT 0,
    myBookieClosingVegasAwayOdds FLOAT NOT NULL DEFAULT 0,
    betMgmHomeOdds FLOAT NOT NULL DEFAULT 0,
    betMgmAwayOdds FLOAT NOT NULL DEFAULT 0,
    modelHomeOdds FLOAT NOT NULL DEFAULT 0,
    modelAwayOdds FLOAT NOT NULL DEFAULT 0,
    PRIMARY KEY(gameId),
    FOREIGN KEY (gameId) REFERENCES Game(id),
);