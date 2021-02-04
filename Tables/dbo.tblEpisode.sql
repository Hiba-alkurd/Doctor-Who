SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEpisode] (
		[EpisodeId]         [int] NOT NULL,
		[SeriesNumber]      [int] NULL,
		[EpisodeNumber]     [int] NOT NULL,
		[EpisodeType]       [nchar](20) COLLATE Latin1_General_CI_AS NULL,
		[Title]             [nchar](50) COLLATE Latin1_General_CI_AS NULL,
		[EpisodeDate]       [date] NULL,
		[AuthorId]          [int] NOT NULL,
		[DoctorId]          [int] NOT NULL,
		[Notes]             [nchar](100) COLLATE Latin1_General_CI_AS NULL,
		CONSTRAINT [PK_tblEpisode]
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
ALTER TABLE [dbo].[tblEpisode]
	CHECK CONSTRAINT [FK_tblEpisode_tblAuthor]

GO
ALTER TABLE [dbo].[tblEpisode]
	WITH CHECK
	ADD CONSTRAINT [FK_tblEpisode_tblDoctor]
	FOREIGN KEY ([DoctorId]) REFERENCES [dbo].[tblDoctor] ([DoctorId])
ALTER TABLE [dbo].[tblEpisode]
	CHECK CONSTRAINT [FK_tblEpisode_tblDoctor]

GO
ALTER TABLE [dbo].[tblEpisode] SET (LOCK_ESCALATION = TABLE)
GO
