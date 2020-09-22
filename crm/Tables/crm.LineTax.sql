CREATE TABLE [crm].[LineTax] (
    [LineTaxId]     INT             IDENTITY (1, 1) NOT NULL,
    [LineTaxName]   NVARCHAR (128)  NULL,
    [PlineTax]      DECIMAL (18, 2) NULL,
    [DebitLineAcc]  NVARCHAR (10)   NULL,
    [CreditLineAcc] NVARCHAR (10)   NULL,
    CONSTRAINT [PK_LineTax] PRIMARY KEY CLUSTERED ([LineTaxId] ASC)
);

