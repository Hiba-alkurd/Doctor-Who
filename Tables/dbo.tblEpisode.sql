SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEpisode] (
		[EpisodeId]         [int] IDENTITY(1, 1) NOT NULL,
		[SeriesNumber]      [int] NULL,
		[EpisodeNumber]     [int] NULL,
		[EpisodeType]       [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
		[Title]             [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
		[EpisodeDate]       [date] NULL,
		[AuthorId]          [int] NULL,
		[DoctorId]          [int] NULL,
		[Notes]             [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
		CONSTRAINT [PK__tblEpiso__AC6609F559E53561]
		PRIMARY KEY
		CLUSTERED
		([EpisodeId])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblEpisode]
	WITH CHECK
	ADD CONSTRAINT [FK_tblEpisode_tblAuthor]
	FOREIGN KEY ([AuthorId]) REFERENCES [dbo].[tblAuthor] ([AuthorId])
	ON DELETE CASCADE
	ON UPDATE CASCADE
ALTER TABLE [dbo].[tblEpisode]
	CHECK CONSTRAINT [FK_tblEpisode_tblAuthor]

GO
ALTER TABLE [dbo].[tblEpisode]
	WITH CHECK
	ADD CONSTRAINT [FK_tblEpisode_tblDoctor]
	FOREIGN KEY ([DoctorId]) REFERENCES [dbo].[tblDoctor] ([DoctorId])
	ON DELETE CASCADE
	ON UPDATE CASCADE
ALTER TABLE [dbo].[tblEpisode]
	CHECK CONSTRAINT [FK_tblEpisode_tblDoctor]

GO
ALTER TABLE [dbo].[tblEpisode] SET (LOCK_ESCALATION = TABLE)
GO
