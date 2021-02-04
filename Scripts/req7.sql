CREATE FUNCTION fnEnemies ( @EpisodeId int)
RETURNS TABLE 
AS
RETURN (

    SELECT [EnemyName]
	FROM [dbo].[tblEnemy] c
	INNER JOIN [dbo].[tblEpisodeEnemy] e ON c.EnemyId = e.EnemyId AND e.EpisodeID = @EpisodeId
	)