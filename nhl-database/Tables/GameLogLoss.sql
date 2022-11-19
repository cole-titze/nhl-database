CREATE TABLE [dbo].[LogLossGame]
(
    gameId INT NOT NULL,
    bovadaLogLoss FLOAT NOT NULL DEFAULT 0,
    myBookieLogLoss FLOAT NOT NULL DEFAULT 0,
    pinnacleLogLoss FLOAT NOT NULL DEFAULT 0,
    betOnlineLogLoss FLOAT NOT NULL DEFAULT 0,
    bet365LogLoss FLOAT NOT NULL DEFAULT 0,
    modelLogLoss FLOAT NOT NULL DEFAULT 0,
    PRIMARY KEY(gameId),
    FOREIGN KEY (gameId) REFERENCES Game(id),
);