CREATE TABLE [crm].[Company] (
    [CompanyId]       NVARCHAR (20)  NOT NULL,
    [CompanyName]     NVARCHAR (128) NULL,
    [Tradename]       NVARCHAR (128) NULL,
    [TermId]          INT            NULL,
    [PaymentId]       INT            NULL,
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
    [LegalConditions] NVARCHAR (256) NULL,
    CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED ([CompanyId] ASC),
    CONSTRAINT [FK_Company_Payment_PaymentId] FOREIGN KEY ([PaymentId]) REFERENCES [crm].[Payment] ([PaymentId]),
    CONSTRAINT [FK_Company_Term_TermId] FOREIGN KEY ([TermId]) REFERENCES [crm].[Term] ([TermId])
);


GO
CREATE NONCLUSTERED INDEX [IX_Company_PaymentId]
    ON [crm].[Company]([PaymentId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Company_TermId]
    ON [crm].[Company]([TermId] ASC);

