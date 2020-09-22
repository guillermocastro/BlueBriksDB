CREATE TABLE [crm].[Cnae] (
    [CnaeId]    INT            IDENTITY (1, 1) NOT NULL,
    [CnaeName]  NVARCHAR (128) NULL,
    [AccountId] NVARCHAR (10)  NULL,
    CONSTRAINT [PK_Cnae] PRIMARY KEY CLUSTERED ([CnaeId] ASC),
    CONSTRAINT [FK_Cnae_Account_AccountId] FOREIGN KEY ([AccountId]) REFERENCES [crm].[Account] ([AccountId])
);


GO
CREATE NONCLUSTERED INDEX [IX_Cnae_AccountId]
    ON [crm].[Cnae]([AccountId] ASC);

