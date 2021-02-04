USE [Doctor Who]
GO

INSERT INTO [dbo].[tblEpisode]
           ([SeriesNumber]
           ,[EpisodeNumber]
           ,[EpisodeType]
           ,[Title]
           ,[EpisodeDate]
           ,[AuthorId]
           ,[DoctorId]
           )
     VALUES
           (1
           ,1
           ,'action'
           ,'we are all gonna die'
           ,getdate()
           ,1
           ,5),

		   (1
           ,2
           ,'action'
           ,'we are all gonna die2'
           ,DATEADD(day, 1,getdate())
           ,3
           ,5),

		   (1
           ,3
           ,'action'
           ,'we are all gonna die3'
           ,DATEADD(day, 2,getdate())
           ,3
           ,5),

		   (1
           ,4
           ,'action'
           ,'we are all gonna die4'
           ,DATEADD(day, 3,getdate())
           ,2
           ,5),

		   (1
           ,5
           ,'action'
           ,'we are all gonna die5'
           ,DATEADD(day, 4,getdate())
           ,2
           ,5)
GO


