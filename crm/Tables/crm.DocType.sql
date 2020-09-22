CREATE TABLE [crm].[DocType] (
    [DocTypeId]     INT           IDENTITY (1, 1) NOT NULL,
    [DocTypeName]   NVARCHAR (64) NULL,
    [Prefix]        NVARCHAR (2)  NULL,
    [AccountId]     NVARCHAR (10) NULL,
    [BankAccountId] INT           NULL,
    CONSTRAINT [PK_DocType] PRIMARY KEY CLUSTERED ([DocTypeId] ASC)
);

