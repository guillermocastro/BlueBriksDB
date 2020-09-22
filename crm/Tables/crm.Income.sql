CREATE TABLE [crm].[Income] (
    [IncomeId] NVARCHAR (10)  NOT NULL,
    [BalanceId] NVARCHAR (10)  NULL,
    [Level2]   NVARCHAR (32)  NULL,
    [Level3]   NVARCHAR (64)  NULL,
    [Level4]   NVARCHAR (128) NULL,
    CONSTRAINT [PK_Income] PRIMARY KEY CLUSTERED ([IncomeId] ASC)
);

