CREATE   VIEW [crm].[DocTotal] AS
SELECT 
       d.[DocId]
	   ,com.CompanyId
	   ,com.CompanyName
	   ,com.Address1
	   ,com.Address2
	   ,com.Town
	   ,com.ProvinceState
	   ,com.PostCode
	   ,com.CountryId
	   ,cb.CompanyBankName
	   ,cb.SwiftId
	  ,dt.DocTypeName
      ,d.[PartnerId]
	  ,part.PartnerName
	  ,part.Tin
      ,d.[AddressId]
	  ,inv.Address1 AS InvAddress1
	  ,inv.Address2 AS InvAddress2
	  ,inv.PostCode AS InvPostCode
	  ,inv.ProvinceState AS InvProvinceState
	  ,inv.Town AS InvTown
      ,d.[DeliveryId]
	  ,Del.Address1 AS DelAddress1
	  ,Del.Address2 AS DelAddress2
	  ,Del.PostCode AS DelPostCode
	  ,Del.ProvinceState AS DelProvinceState
	  ,Del.Town AS DelTown
      ,d.[ContactId]
	  ,con.FirstName
	  ,con.SurnameName
      ,d.[DocTypeId]
      ,d.[DocNo]
      ,d.[DocDate]
      ,d.[DeliveryDate]
      ,d.[RegistrationDate]
      ,d.[DueDate]
      ,d.[DocTaxId]
      ,d.[IsRegistered]
      ,d.[IsDelivered]
      ,d.[IsPaid]
      ,d.[ResourceId]
      ,d.[PaymentId]
	  ,p.PaymentName
      ,d.[TermId]
	  ,t.TermName
      ,d.[CurrencyId]
      ,d.[Rate]
      ,d.[CompanyBankId]
	  ,CONVERT(NUMERIC(20,2),ISNULL(s.[GrossAmount],0)) AS [GrossAmountCUR]
	  ,CONVERT(NUMERIC(20,2),ISNULL(s.[VAT],0)) AS [VATCUR]
	  ,CONVERT(NUMERIC(20,2),ISNULL(s.[Amount],0)) AS [AmountCUR]
	  ,CONVERT(NUMERIC(20,2),ISNULL(s.[Retention],0)) AS [RetentionCUR]
	  ,CONVERT(NUMERIC(20,2),ISNULL(s.[Amount],0)-ISNULL(s.[Retention],0)) AS [TotalCUR]
	  ,CONVERT(NUMERIC(20,2),ISNULL(s.[GrossAmount]/ISNULL(d.[Rate],1),0)) AS [GrossAmountEUR]
	  ,CONVERT(NUMERIC(20,2),ISNULL(s.[VAT]/ISNULL(d.[Rate],1),0)) AS [VATEUR]
	  ,CONVERT(NUMERIC(20,2),ISNULL(s.[Amount]/ISNULL(d.[Rate],1),0)) AS [AmountEUR]
	  ,CONVERT(NUMERIC(20,2),ISNULL(s.[Retention]/ISNULL(d.[Rate],1),0)) AS [RetentionEUR]
	  ,CONVERT(NUMERIC(20,2),ISNULL(s.[Amount]/ISNULL(d.[Rate],1),0)-ISNULL(s.[Retention]/[Rate],0)) AS [TotalEUR]
  FROM [crm].[Doc] d
INNER JOIN [crm].[DocType] dt ON d.DocTypeId=dt.DocTypeId
INNER JOIN [crm].[Payment] p ON d.PaymentId=p.PaymentId
INNER JOIN [crm].[Term] t ON d.TermId=t.TermId
INNER JOIN [crm].[Partner] part ON d.PartnerId=part.PartnerId
INNER JOIN [crm].[CompanyBank] cb ON d.CompanyBankId=cb.CompanyBankId
LEFT JOIN [crm].[Address] Inv ON d.AddressId=Inv.AddressId
LEFT JOIN [crm].[Address] Del ON d.AddressId=Del.AddressId
LEFT JOIN [crm].[Contact] con ON d.ContactId=Con.ContactId
LEFT JOIN (  
	SELECT l.[DocId]
		  ,SUM(l.[Qty]*l.[Price]) AS [GrossAmount]
		  ,SUM(l.[Qty]*l.[Price]*l2.[PlineTax]) AS [VAT]
		  ,SUM(l.[Qty]*l.[Price]+l.[Qty]*l.[Price]*l2.[PlineTax]) AS [Amount]
		  ,SUM(ISNULL(l.[Retention],0)) AS [Retention]
	  FROM [crm].[Line] l
	  INNER JOIN [crm].[LineType] l1 ON l.[LineTypeId]=l1.[LineTypeId]
	  INNER JOIN [crm].[LineTax] l2 ON l.[LineTaxId]=l2.[LineTaxId]
	  LEFT JOIN [crm].[Product] p ON l.[PLU]=p.[PLU]
GROUP BY l.[DocId]
  ) s ON d.DocId=s.DocId
,crm.Company Com
 --GO
 --SELECT * FROM [crm].[DocTotal]

  /*
  INNER JOIN [crm].[Partner] p ON d.[PartnerId]=p.[PartnerId]
INNER JOIN [crm].[Address] a ON d.[AddressId]=a.[AddressId]
INNER JOIN [crm].[Address] del ON d.[DeliveryId]=del.[AddressId]
LEFT JOIN [crm].[Contact] c ON d.[ContactId]=c.[ContactId]

  */