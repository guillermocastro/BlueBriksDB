CREATE TABLE [crm].[BankMov] (
    [BankMovId]     INT             IDENTITY (1, 1) NOT NULL,
    [BankMovDate]   DATETIME2 (7)   NULL,
    [CompanyBankId] NVARCHAR (30)   NULL,
    [Concept]       NVARCHAR (50)   NULL,
    [IssuedBy]      NVARCHAR (30)   NULL,
    [IssuedTo]      NVARCHAR (30)   NULL,
    [Description]   NVARCHAR (126)  NULL,
    [AccountId]     NVARCHAR (10)   NULL,
    [DocNo]         NVARCHAR (10)   NULL,
    [Amount]        DECIMAL (18, 2) NULL,
    [Rate]          DECIMAL (18, 4) NULL,
    [CurrencyId]    NVARCHAR (MAX)  NULL,
    [Fees]          DECIMAL (18, 2) NULL,
    [IsRegistered]  BIT             NULL,
    [IsReconciled]  BIT             NULL,
    CONSTRAINT [PK_BankMov] PRIMARY KEY CLUSTERED ([BankMovId] ASC),
    CONSTRAINT [FK_BankMov_CompanyBank_CompanyBankId] FOREIGN KEY ([CompanyBankId]) REFERENCES [crm].[CompanyBank] ([CompanyBankId])
);


GO
CREATE NONCLUSTERED INDEX [IX_BankMov_CompanyBankId]
    ON [crm].[BankMov]([CompanyBankId] ASC);

