CREATE TABLE [crm].[Ledger] (
    [Id]            INT             IDENTITY (1, 1) NOT NULL,
    [TransactionId] INT             NULL,
    [AccountId]     NVARCHAR (10)   NULL,
    [TranDate]      DATETIME2 (7)   NOT NULL,
    [Description]   NVARCHAR (64)   NULL,
    [DocNo]         NVARCHAR (10)   NULL,
    [Debit]         DECIMAL (18, 2) NULL,
    [Credit]        DECIMAL (18, 2) NULL,
    CONSTRAINT [PK_Ledger] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Ledger_Account_AccountId] FOREIGN KEY ([AccountId]) REFERENCES [crm].[Account] ([AccountId])
);


GO
CREATE NONCLUSTERED INDEX [IX_Ledger_AccountId]
    ON [crm].[Ledger]([AccountId] ASC);

