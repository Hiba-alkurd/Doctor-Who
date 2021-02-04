SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[tblEpisodeCompanion] (
		[EpisodeCompanionId]     [int] IDENTITY(1, 1) NOT NULL,
		[EpisodeID]              [int] NULL,
		[CompanionId]            [int] NULL,
		CONSTRAINT [PK__tblEpiso__774F3813F19CCA76]
		PRIMARY KEY
		CLUSTERED
		([EpisodeCompanionId])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblEpisodeCompanion]
	WITH CHECK
	ADD CONSTRAINT [FK_tblEpisodeCompanion_tblEpisode]
	FOREIGN KEY ([EpisodeID]) REFERENCES [dbo].[tblEpisode] ([EpisodeId])
	ON DELETE CASCADE
	ON UPDATE CASCADE
ALTER TABLE [dbo].[tblEpisodeCompanion]
	CHECK CONSTRAINT [FK_tblEpisodeCompanion_tblEpisode]

GO
ALTER TABLE [dbo].[tblEpisodeCompanion]
	WITH CHECK
	ADD CONSTRAINT [FK_tblEpisode_tblCompanion]
	FOREIGN KEY ([CompanionId]) REFERENCES [dbo].[tblCompanion] ([CompanionId])
	ON DELETE CASCADE
	ON UPDATE CASCADE
ALTER TABLE [dbo].[tblEpisodeCompanion]
	CHECK CONSTRAINT [FK_tblEpisode_tblCompanion]

GO
ALTER TABLE [dbo].[tblEpisodeCompanion] SET (LOCK_ESCALATION = TABLE)
GO
