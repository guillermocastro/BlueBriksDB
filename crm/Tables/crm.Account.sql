CREATE TABLE [crm].[Account] (
    [AccountId]   NVARCHAR (10)  NOT NULL,
    [AccountName] NVARCHAR (256) NULL,
    [BalanceId] NVARCHAR (10)  NULL,
    [IncomeId] NVARCHAR (10)  NOT NULL,
    [IsMajor] BIT            NULL,
    [IsDisabled] BIT            NULL,
    CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED ([AccountId] ASC)
);

