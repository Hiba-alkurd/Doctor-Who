CREATE TABLE tblEnemy
   (
      EnemyId int NOT NULL IDENTITY(1,1) PRIMARY KEY, 
	  EnemyName nvarchar(50)
	  ,Description nvarchar(100)
   )
;
CREATE TABLE tblAuthor
   (
      AuthorId int NOT NULL IDENTITY(1,1) PRIMARY KEY, 
	  AuthorName nvarchar(50)
	 
   )
;
CREATE TABLE tblDoctor
   (
      DoctorId int NOT NULL IDENTITY(1,1) PRIMARY KEY, 
	  DoctorNumber int ,
	  DoctorName nvarchar(50),
	  BirthDate date,
	  FirstEpisode date,
	  LastEpisode date
   )
;
CREATE TABLE tblCompanion
   (
      CompanionId int NOT NULL IDENTITY(1,1) PRIMARY KEY, 
	  CompanionName nvarchar(50),
	  WhoPlayed nvarchar(50)
	 
   )
;
CREATE TABLE tblEpisode
   (
      EpisodeId int NOT NULL IDENTITY(1,1) PRIMARY KEY, 
	  SeriesNumber int,
	  EpisodeNumber int,
	  EpisodeType nvarchar(50),
	  Title nvarchar(50),
	  EpisodeDate date,
	  AuthorId int,
	  DoctorId int,
	  Notes nvarchar(100),
	  CONSTRAINT FK_tblEpisode_tblAuthor FOREIGN KEY (AuthorId)
        REFERENCES tblAuthor (AuthorId)
        ON DELETE CASCADE
        ON UPDATE CASCADE
		,
	  CONSTRAINT FK_tblEpisode_tblDoctor FOREIGN KEY (DoctorId)
        REFERENCES tblDoctor (DoctorId)
        ON DELETE CASCADE
        ON UPDATE CASCADE

   )
;
CREATE TABLE tblEpisodeCompanion
   (
      EpisodeCompanionId int NOT NULL IDENTITY(1,1) PRIMARY KEY, 
	  EpisodeID int,
	  CompanionId int,
	  CONSTRAINT FK_tblEpisodeCompanion_tblEpisode FOREIGN KEY (EpisodeID)
        REFERENCES tblEpisode (EpisodeID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
		,
	  CONSTRAINT FK_tblEpisode_tblCompanion FOREIGN KEY (CompanionId)
        REFERENCES tblCompanion (CompanionId)
        ON DELETE CASCADE
        ON UPDATE CASCADE
 
   )
;
CREATE TABLE tblEpisodeEnemy
   (
      EpisodeEnemyId int NOT NULL IDENTITY(1,1) PRIMARY KEY, 
	  EpisodeID int,
	  EnemyId int,
	  CONSTRAINT FK_tblEpisodeEnemy_tblEpisode FOREIGN KEY (EpisodeID)
        REFERENCES tblEpisode (EpisodeID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
		,
	  CONSTRAINT FK_tblEpisodeEnemy_tblEnemy FOREIGN KEY (EnemyId)
        REFERENCES tblEnemy (EnemyId)
        ON DELETE CASCADE
        ON UPDATE CASCADE
	 
   )
;

, CONSTRAINT FK_TempSales_SalesReason FOREIGN KEY (TempID)
        REFERENCES Sales.SalesReason (SalesReasonID)
        ON DELETE CASCADE
        ON UPDATE CASCADE