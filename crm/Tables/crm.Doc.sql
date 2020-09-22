CREATE TABLE [crm].[Doc] (
    [DocId]            INT             IDENTITY (1, 1) NOT NULL,
    [PartnerId]        INT             NULL,
    [AddressId]        INT             NULL,
    [DeliveryId]       INT             NULL,
    [ContactId]        INT             NULL,
    [DocTypeId]        INT             NOT NULL,
    [DocNo]            NVARCHAR (10)   NULL,
    [DocDate]          DATETIME2 (7)   NULL,
    [DeliveryDate]     DATETIME2 (7)   NULL,
    [RegistrationDate] DATETIME2 (7)   NULL,
    [DueDate]          DATETIME2 (7)   NULL,
    [DocTaxId]         INT             NOT NULL,
    [IsRegistered]     BIT             NULL,
    [IsDelivered]      BIT             NULL,
    [IsPaid]           BIT             NULL,
    [ResourceId]       NVARCHAR (128)  NULL,
    [PaymentId]        INT             NULL,
    [TermId]           INT             NULL,
    [CurrencyId]       NVARCHAR (3)    NULL,
    [Rate]             DECIMAL (18, 4) NULL,
    [CompanyBankId]    NVARCHAR (30)   NULL,
    CONSTRAINT [PK_Doc] PRIMARY KEY CLUSTERED ([DocId] ASC),
    CONSTRAINT [FK_Doc_CompanyBank_CompanyBankId] FOREIGN KEY ([CompanyBankId]) REFERENCES [crm].[CompanyBank] ([CompanyBankId]),
    CONSTRAINT [FK_Doc_DocTax_DocTaxId] FOREIGN KEY ([DocTaxId]) REFERENCES [crm].[DocTax] ([DocTaxId]) ON DELETE CASCADE,
    CONSTRAINT [FK_Doc_DocType_DocTypeId] FOREIGN KEY ([DocTypeId]) REFERENCES [crm].[DocType] ([DocTypeId]) ON DELETE CASCADE,
    CONSTRAINT [FK_Doc_Partner_PartnerId] FOREIGN KEY ([PartnerId]) REFERENCES [crm].[Partner] ([PartnerId])
);


GO
CREATE NONCLUSTERED INDEX [IX_Doc_CompanyBankId]
    ON [crm].[Doc]([CompanyBankId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Doc_DocTaxId]
    ON [crm].[Doc]([DocTaxId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Doc_DocTypeId]
    ON [crm].[Doc]([DocTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Doc_PartnerId]
    ON [crm].[Doc]([PartnerId] ASC);

