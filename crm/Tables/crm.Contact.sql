CREATE TABLE [crm].[Contact] (
    [ContactId]      INT            IDENTITY (1, 1) NOT NULL,
    [PartnerId]      INT            NOT NULL,
    [Title]          NVARCHAR (5)   NULL,
    [ContactName]    NVARCHAR (128) NULL,
    [FirstName]      NVARCHAR (50)  NULL,
    [SurnameName]    NVARCHAR (50)  NULL,
    [SecondNameName] NVARCHAR (50)  NULL,
    [CountryId]      NVARCHAR (2)   NULL,
    [CurrencyId]     NVARCHAR (3)   NULL,
    [Telephone1]     NVARCHAR (20)  NULL,
    [Telephone2]     NVARCHAR (20)  NULL,
    [Telephone3]     NVARCHAR (20)  NULL,
    [Mail]           NVARCHAR (128) NULL,
    [Url]            NVARCHAR (256) NULL,
    [Address1]       NVARCHAR (50)  NULL,
    [Address2]       NVARCHAR (50)  NULL,
    [Town]           NVARCHAR (50)  NULL,
    [ProvinceState]  NVARCHAR (50)  NULL,
    [PostCode]       NVARCHAR (10)  NULL,
    [ReceiveMails]   BIT            NULL,
    [ReceiveCalls]   BIT            NULL,
    CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED ([ContactId] ASC),
    CONSTRAINT [FK_Contact_Partner_PartnerId] FOREIGN KEY ([PartnerId]) REFERENCES [crm].[Partner] ([PartnerId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Contact_PartnerId]
    ON [crm].[Contact]([PartnerId] ASC);

