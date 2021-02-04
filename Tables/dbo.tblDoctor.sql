SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDoctor] (
		[DoctorId]         [int] IDENTITY(1, 1) NOT NULL,
		[DoctorNumber]     [int] NULL,
		[DoctorName]       [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
		[BirthDate]        [date] NULL,
		[FirstEpisode]     [date] NULL,
		[LastEpisode]      [date] NULL,
		CONSTRAINT [PK__tblDocto__2DC00EBF6C9EFC1B]
		PRIMARY KEY
		CLUSTERED
		([DoctorId])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblDoctor] SET (LOCK_ESCALATION = TABLE)
GO
