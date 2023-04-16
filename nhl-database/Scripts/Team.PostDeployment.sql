﻿/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
IF NOT EXISTS (SELECT * FROM dbo.TEAM)
	BEGIN
	INSERT INTO Team(id, abbreviation, locationName, teamName, logoUri)
	VALUES(1, 'NJD', 'New Jersey', 'Devils', 'https://nhllogos.blob.core.windows.net/nhl-logos/Devils.png'),
	(2, 'NYI', 'New York', 'Islanders', 'https://nhllogos.blob.core.windows.net/nhl-logos/Islanders.png'),
	(3, 'NYR', 'New York', 'Rangers', 'https://nhllogos.blob.core.windows.net/nhl-logos/Rangers.png'),
	(4, 'PHI', 'Philadelphia', 'Flyers', 'https://nhllogos.blob.core.windows.net/nhl-logos/Flyers.png'),
	(5, 'PIT', 'Pittsburgh', 'Penguins', 'https://nhllogos.blob.core.windows.net/nhl-logos/Penguins.png'),
	(6, 'BOS', 'Boston', 'Bruins', 'https://nhllogos.blob.core.windows.net/nhl-logos/Bruins.png'),
	(7, 'BUF', 'Buffalo', 'Sabres', 'https://nhllogos.blob.core.windows.net/nhl-logos/Sabres.png'),
	(8, 'MTL', 'Montréal', 'Canadiens', 'https://nhllogos.blob.core.windows.net/nhl-logos/Canadiens.png'),
	(9, 'OTT', 'Ottawa', 'Senators', 'https://nhllogos.blob.core.windows.net/nhl-logos/Senators.png'),
	(10, 'TOR', 'Toronto', 'Maple Leafs', 'https://nhllogos.blob.core.windows.net/nhl-logos/MapleLeafs.png'),
	(11, 'ATL', 'Atlanta', 'Thrashers', 'https://nhllogos.blob.core.windows.net/nhl-logos/Thrashers.png'),
	(12, 'CAR', 'Carolina', 'Hurricanes', 'https://nhllogos.blob.core.windows.net/nhl-logos/Hurricanes.png'),
	(13, 'FLA', 'Florida', 'Panthers', 'https://nhllogos.blob.core.windows.net/nhl-logos/Panthers.png'),
	(14, 'TBL', 'Tampa Bay', 'Lightning', 'https://nhllogos.blob.core.windows.net/nhl-logos/Lightning.png'),
	(15, 'WSH', 'Washington', 'Capitals', 'https://nhllogos.blob.core.windows.net/nhl-logos/Capitals.png'),
	(16, 'CHI', 'Chicago', 'Blackhawks', 'https://nhllogos.blob.core.windows.net/nhl-logos/Blackhawks.png'),
	(17, 'DET', 'Detroit', 'Red Wings', 'https://nhllogos.blob.core.windows.net/nhl-logos/RedWings.png'),
	(18, 'NSH', 'Nashville', 'Predators', 'https://nhllogos.blob.core.windows.net/nhl-logos/Predators.png'),
	(19, 'STL', 'St. Louis', 'Blues', 'https://nhllogos.blob.core.windows.net/nhl-logos/Blues.png'),
	(20, 'CGY', 'Calgary', 'Flames', 'https://nhllogos.blob.core.windows.net/nhl-logos/Flames.png'),
	(21, 'COL', 'Colorado', 'Avalanche', 'https://nhllogos.blob.core.windows.net/nhl-logos/Avalanche.png'),
	(22, 'EDM', 'Edmonton', 'Oilers', 'https://nhllogos.blob.core.windows.net/nhl-logos/Oilers.png'),
	(23, 'VAN', 'Vancouver', 'Canucks', 'https://nhllogos.blob.core.windows.net/nhl-logos/Canucks.png'),
	(24, 'ANA', 'Anaheim', 'Ducks', 'https://nhllogos.blob.core.windows.net/nhl-logos/Ducks.png'),
	(25, 'DAL', 'Dallas', 'Stars', 'https://nhllogos.blob.core.windows.net/nhl-logos/Stars.png'),
	(26, 'LAK', 'Los Angeles', 'Kings', 'https://nhllogos.blob.core.windows.net/nhl-logos/Kings.png'),
	(27, 'PHX', 'Phoenix', 'Phoenix Coyotes', 'https://nhllogos.blob.core.windows.net/nhl-logos/PhoenixCoyotes.png'),
	(28, 'SJS', 'San Jose', 'Sharks', 'https://nhllogos.blob.core.windows.net/nhl-logos/Sharks.png'),
	(29, 'CBJ', 'Columbus', 'Blue Jackets', 'https://nhllogos.blob.core.windows.net/nhl-logos/BlueJackets.png'),
	(30, 'MIN', 'Minnesota', 'Wild', 'https://nhllogos.blob.core.windows.net/nhl-logos/Wild.png'),
	(31, 'MNS', 'Minnesota', 'North Stars', 'https://nhllogos.blob.core.windows.net/nhl-logos/NorthStars.png'),
	(32, 'QUE', 'Quebec', 'Nordiques', 'https://nhllogos.blob.core.windows.net/nhl-logos/Nordiques.png'),
	(33, 'WIN', 'Winnipeg', 'Jets (1979)', 'https://nhllogos.blob.core.windows.net/nhl-logos/Jets1979.png'),
	(34, 'HFD', 'Hartford', 'Whalers', 'https://nhllogos.blob.core.windows.net/nhl-logos/Whalers.png'),
	(35, 'CLR', 'Colorado', 'Rockies', 'https://nhllogos.blob.core.windows.net/nhl-logos/Rockies.png'),
	(36, 'SEN', 'Ottawa', 'Senators (1917)', 'https://nhllogos.blob.core.windows.net/nhl-logos/Senators1917.png'),
	(37, 'HAM', 'Hamilton', 'Tigers', 'https://nhllogos.blob.core.windows.net/nhl-logos/Tigers.png'),
	(38, 'PIR', 'Pittsburgh', 'Pirates', 'https://nhllogos.blob.core.windows.net/nhl-logos/Pirates.png'),
	(39, 'QUA', 'Philadelphia', 'Quakers', 'https://nhllogos.blob.core.windows.net/nhl-logos/Quakers.png'),
	(40, 'DCG', 'Detroit', 'Cougars', 'https://nhllogos.blob.core.windows.net/nhl-logos/Cougars.png'),
	(41, 'MWN', 'Montreal', 'Wanderers', 'https://nhllogos.blob.core.windows.net/nhl-logos/Wanderers.png'),
	(42, 'QBD', 'Quebec', 'Bulldogs', 'https://nhllogos.blob.core.windows.net/nhl-logos/Bulldogs.png'),
	(43, 'MMR', 'Montreal', 'Maroons', 'https://nhllogos.blob.core.windows.net/nhl-logos/Maroons.png'),
	(44, 'NYA', 'New York', 'Americans', 'https://nhllogos.blob.core.windows.net/nhl-logos/Americans.png'),
	(45, 'SLE', 'St. Louis', 'Eagles', 'https://nhllogos.blob.core.windows.net/nhl-logos/Eagles.png'),
	(46, 'OAK', 'Oakland', 'Seals', 'https://nhllogos.blob.core.windows.net/nhl-logos/Seals.png'),
	(47, 'AFM', 'Atlanta', 'Flames', 'https://nhllogos.blob.core.windows.net/nhl-logos/AtlantaFlames.png'),
	(48, 'KCS', 'Kansas City', 'Scouts', 'https://nhllogos.blob.core.windows.net/nhl-logos/Scouts.png'),
	(49, 'CBN', 'Cleveland', 'Barons', 'https://nhllogos.blob.core.windows.net/nhl-logos/Barons.png'),
	(50, 'DFL', 'Detroit', 'Falcons', 'https://nhllogos.blob.core.windows.net/nhl-logos/Falcons.png'),
	(51, 'BRK', 'Brooklyn', 'Americans', 'https://nhllogos.blob.core.windows.net/nhl-logos/BrooklynAmericans.png'),
	(52, 'WPG', 'Winnipeg', 'Jets', 'https://nhllogos.blob.core.windows.net/nhl-logos/Jets.png'),
	(53, 'ARI', 'Arizona', 'Coyotes', 'https://nhllogos.blob.core.windows.net/nhl-logos/Coyotes.png'),
	(54, 'VGK', 'Vegas', 'Golden Knights', 'https://nhllogos.blob.core.windows.net/nhl-logos/GoldenKnights.png'),
	(55, 'SEA', 'Seattle', 'Kraken', 'https://nhllogos.blob.core.windows.net/nhl-logos/Kraken.png'),
	(56, 'CSE', 'California', 'Golden Seals', 'https://nhllogos.blob.core.windows.net/nhl-logos/GoldenSeals.png'),
	(57, 'TAN', 'Toronto', 'Arenas', 'https://nhllogos.blob.core.windows.net/nhl-logos/Arenas.png'),
	(58, 'TSP', 'Toronto', 'St. Patricks', 'https://nhllogos.blob.core.windows.net/nhl-logos/StPats.png')
END