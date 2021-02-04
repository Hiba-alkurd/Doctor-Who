SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCompanion] (
		[CompanionId]       [int] NOT NULL,
		[CompanionName]     [nchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
		[WhoPlayed]         [nchar](30) COLLATE Latin1_General_CI_AS NULL,
		CONSTRAINT [PK_tblCompanion]
		PRIMARY KEY
		CLUSTERED
		([CompanionId])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblCompanion] SET (LOCK_ESCALATION = TABLE)
GO
