
CREATE FUNCTION fnCompanions ( @EpisodeId int)
RETURNS TABLE 
AS
RETURN (

    SELECT [CompanionName]
	FROM [dbo].[tblCompanion] c
	INNER JOIN [dbo].[tblEpisodeCompanion] e ON c.CompanionId = e.CompanionId AND e.EpisodeID = @EpisodeId
	)
	
 









