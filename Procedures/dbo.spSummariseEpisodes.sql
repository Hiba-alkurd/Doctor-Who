SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE spSummariseEpisodes 
AS BEGIN

SELECT e.CompanionName
From tblCompanion e
WHERE e.CompanionId in (
SELECT TOP(3) c.CompanionId
FROM tblEpisodeCompanion c
    INNER JOIN tblCompanion e ON c.CompanionId = e.CompanionId
GROUP BY c.CompanionId
ORDER BY Count(*) DESC
)

SELECT e.EnemyName
From tblEnemy e
WHERE e.EnemyId in (
SELECT TOP(3) c.EnemyId
FROM tblEpisodeEnemy c
    INNER JOIN tblEnemy e ON c.EnemyId = e.EnemyId
GROUP BY c.EnemyId
ORDER BY Count(*) DESC
)

END;
GO
