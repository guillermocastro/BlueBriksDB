CREATE TABLE [crm].[Term] (
    [TermId]     INT            IDENTITY (1, 1) NOT NULL,
    [TermName]   NVARCHAR (128) NULL,
    [Days]       INT            NULL,
    [PaymentDay] NVARCHAR (64)  NULL,
    [IsDisabled] BIT            NULL,
    CONSTRAINT [PK_Term] PRIMARY KEY CLUSTERED ([TermId] ASC)
);

