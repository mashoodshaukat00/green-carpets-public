--Step 1: (create a new user)
create LOGIN greenappdbuser WITH PASSWORD='1XsNovYt8CTutCD4yDwj', CHECK_POLICY = OFF;


-- Step 2:(deny view to any database)
USE master;
GO
DENY VIEW ANY DATABASE TO greenappdbuser; 


 -- step 3 (then authorized the user for that specific database , you have to use the  master by doing use master as below)
USE master;
GO
ALTER AUTHORIZATION ON DATABASE::GreenCarpetsDb TO greenappdbuser;
GO