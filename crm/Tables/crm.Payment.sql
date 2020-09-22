CREATE TABLE [crm].[Payment] (
    [PaymentId]   INT            IDENTITY (1, 1) NOT NULL,
    [PaymentName] NVARCHAR (100) NULL,
    CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED ([PaymentId] ASC)
);

