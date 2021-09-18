USE [GreenCarpetsDb]
GO

INSERT INTO [dbo].[Supplier]
           ([Name]
           ,[Adress]
           ,[PostalCode]
           ,[City]
           ,[LegalName]
           ,[ContactPersonName]
           ,[ContactPersonEmail]
           ,[ContactPersonPhone]
           ,[CreatedBy]
           ,[CreatedAt]
           ,[ModifiedBy]
           ,[ModifiedAt])
     VALUES
           ('Sheeda badmash'
           ,'Rajju ki haveli'
           ,'64000'
           ,'Lahore'
           ,'Sheeda & sons.'
           ,'Mr.Sheeda'
           ,'sheeda@talli.pk'
           ,'00924289786486'
           ,'TestSystem'
           ,GETDATE()
           ,null
           ,null)
GO


