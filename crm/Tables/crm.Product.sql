CREATE TABLE [crm].[Product] (
    [PLU]         NVARCHAR (30)   NOT NULL,
    [PLUName]     NVARCHAR (128)  NULL,
    [Price]       DECIMAL (18, 2) NOT NULL,
    [CnaeId]      INT             NOT NULL,
    [SalesAcc]    NVARCHAR (10)   NULL,
    [Description] NVARCHAR (MAX)  NULL,
    [CurrencyId]  NVARCHAR (3)    NULL,
    CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED ([PLU] ASC),
    CONSTRAINT [FK_Product_Cnae_CnaeId] FOREIGN KEY ([CnaeId]) REFERENCES [crm].[Cnae] ([CnaeId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Product_CnaeId]
    ON [crm].[Product]([CnaeId] ASC);

