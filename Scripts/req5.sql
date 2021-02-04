
USE [Doctor Who]
GO

DELETE FROM [dbo].[tblCompanion]
      WHERE CompanionId not in (
	  SELECT CompanionId 
	  FROM tblEpisodeCompanion
	  )
GO

