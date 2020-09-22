CREATE TABLE [crm].[Partner] (
    [PartnerId]   INT            IDENTITY (1, 1) NOT NULL,
    [PartnerName] NVARCHAR (128) NULL,
    [PartnerNo]   NVARCHAR (10)  NULL,
    [TermId]      INT            NULL,
    [PaymentId]   INT            NULL,
    [Tin]         NVARCHAR (20)  NULL,
    [CountryId]   NVARCHAR (2)   NULL,
    [CurrencyId]  NVARCHAR (3)   NULL,
    [IsDeleted]   BIT            NULL,
    CONSTRAINT [PK_Partner] PRIMARY KEY CLUSTERED ([PartnerId] ASC),
    CONSTRAINT [FK_Partner_Payment_PaymentId] FOREIGN KEY ([PaymentId]) REFERENCES [crm].[Payment] ([PaymentId]),
    CONSTRAINT [FK_Partner_Term_TermId] FOREIGN KEY ([TermId]) REFERENCES [crm].[Term] ([TermId])
);


GO
CREATE NONCLUSTERED INDEX [IX_Partner_PaymentId]
    ON [crm].[Partner]([PaymentId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Partner_TermId]
    ON [crm].[Partner]([TermId] ASC);

