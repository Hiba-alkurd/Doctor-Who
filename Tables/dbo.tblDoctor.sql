SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDoctor] (
		[DoctorId]             [int] NOT NULL,
		[DoctorNumber]         [int] NOT NULL,
		[DoctorName]           [nchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
		[BirthDate]            [date] NULL,
		[FirstEpisodeDate]     [date] NULL,
		[LastEpisodeDate]      [date] NULL,
		CONSTRAINT [PK_tblDoctor]
		PRIMARY KEY
		CLUSTERED
		([DoctorId])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblDoctor] SET (LOCK_ESCALATION = TABLE)
GO
