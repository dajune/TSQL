-- Select database
use AdventureWorks2016
go
-- Show filestat for databasefiles
Dbcc showfilestats

-- Display size of databasefile and logfile
SELECT DB_NAME() AS DbName, 
name AS FileName, 
size/128.0 AS CurrentSizeMB, 
size/128.0 - CAST(FILEPROPERTY(name, 'SpaceUsed') AS INT)/128.0 AS FreeSpaceMB 
FROM sys.database_files; 
