SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEnemy] (
		[EnemyId]         [int] IDENTITY(1, 1) NOT NULL,
		[EnemyName]       [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
		[Description]     [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
		CONSTRAINT [PK__tblEnemy__911A0BF2BB9C0581]
		PRIMARY KEY
		CLUSTERED
		([EnemyId])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblEnemy] SET (LOCK_ESCALATION = TABLE)
GO
