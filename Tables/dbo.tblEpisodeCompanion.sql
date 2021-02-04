SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[tblEpisodeCompanion] (
		[EpisodeCompanionId]     [int] NOT NULL,
		[EpisodeId]              [int] NOT NULL,
		[CompanionId]            [int] NOT NULL,
		CONSTRAINT [PK_tblEpisodeCompanion]
		PRIMARY KEY
		CLUSTERED
		([EpisodeCompanionId])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblEpisodeCompanion]
	WITH CHECK
	ADD CONSTRAINT [FK_tblEpisodeCompanion_tblEpisode]
	FOREIGN KEY ([EpisodeId]) REFERENCES [dbo].[tblEpisode] ([EpisodeId])
ALTER TABLE [dbo].[tblEpisodeCompanion]
	CHECK CONSTRAINT [FK_tblEpisodeCompanion_tblEpisode]

GO
ALTER TABLE [dbo].[tblEpisodeCompanion]
	WITH CHECK
	ADD CONSTRAINT [FK_tblEpisodeCompanion_tblCompanion]
	FOREIGN KEY ([CompanionId]) REFERENCES [dbo].[tblCompanion] ([CompanionId])
	ON DELETE CASCADE
	ON UPDATE CASCADE
ALTER TABLE [dbo].[tblEpisodeCompanion]
	CHECK CONSTRAINT [FK_tblEpisodeCompanion_tblCompanion]

GO
ALTER TABLE [dbo].[tblEpisodeCompanion] SET (LOCK_ESCALATION = TABLE)
GO
