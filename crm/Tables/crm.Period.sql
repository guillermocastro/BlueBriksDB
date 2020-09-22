CREATE TABLE [crm].[Period] (
    [PeriodId] NVARCHAR (10) NOT NULL,
    [FromDate] DATETIME2 (7) NOT NULL,
    [ToDate]   DATETIME2 (7) NOT NULL,
    [AccOpen]  BIT           NULL,
    [CrmOpen]  BIT           NULL,
    [StkOpen]  BIT           NULL,
    CONSTRAINT [PK_Period] PRIMARY KEY CLUSTERED ([PeriodId] ASC)
);

