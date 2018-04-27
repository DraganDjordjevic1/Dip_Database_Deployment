/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

if '$(LoadTestData)' = 'true'

BEGIN

DELETE FROM AuthorTable;
DELETE FROM StudentTable;
DELETE FROM BookTable;

INSERT INTO StudentTable(studentID, firstName, lastName, phoneNumber, email) VALUES
("s12345678", "Fred", "Flintstone", 0400555111, "12345678@student.swin.edu.au"),
("s23456789", "Barney", "Rubble", 0400555222, "23456789@student.swin.edu.au"),
("s34567890", "Bam-Bam", "Rubble", 0400555333, "34567890@student.swin.edu.au");
INSERT INTO AuthorTable(authorID, firstName, lastName, authorTFN) VALUES
(32567, "Edgar", "Codd", 150111222),
(76543, "Vinton", "Cerf", 150222333),
(12345, "Alan", "Turing", 150333444);
INSERT INTO BookTable(ISBN, bookTitle, yearPublished , authorID) VALUES
(978-3-15-148410-0, "Relationships with Databases, the ins and outs", 1970, 32567),
(978-3-15-148410-1, "Normalisation, how to make a database geek fit in", 1973, 32567),
(978-3-15-148410-2, "TCP/IP, the protocol for the masses", 1983, 76543),
(978-3-15-148410-3, "The Man, the Bombe, and the Enigma", 1940, 12345);

END;