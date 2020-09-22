CREATE TABLE [crm].[DocTax] (
    [DocTaxId]     INT             IDENTITY (1, 1) NOT NULL,
    [DocTaxName]   NVARCHAR (128)  NULL,
    [PdocTax]      DECIMAL (18, 4) NULL,
    [DebitDocAcc]  NVARCHAR (10)   NULL,
    [CreditDocAcc] NVARCHAR (10)   NULL,
    CONSTRAINT [PK_DocTax] PRIMARY KEY CLUSTERED ([DocTaxId] ASC)
);

