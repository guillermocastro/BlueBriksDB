CREATE TABLE [crm].[CompanyBank] (
    [CompanyBankId]   NVARCHAR (30)  NOT NULL,
    [CompanyBankName] NVARCHAR (128) NULL,
    [SwiftId]         NVARCHAR (11)  NULL,
    [BankAccount]     NVARCHAR (10)  NULL,
    [FeesAccount]     NVARCHAR (10)  NULL,
    [CountryId]       NVARCHAR (2)   NULL,
    [CurrencyId]      NVARCHAR (3)   NULL,
    [Telephone1]      NVARCHAR (20)  NULL,
    [Telephone2]      NVARCHAR (20)  NULL,
    [Telephone3]      NVARCHAR (20)  NULL,
    [Mail]            NVARCHAR (128) NULL,
    [Url]             NVARCHAR (256) NULL,
    [Address1]        NVARCHAR (50)  NULL,
    [Address2]        NVARCHAR (50)  NULL,
    [Town]            NVARCHAR (50)  NULL,
    [ProvinceState]   NVARCHAR (50)  NULL,
    [PostCode]        NVARCHAR (10)  NULL,
    [IsDeleted]       BIT            NULL,
    [PartnerId]       INT            NULL,
    CONSTRAINT [PK_CompanyBank] PRIMARY KEY CLUSTERED ([CompanyBankId] ASC),
    CONSTRAINT [FK_CompanyBank_Partner_PartnerId] FOREIGN KEY ([PartnerId]) REFERENCES [crm].[Partner] ([PartnerId])
);


GO
CREATE NONCLUSTERED INDEX [IX_CompanyBank_PartnerId]
    ON [crm].[CompanyBank]([PartnerId] ASC);

