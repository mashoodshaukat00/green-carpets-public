USE [GreenCarpetsDb];
GO


---- Role


INSERT INTO [dbo].[Role] ([Name],
                          [Description],
                          [IsDeleted],
                          [CreatedBy],
                          [CreatedAt],
                          [ModifiedBy],
                          [ModifiedAt])
VALUES ('Admin', 'Full Access', 0, 'System', GETDATE(), NULL, NULL),
       ('CompanyOwner', 'Access to company infrastructure and reporting.', 0, 'System', GETDATE(), NULL, NULL),
       ('BranchManager', 'Full Access for Branch related activities.', 0, 'System', GETDATE(), NULL, NULL),
       ('Salesman', 'Access to Orders, followup and reports', 0, 'System', GETDATE(), NULL, NULL),
       ('Driver', 'Access to Deliverable Orders , Order Address and delivery status updating views.', 0, 'System',
        GETDATE(), NULL, NULL),
       ('Customer-B2C', 'Full Access for B2C Customer Views', 0, 'System', GETDATE(), NULL, NULL),
       ('Customer-B2B', 'Full Access for B2B Customer Views', 0, 'System', GETDATE(), NULL, NULL);

GO

-- WebUser *(AdminUser, CompanyOwner,Employee, Customer)

INSERT INTO [dbo].[WebUser] ([RoleId],
                             [UserName],
                             [Password],
                             [MobileNumber],
                             [Email],
                             [IsUserActive],
                             [IsUserLocked],
                             [UserLocketAt],
                             [LastLoginTime],
                             [IsDeleted],
                             [CreatedBy],
                             [CreatedAt],
                             [ModifiedBy],
                             [ModifiedAt])
VALUES (1, 'admin', 'xadminx', '004797114636', 'mashoodshaukat00@gmail.com', 1, 0, NULL, NULL, 0, 'System', GETDATE(),
        NULL, NULL),
       (2, 'owner', 'xownerz', '004797114636', 'mashoodshaukat00@gmail.com', 1, 0, NULL, NULL, 0, 'System', GETDATE(),
        NULL, NULL),
       (3, 'manager', 'xmanagerx', '004797114636', 'mashoodshaukat00@gmail.com', 1, 0, NULL, NULL, 0, 'System',
        GETDATE(), NULL, NULL),
       (4, 'saleman', 'xsalemanx', '004797114636', 'mashoodshaukat00@gmail.com', 1, 0, NULL, NULL, 0, 'System',
        GETDATE(), NULL, NULL),
       (5, 'driver', 'xdriverx', '004797114636', 'mashoodshaukat00@gmail.com', 1, 0, NULL, NULL, 0, 'System',
        GETDATE(), NULL, NULL),
       (6, 'b2c', 'xb2c', '004797114636', 'mashoodshaukat00@gmail.com', 1, 0, NULL, NULL, 0, 'System', GETDATE(), NULL,
        NULL),
       (7, 'b2b', 'xb2bx', '004797114636', 'mashoodshaukat00@gmail.com', 1, 0, NULL, NULL, 0, 'System', GETDATE(),
        NULL, NULL);
GO


--- OrderType


INSERT INTO dbo.OrderType (Name,
                           Description,
                           IsDeleted,
                           CreatedBy,
                           CreatedAt,
                           ModifiedBy,
                           ModifiedAt)
VALUES ('WebOrder', 'An Order made via Web interface.', 0, 'System', GETDATE(), NULL, NULL),
       ('OnPermisOrder', 'Order made for walk-in customer.', 0, 'System', GETDATE(), NULL, NULL),
       ('WholeSaleOrder', 'Wholesale order.', 0, 'System', GETDATE(), NULL, NULL),
       ('RecurringOrder', 'Order made on recurrance of an subscription etc.', 0, 'System', GETDATE(), NULL, NULL);
GO





--- PaymentCardType



INSERT INTO [dbo].[PaymentMethodType] ([Name],
                                       [Description],
                                       [IsDeleted],
                                       [CreatedBy],
                                       [CreatedAt],
                                       [ModifiedBy],
                                       [ModifiedAt])
VALUES ('DebitCard', 'Debit Card', 0, 'System', GETDATE(), NULL, NULL),
       ('CreditCard', 'Credit Card', 0, 'System', GETDATE(), NULL, NULL),
       ('Invoice', 'Invoice', 0, 'System', GETDATE(), NULL, NULL),
       ('Cash', 'Casj', 0, 'System', GETDATE(), NULL, NULL),
       ('MobilePay', 'Mobile payment means', 0, 'System', GETDATE(), NULL, NULL),
       ('Vipps', 'Vipps', 0, 'System', GETDATE(), NULL, NULL);
GO



--- InvoiceType
INSERT INTO [dbo].[InvoiceType] ([Name],
                                 [Description],
                                 [IsDeleted],
                                 [CreatedBy],
                                 [CreatedAt],
                                 [ModifiedBy],
                                 [ModifiedAt])
VALUES ('Invoice', 'Regular Invoice', 0, 'System', GETDATE(), NULL, NULL),
       ('Partial Invoice', 'Partial Invoice', 0, 'System', GETDATE(), NULL, NULL),
       ('Reminder', 'Reminder Invoice', 0, 'System', GETDATE(), NULL, NULL),
       ('DebtCollection', 'DebtCollection Invoice', 0, 'System', GETDATE(), NULL, NULL);
GO


--- InvoiceStatusType

INSERT INTO [dbo].[InvoiceStatusType] ([Name],
                                       [Description],
                                       [IsDeleted],
                                       [CreatedBy],
                                       [CreatedAt],
                                       [ModifiedBy],
                                       [ModifiedAt])
