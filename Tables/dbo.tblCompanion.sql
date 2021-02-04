SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCompanion] (
		[CompanionId]       [int] IDENTITY(1, 1) NOT NULL,
		[CompanionName]     [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
		[WhoPlayed]         [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
		CONSTRAINT [PK__tblCompa__8B53BEEB2F57710F]
		PRIMARY KEY
		CLUSTERED
		([CompanionId])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblCompanion] SET (LOCK_ESCALATION = TABLE)
GO
