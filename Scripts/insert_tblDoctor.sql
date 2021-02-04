USE [Doctor Who]
GO

INSERT INTO [dbo].[tblDoctor]
           ([DoctorNumber]
           ,[DoctorName]
           ,[BirthDate])
     VALUES
           (1
           ,'Doctor Who A.'
           ,GETDATE()),
		   (2
           ,'Doctor Who B.'
           ,GETDATE()),
		   (3
           ,'Doctor Who C.'
           ,GETDATE()),
		   (4
           ,'Doctor Who D.'
           ,GETDATE()),
		   (5
           ,'Doctor Who E.'
           ,GETDATE())

GO


