CREATE TABLE [crm].[Line] (
    [LineId]       INT             IDENTITY (1, 1) NOT NULL,
    [DocId]        INT             NOT NULL,
    [LineName]     NVARCHAR (128)  NULL,
    [PLU]          NVARCHAR (30)   NULL,
    [LineTypeId]   INT             NOT NULL,
    [LineDate]     DATETIME2 (7)   NULL,
    [DueDate]      DATETIME2 (7)   NULL,
    [DeliveryDate] DATETIME2 (7)   NULL,
    [Qty]          DECIMAL (18, 2) NULL,
    [Price]        DECIMAL (18, 2) NULL,
    [LineTaxId]    INT             NOT NULL,
    [IsRegistered] BIT             NULL,
    [IsDelivered]  BIT             NULL,
    [ResourceId]   NVARCHAR (128)  NULL,
    [Retention]    DECIMAL (18, 2) NULL,
    [RetAcc]       NVARCHAR (10)   NULL,
    CONSTRAINT [PK_Line] PRIMARY KEY CLUSTERED ([LineId] ASC),
    CONSTRAINT [FK_Line_Doc_DocId] FOREIGN KEY ([DocId]) REFERENCES [crm].[Doc] ([DocId]) ON DELETE CASCADE,
    CONSTRAINT [FK_Line_LineTax_LineTaxId] FOREIGN KEY ([LineTaxId]) REFERENCES [crm].[LineTax] ([LineTaxId]) ON DELETE CASCADE,
    CONSTRAINT [FK_Line_LineType_LineTypeId] FOREIGN KEY ([LineTypeId]) REFERENCES [crm].[LineType] ([LineTypeId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Line_DocId]
    ON [crm].[Line]([DocId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Line_LineTaxId]
    ON [crm].[Line]([LineTaxId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Line_LineTypeId]
    ON [crm].[Line]([LineTypeId] ASC);

