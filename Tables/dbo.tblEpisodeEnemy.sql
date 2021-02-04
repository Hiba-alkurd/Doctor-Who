SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[tblEpisodeEnemy] (
		[EpisodeEnemyId]     [int] NOT NULL,
		[EpisodeId]          [int] NOT NULL,
		[EnemyId]            [int] NOT NULL,
		CONSTRAINT [PK_tblEpisodeEnemy]
		PRIMARY KEY
		CLUSTERED
		([EpisodeEnemyId])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblEpisodeEnemy]
	WITH CHECK
	ADD CONSTRAINT [FK_tblEpisodeEnemy_tblEpisode]
	FOREIGN KEY ([EpisodeId]) REFERENCES [dbo].[tblEpisode] ([EpisodeId])
	ON DELETE CASCADE
	ON UPDATE CASCADE
ALTER TABLE [dbo].[tblEpisodeEnemy]
	CHECK CONSTRAINT [FK_tblEpisodeEnemy_tblEpisode]

GO
ALTER TABLE [dbo].[tblEpisodeEnemy]
	WITH CHECK
	ADD CONSTRAINT [FK_tblEpisodeEnemy_tblEnemy]
	FOREIGN KEY ([EnemyId]) REFERENCES [dbo].[tblEnemy] ([EnemyId])
	ON DELETE CASCADE
	ON UPDATE CASCADE
ALTER TABLE [dbo].[tblEpisodeEnemy]
	CHECK CONSTRAINT [FK_tblEpisodeEnemy_tblEnemy]

GO
ALTER TABLE [dbo].[tblEpisodeEnemy] SET (LOCK_ESCALATION = TABLE)
GO
