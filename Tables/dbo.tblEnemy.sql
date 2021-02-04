SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEnemy] (
		[EnemyId]         [int] NOT NULL,
		[EnemyName]       [nchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
		[Description]     [nchar](100) COLLATE Latin1_General_CI_AS NULL,
		CONSTRAINT [PK_tblEnemyId]
		PRIMARY KEY
		CLUSTERED
		([EnemyId])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblEnemy] SET (LOCK_ESCALATION = TABLE)
GO
