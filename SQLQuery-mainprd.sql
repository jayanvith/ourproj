USE [COREBANKER1]
GO
/****** Object:  StoredProcedure [dbo].[insertbranch]    Script Date: 21/05/2016 08:04:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
 create procedure [dbo].[insertmainprd]
(
@prdid varchar(10),
@prdname varchar(50),
@prdtype varchar(20),
@prdtypeid int,
@savintcalmet  varchar(40),
@savintcalmetid int




)
as 
begin
insert into [COREBANKER1].[dbo].[BRNCHES]
([BRN_CODE]
,[BRN_NAME]
       ,[BRN_ADD1]
      ,[BRN_ADD2]
      ,[BRN_ADD3]
      ,[BRN_ADD4]
      ,[BRN_CONT_NUM]
      ,[BRN_FAX_NUM]
      ,[BRN_EMAIL])

	  

values()
END
