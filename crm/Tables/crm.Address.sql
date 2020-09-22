CREATE TABLE [crm].[Address] (
    [AddressId]     INT            IDENTITY (1, 1) NOT NULL,
    [PartnerId]     INT            NOT NULL,
    [CountryId]     NVARCHAR (2)   NULL,
    [CurrencyId]    NVARCHAR (3)   NULL,
    [Telephone1]    NVARCHAR (20)  NULL,
    [Telephone2]    NVARCHAR (20)  NULL,
    [Telephone3]    NVARCHAR (20)  NULL,
    [Mail]          NVARCHAR (128) NULL,
    [Url]           NVARCHAR (256) NULL,
    [Address1]      NVARCHAR (50)  NULL,
    [Address2]      NVARCHAR (50)  NULL,
    [Town]          NVARCHAR (50)  NULL,
    [ProvinceState] NVARCHAR (50)  NULL,
    [PostCode]      NVARCHAR (10)  NULL,
    CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED ([AddressId] ASC),
    CONSTRAINT [FK_Address_Partner_PartnerId] FOREIGN KEY ([PartnerId]) REFERENCES [crm].[Partner] ([PartnerId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Address_PartnerId]
    ON [crm].[Address]([PartnerId] ASC);

