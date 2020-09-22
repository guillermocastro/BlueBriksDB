CREATE TABLE [crm].[LineType] (
    [LineTypeId]      INT           IDENTITY (1, 1) NOT NULL,
    [LineTypeName]    NVARCHAR (64) NULL,
    [Prefix]          NVARCHAR (2)  NULL,
    [DebitAccountId]  NVARCHAR (10) NULL,
    [CreditAccountId] NVARCHAR (10) NULL,
    CONSTRAINT [PK_LineType] PRIMARY KEY CLUSTERED ([LineTypeId] ASC)
);