VALUES ('Created', 'Created', 0, 'System', GETDATE(), NULL, NULL),
       ('Sent', 'Sent', 0, 'System', GETDATE(), NULL, NULL),
       ('Credited', 'DCredited', 0, 'System', GETDATE(), NULL, NULL),
       ('Paid', 'Paid', 0, 'System', GETDATE(), NULL, NULL),
       ('PartiallyPaid', 'PartiallyPaid', 0, 'System', GETDATE(), NULL, NULL);
GO


--- DeliveryStatusType

INSERT INTO [dbo].[DeliveryStatusType] ([Name],
                                        [Description],
                                        [IsDeleted],
                                        [CreatedBy],
                                        [CreatedAt],
                                        [ModifiedBy],
                                        [ModifiedAt])
VALUES ('Backlog', '', 0, 'System', GETDATE(), NULL, NULL),
       ('PickedForDelivery', '', 0, 'System', GETDATE(), NULL, NULL),
       ('Enroute', '', 0, 'System', GETDATE(), NULL, NULL),
       ('Delivered', '', 0, 'System', GETDATE(), NULL, NULL),
       ('Misplaced', '', 0, 'System', GETDATE(), NULL, NULL),
       ('AddressNotFound', '', 0, 'System', GETDATE(), NULL, NULL),
       ('Scheduled', '', 0, 'System', GETDATE(), NULL, NULL);
GO



--- CustomerType


INSERT INTO [dbo].[CustomerType] ([Name],
                                  [Description],
                                  [IsDeleted],
                                  [CreatedBy],
                                  [CreatedAt],
                                  [ModifiedBy],
                                  [ModifiedAt])
VALUES ('B2B-Customer', '', 0, 'System', GETDATE(), NULL, NULL),
       ('B2C-Customer', '', 0, 'System', GETDATE(), NULL, NULL);
GO

-- CompanyOwner





INSERT INTO [dbo].[CompanyOwner] ([UserId],
                                  [FirstName],
                                  [MiddleName],
                                  [LastName],
                                  [Address],
                                  [PostalCode],
                                  [City],
                                  [Phone],
                                  [Email],
                                  [IsDeleted],
                                  [CreatedBy],
                                  [CreatedAt],
                                  [ModifiedBy],
                                  [ModifiedAt])
VALUES ('67FC159A-02D0-4457-8322-1B3FF3298EA5', 'X', 'Company', 'Owner', 'Christian Michelsens Gate 15A', '0568',
        'Oslo', '123456789', 'owner@company.com', 0, 'System', GETDATE(), NULL, NULL);
GO


--- BaseCompany


INSERT INTO [dbo].[BaseCompany] ([CountryId],
                                 [CompanyOwnerId],
                                 [Name],
                                 [LegalName],
                                 [OrganizationNumber],
                                 [Address],
                                 [PostalCode],
                                 [City],
                                 [Phone],
                                 [Email],
                                 [IsDeleted],
                                 [CreatedBy],
                                 [CreatedAt],
                                 [ModifiedBy],
                                 [ModifiedAt])
VALUES (160, 1, 'Green Carpets AS', 'Green Carpets AS', '924368616', 'Startup Lab', '0261', 'Oslo', '123456789',
        'noreply@greencarpets.com', 0, 'System', GETDATE(), NULL, NULL);
GO


-- Designation


INSERT INTO [dbo].[Designation] ([Name],
                                 [Description],
                                 [IsDeleted],
                                 [CreatedBy],
                                 [CreatedAt],
                                 [ModifiedBy],
                                 [ModifiedAt])
VALUES ('Admin', '', 0, 'System', GETDATE(), NULL, NULL),
       ('Manager', '', 0, 'System', GETDATE(), NULL, NULL),
       ('Saleman', '', 0, 'System', GETDATE(), NULL, NULL),
       ('Driver', '', 0, 'System', GETDATE(), NULL, NULL);
GO


--- ProductCategory


INSERT INTO [dbo].[ProductCategory]([Name],
									[Description],
						            [IsDeleted],
								    [CreatedBy],
								    [CreatedAt],
								    [ModifiedBy],
								    [ModifiedAt])
VALUES  ('Oriental(NEW)','carpets hand knotted only in Asia', 0, 'System', GETDATE(), NULL, NULL),
		('Oriental(USED)','carpets hand knotted only in Asia', 0, 'System', GETDATE(), NULL, NULL),
		('Modern(NEW)','Styles stiched by machines', 0, 'System', GETDATE(), NULL, NULL),
		('Modern(USED)','Styles stiched by machines', 0, 'System', GETDATE(), NULL, NULL);

GO


--- Service



INSERT INTO [dbo].[Service]([Name]
						   ,[Description]
						   ,[IsDeleted]
						   ,[CreatedBy]
						   ,[CreatedAt]
						   ,[ModifiedBy]
						   ,[ModifiedAt])
VALUES	('Cleaning', 'Cleaning of carpets periodically', 0, 'System', GETDATE(), NULL, NULL),
		('Repairing', 'Repair carpets when required', 0, 'System', GETDATE(), NULL, NULL),
		('Replacement', 'Replacement of carpets on demand or at renewal of subscription', 0, 'System', GETDATE(), NULL, NULL),
		('Delivery', 'Free delivery to our subscribed customers. May charge individual customers', 0, 'System', GETDATE(), NULL, NULL);
GO

--- SubscriptionType


INSERT INTO [dbo].[SubscriptionType]([Name]
								    ,[IsDailySubscription]
								    ,[IsMonthlySubscription]
								    ,[IsYearlySubscription])
VALUES	('Silver', 0, 0, 1),
		('Gold', 0, 0, 1),
		('Diamond', 0, 0, 1);
GO



