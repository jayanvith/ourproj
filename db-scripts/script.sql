USE [master]
GO
/****** Object:  Database [COREBANKER1]    Script Date: 02/05/2016 21:25:37 ******/
CREATE DATABASE [COREBANKER1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'COREBANKER', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\BACKUP\COREBANKER.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'COREBANKER_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\BACKUP\COREBANKER_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [COREBANKER1] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [COREBANKER1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [COREBANKER1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [COREBANKER1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [COREBANKER1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [COREBANKER1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [COREBANKER1] SET ARITHABORT OFF 
GO
ALTER DATABASE [COREBANKER1] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [COREBANKER1] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [COREBANKER1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [COREBANKER1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [COREBANKER1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [COREBANKER1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [COREBANKER1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [COREBANKER1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [COREBANKER1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [COREBANKER1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [COREBANKER1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [COREBANKER1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [COREBANKER1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [COREBANKER1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [COREBANKER1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [COREBANKER1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [COREBANKER1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [COREBANKER1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [COREBANKER1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [COREBANKER1] SET  MULTI_USER 
GO
ALTER DATABASE [COREBANKER1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [COREBANKER1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [COREBANKER1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [COREBANKER1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [COREBANKER1]
GO
/****** Object:  User [JAYAN]    Script Date: 02/05/2016 21:25:37 ******/
CREATE USER [JAYAN] FOR LOGIN [JAYAN] WITH DEFAULT_SCHEMA=[db_accessadmin]
GO
/****** Object:  User [isuru]    Script Date: 02/05/2016 21:25:37 ******/
CREATE USER [isuru] FOR LOGIN [isuru] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [JAYAN]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [JAYAN]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [JAYAN]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [JAYAN]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [JAYAN]
GO
ALTER ROLE [db_datareader] ADD MEMBER [JAYAN]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [JAYAN]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [JAYAN]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [JAYAN]
GO
ALTER ROLE [db_owner] ADD MEMBER [isuru]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [isuru]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [isuru]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [isuru]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [isuru]
GO
ALTER ROLE [db_datareader] ADD MEMBER [isuru]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [isuru]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [isuru]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [isuru]
GO
/****** Object:  StoredProcedure [dbo].[insertbranch]    Script Date: 02/05/2016 21:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create procedure [dbo].[insertbranch]
(
@brncode int,
@brnname varchar(40),
@brnadd1 varchar(50),
@brnadd2 varchar(50),
@brnadd3 varchar(50),
@brnadd4 varchar(50),
@brnCont varchar(15),
@brnfax  varchar(15),
@brnemail varchar(40)
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

	  

values(@brncode,@brnname,@brnadd1,@brnadd2,@brnadd3,@brnadd4,@brnCont,@brnfax,@brnemail)
END

GO
/****** Object:  StoredProcedure [dbo].[insertglchatOfacct]    Script Date: 02/05/2016 21:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insertglchatOfacct]
(
@gltypeid varchar(10),
@gltypename varchar(50),
@glsubtypeid varchar(10),
@glsubtypename varchar (50),
@chataccid varchar(10),
@chataccname varchar(50),
@chataccdec varchar(50),
@chataccwho varchar(20),
@characcwhen date
)as
begin
insert into [COREBANKER1].[dbo].[GL_CHART_ACC]
(
       [GL_TYPE_ID]
      ,[GL_TYPE_NAME]
      ,[GL_SUBTYPE_ID]
      ,[GL_SUBTYPE_NAME]
      ,[CHART_ACC_ID]
      ,[CHART_ACC_NAME]
      ,[CHART_ACC_DEC]
      ,[CHART_ACC_WHO]
      ,[CHART_ACC_WHEN]      
) 
values(@gltypeid,@gltypename,@glsubtypeid,@glsubtypename,@chataccid,@chataccname,@chataccdec,@chataccwho,@characcwhen) 
End
GO
/****** Object:  StoredProcedure [dbo].[insertgltype]    Script Date: 02/05/2016 21:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE procedure [dbo].[insertgltype]
(
@gltype varchar(50),
@gltypeid varchar(10),
@glsuntypeid varchar(10),
@glsuntypename varchar (50),
@glsuntypedec Varchar (100),
@usercra varchar(20),
@usercrwhen datetime,
@GLTYPECTV int


)
as
begin
insert into [COREBANKER1].[dbo].[GL_TYPE]([gltype_id]
      ,[gltype]
      ,[gltype_sub_id]
      ,[gltype_sub_name]
      ,[gltype_sub_desc]
      ,[gltype_sub_who]
	  ,[gltype_sub_when]
      ,[gltype_sub_active]
      
) 
values(@gltypeid,@gltype,@glsuntypeid,@glsuntypename,@glsuntypedec,@usercra,@usercrwhen,@GLTYPECTV) 
End
GO
/****** Object:  StoredProcedure [dbo].[insertmaingl]    Script Date: 02/05/2016 21:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertmaingl]
(@gltypeID int,
@gltypename varchar(50),
@glsubtypeid int,
@glsubtypename varchar(50),
@cartaccid int,
@chartaccname varchar(50),
@glcode int,
@glname varchar(50),
@gldec varchar(50),
@glentwho varchar(20),
@glentwhen  date,
@glact int,
@glcatg varchar(50),
@glcatid int

)
AS
BEGIN
	INSERT INTO [COREBANKER1].[dbo].[GL_MAIN](
	   [GL_TYPE_ID]
      ,[GL_TYPE_NAME]
      ,[GL_SUB_TYPE_ID]
      ,[GL_SUB_TYPE_NAME]
      ,[CHAT_ACC_ID]
      ,[CHAT_ACC_NAME]
      ,[GL_ID]
      ,[GL_NAME]
      ,[GL_DEC]
      ,[GL_ENT_WHO]
      ,[GL_ENT_WHEN]
      ,[GL_ACT]
      ,[GL_CATG]
      ,[GL_CATID]
      )
	  values(@gltypeID,@gltypename,@glsubtypeid,@glsubtypename,@cartaccid,@chartaccname,@glcode,@glname,
	  @gldec,@glentwho,@glentwhen,@glact,@glcatg,@glcatid)
END

GO
/****** Object:  StoredProcedure [dbo].[insertusers]    Script Date: 02/05/2016 21:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE procedure [dbo].[insertusers]
(
@username varchar(20),
@passwd varchar(50),
@fname Varchar (50),
@Mname varchar (50),
@Lname Varchar (50),
@brncode int,
@Bdate  datetime,
@Add1 varchar(20),
@Add2 varchar(20),
@Add3 varchar(20),
@Add4 varchar(20),
@bankjoin datetime,
@empid varchar(10),
@marrage varchar(10),
@nic varchar(15),
@usercra varchar(15),
@usercrwhen datetime,
@userrole varchar(15)

)
as
begin
insert into [COREBANKER1].[dbo].[USERS]([USER_NAME]
      ,[USER_PASSWD]
      ,[USER_FNAME]
      ,[USER_MNAME]
      ,[USER_LNAME]
      ,[USER_BRN_CODE]
      ,[USER_ADD1]
      ,[USER_ADD2]
      ,[USER_ADD3]
      ,[USER_ADD4]
      ,[USER_JOIN_DATE]
      ,[USER_BDATE]
      ,[USER_EMP_ID]
      ,[USER_MARR_STATUS]
      ,[USER_NIC]
      ,[USER_CRA_WHO]
      ,[USER_CRA_WHEN]
      ,[USER_USER_ROLE]
) 
values(@username,@passwd,@fname,@Mname,@Lname,@brncode,@Add1,@Add2,@Add3,@Add4,@bankjoin,@Bdate,@empid,@marrage,@nic,@usercra,@usercrwhen,@userrole) 
End

GO
/****** Object:  Table [dbo].[BRNCHES]    Script Date: 02/05/2016 21:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BRNCHES](
	[BRN_CODE] [int] NOT NULL,
	[BRN_NAME] [nvarchar](50) NULL,
	[BRN_ADD1] [varchar](50) NULL,
	[BRN_ADD2] [varchar](50) NULL,
	[BRN_ADD3] [varchar](50) NULL,
	[BRN_ADD4] [varchar](50) NULL,
	[BRN_CONT_NUM] [nchar](15) NULL,
	[BRN_FAX_NUM] [nchar](15) NULL,
	[BRN_EMAIL] [nchar](50) NULL,
 CONSTRAINT [PK_BRNCHES] PRIMARY KEY CLUSTERED 
(
	[BRN_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 02/05/2016 21:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMER](
	[CUS_ID] [nchar](10) NOT NULL,
	[CUS_FNAME] [nchar](10) NULL,
	[CUS_MNAME] [nchar](10) NULL,
	[CUS_LNAME] [nchar](10) NULL,
	[CUS_DISPLAY_NMA] [nchar](10) NULL,
	[CUS_NIC] [nchar](10) NULL,
	[CUS_BDATE] [nchar](10) NULL,
	[CUS_GENDER] [nchar](10) NULL,
	[CUS_TITLE] [nchar](10) NULL,
	[CUS_TYPE] [nchar](10) NULL,
	[CUS_ADD1] [nchar](10) NULL,
	[CUS_ADD2] [nchar](10) NULL,
	[CUS_ADD3] [nchar](10) NULL,
	[CUS_ADD4] [nchar](10) NULL,
	[CUS_MOB] [nchar](10) NULL,
	[CUS_HOME_PHN] [nchar](10) NULL,
	[CUS_EMAIL] [nchar](10) NULL,
	[CUS_MAR_STATUS] [nchar](10) NULL,
	[CUS_COOP_NAME] [nchar](10) NULL,
	[CUS_COOP_ID] [nchar](10) NULL,
	[CUS_COOP_MEM_ID] [nchar](10) NULL,
	[CUS_COOP_REG_ON] [nchar](10) NULL,
	[CUS_GUR1_ID] [nchar](10) NULL,
	[CUS_GUR1_NAME] [nchar](10) NULL,
	[CUS_GUR1_RELATION] [nchar](10) NULL,
	[CUS_GUR2_ID] [nchar](10) NULL,
	[CUS_GUR2_NAME] [nchar](10) NULL,
	[CUS_GUR2_RELATION] [nchar](10) NULL,
	[CUS_GUR3_ID] [nchar](10) NULL,
	[CUS_GUR3_NAME] [nchar](10) NULL,
	[CUS_GUR3_RELATION] [nchar](10) NULL,
	[EMP_COOP_YES_NO] [nchar](10) NULL,
	[CUS_JOB] [nchar](10) NULL,
	[CUS_EPF] [nchar](10) NULL,
	[CUS_EMP_ADD1] [nchar](10) NULL,
	[CUS_EMP_ADD2] [nchar](10) NULL,
	[CUS_EMP_ADD3] [nchar](10) NULL,
	[CUS_EMP_ADD4] [nchar](10) NULL,
	[CUS_SOCITY_SEC] [nchar](10) NULL,
	[CUS_SOCIRY_SEC_NIC] [nchar](10) NULL,
	[CUS_SOCITY_SEC_APP] [smalldatetime] NULL,
	[CUS_SOCITY_CHAIR] [nchar](10) NULL,
	[CUS_SOCITY_CHAIR_NIC] [nchar](10) NULL,
	[CUS_SOCITY_CHAIR_APP] [smalldatetime] NULL,
 CONSTRAINT [PK_CUSTOMER1] PRIMARY KEY CLUSTERED 
(
	[CUS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GL_CHART_ACC]    Script Date: 02/05/2016 21:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GL_CHART_ACC](
	[GL_TYPE_ID] [varchar](10) NOT NULL,
	[GL_TYPE_NAME] [varchar](50) NULL,
	[GL_SUBTYPE_ID] [varchar](10) NULL,
	[GL_SUBTYPE_NAME] [varchar](50) NULL,
	[CHART_ACC_ID] [varchar](10) NOT NULL,
	[CHART_ACC_NAME] [varchar](50) NULL,
	[CHART_ACC_DEC] [varchar](50) NULL,
	[CHART_ACC_WHO] [varchar](20) NULL,
	[CHART_ACC_WHEN] [date] NULL,
 CONSTRAINT [PK_GL_MAIN] PRIMARY KEY CLUSTERED 
(
	[CHART_ACC_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GL_MAIN]    Script Date: 02/05/2016 21:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GL_MAIN](
	[GL_TYPE_ID] [varchar](10) NULL,
	[GL_TYPE_NAME] [varchar](50) NULL,
	[GL_SUB_TYPE_ID] [int] NULL,
	[GL_SUB_TYPE_NAME] [varchar](50) NULL,
	[CHAT_ACC_ID] [varchar](10) NULL,
	[CHAT_ACC_NAME] [varchar](50) NULL,
	[GL_ID] [varchar](10) NOT NULL,
	[GL_NAME] [varchar](50) NOT NULL,
	[GL_DEC] [varchar](50) NULL,
	[GL_ENT_WHO] [varchar](50) NULL,
	[GL_ENT_WHEN] [datetime] NULL,
	[GL_ACT] [int] NULL,
	[GL_CATG] [varchar](50) NULL,
	[GL_CATID] [int] NULL,
	[GL_ACV] [int] NULL,
 CONSTRAINT [PK_GL_SUB] PRIMARY KEY CLUSTERED 
(
	[GL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GL_TYPE]    Script Date: 02/05/2016 21:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GL_TYPE](
	[gltype_id] [varchar](10) NULL,
	[gltype] [varchar](50) NULL,
	[gltype_sub_id] [varchar](10) NOT NULL,
	[gltype_sub_name] [varchar](50) NULL,
	[gltype_sub_desc] [varchar](100) NULL,
	[gltype_sub_when] [datetime] NULL,
	[gltype_sub_who] [varchar](20) NOT NULL,
	[gltype_sub_active] [int] NULL,
 CONSTRAINT [PK_GL_TYPE] PRIMARY KEY CLUSTERED 
(
	[gltype_sub_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MAIN_CON]    Script Date: 02/05/2016 21:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAIN_CON](
	[MAIN_ID] [nchar](10) NULL,
	[MAIN_DATE] [smalldatetime] NULL,
	[MAIN_DONE_WHO] [nchar](10) NULL,
	[MAIN_DONE_WHEN] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[USERS]    Script Date: 02/05/2016 21:25:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USERS](
	[USER_ID] [int] IDENTITY(1,1) NOT NULL,
	[USER_NAME] [varchar](40) NOT NULL,
	[USER_PASSWD] [varchar](max) NOT NULL,
	[USER_FNAME] [varchar](50) NULL,
	[USER_MNAME] [varchar](50) NULL,
	[USER_LNAME] [varchar](50) NULL,
	[USER_BRN_CODE] [int] NULL,
	[USER_ADD1] [varchar](50) NULL,
	[USER_ADD2] [varchar](50) NULL,
	[USER_ADD3] [varchar](50) NULL,
	[USER_ADD4] [varchar](50) NULL,
	[USER_JOIN_DATE] [date] NULL,
	[USER_BDATE] [date] NULL,
	[USER_EMP_ID] [nchar](10) NULL,
	[USER_MARR_STATUS] [nchar](10) NULL,
	[USER_NIC] [nchar](10) NULL,
	[USER_CRA_WHO] [nchar](10) NULL,
	[USER_CRA_WHEN] [smalldatetime] NULL,
	[USER_LAST_MOD_WHO] [nchar](10) NULL,
	[USER_LAST_MOD_WHEN] [nchar](10) NULL,
	[USER_LAST_SUCCES_LOGIN] [nchar](10) NULL,
	[UNSUCC_LOGIN] [nchar](10) NULL,
	[USER_USER_ROLE] [nchar](10) NULL,
 CONSTRAINT [PK_dbo.USERS] PRIMARY KEY CLUSTERED 
(
	[USER_ID] ASC,
	[USER_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[USERS]  WITH CHECK ADD  CONSTRAINT [FK_USERS_BRNCHES] FOREIGN KEY([USER_BRN_CODE])
REFERENCES [dbo].[BRNCHES] ([BRN_CODE])
GO
ALTER TABLE [dbo].[USERS] CHECK CONSTRAINT [FK_USERS_BRNCHES]
GO
USE [master]
GO
ALTER DATABASE [COREBANKER1] SET  READ_WRITE 
GO
