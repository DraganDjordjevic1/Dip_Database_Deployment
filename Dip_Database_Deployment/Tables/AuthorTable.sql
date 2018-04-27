﻿CREATE TABLE [dbo].[AuthorTable]
(
	[authorID] INT NOT NULL,
	[firstName] VARCHAR(20) NOT NULL,
	[lastName] VARCHAR(40) NOT NULL,
	[authorTFN] INT NOT NULL,
	CONSTRAINT PK_AUTHOR PRIMARY KEY (authorID),
	CONSTRAINT FK_AUTHOR FOREIGN KEY (authorID) REFERENCES AuthorTable(authorID)
)