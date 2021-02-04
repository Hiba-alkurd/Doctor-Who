SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW viewEpisodes AS
SELECT AuthorName, DoctorName, CompanionName, EnemyName
FROM tblEpisode e
Left Join tblAuthor a on a.AuthorId = e.AuthorId
Left Join tblDoctor d on d.DoctorId = e.DoctorId
Cross apply [dbo].[fnCompanions](e.EpisodeId) 
Cross apply [dbo].[fnEnemies](e.EpisodeId)
GO
