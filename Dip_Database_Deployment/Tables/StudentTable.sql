CREATE TABLE [dbo].[StudentTable]
(
	[studentID] INT NOT NULL, 
    [firstName] VARCHAR(15) NOT NULL,
	[lastName] VARCHAR(15) NOT NULL, 
	[phoneNumber] INT NOT NULL,
	[email] VARCHAR(50) NOT NULL,
	CONSTRAINT PK_STUDENT PRIMARY KEY (studentID),
	CONSTRAINT FK_STUDENT FOREIGN KEY (studentID) REFERENCES StudentTable(studentID)
)
