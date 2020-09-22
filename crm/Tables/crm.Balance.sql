CREATE TABLE [crm].[Balance] (
    [BalanceId] NVARCHAR (10)  NOT NULL,
    [Level1]    NVARCHAR (16)  NULL,
    [Level2]    NVARCHAR (32)  NULL,
    [Level3]    NVARCHAR (64)  NULL,
    [Level4]    NVARCHAR (128) NULL,
    CONSTRAINT [PK_Balance] PRIMARY KEY CLUSTERED ([BalanceId] ASC)
);

