<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Customer.aspx.cs" Inherits="Customer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style3
        {
            z-index: 1;
            left: 75px;
            top: 32px;
            position: absolute;
        }
        .style4
        {
            z-index: 1;
            left: 74px;
            top: 79px;
            position: absolute;
            height: 18px;
        }
        .style5
        {
            z-index: 1;
            left: 77px;
            top: 125px;
            position: absolute;
        }
        .style6
        {
            z-index: 1;
            left: 185px;
            top: 31px;
            position: absolute;
            height: 22px;
            width: 160px;
        }
        .style7
        {
            z-index: 1;
            left: 185px;
            top: 79px;
            position: absolute;
            height: 22px;
            width: 160px;
        }
        .style8
        {
            z-index: 1;
            left: 185px;
            top: 125px;
            position: absolute;
            height: 22px;
            width: 160px;
        }
        .style9
        {
            z-index: 1;
            left: 66px;
            top: 17px;
            position: absolute;
            height: 184px;
            width: 887px;
        }
        .style10
        {
            z-index: 1;
            left: 5px;
            top: 146px;
            position: absolute;
            height: 18px;
        }
        .style11
        {
            z-index: 1;
            left: 116px;
            top: 148px;
            position: absolute;
            height: 21px;
            width: 245px;
            right: 518px;
        }
        .style12
        {
            z-index: 1;
            left: 564px;
            top: 11px;
            position: absolute;
            height: 18px;
        }
        .style13
        {
            z-index: 1;
            left: 640px;
            top: 7px;
            position: absolute;
            width: 180px;
            height:22px
        }
        .style14
        {
            z-index: 1;
            left: 565px;
            top: 52px;
            position: absolute;
        }
        .style15
        {
            z-index: 1;
            left: 640px;
            top: 47px;
            position: absolute;
            height: 22px;
            width: 180px;
        }
        .style16
        {
            z-index: 1;
            left: 565px;
            top: 97px;
            position: absolute;
            height: 18px;
        }
        .style17
        {
            z-index: 1;
            left: 640px;
            top: 92px;
            position: absolute;
            height: 22px;
            width: 180px;
        }
        .style18
        {
            z-index: 1;
            left: 569px;
            top: 138px;
            position: absolute;
        }
        .style19
        {
            z-index: 1;
            left: 640px;
            top: 137px;
            position: absolute;
            height: 22px;
            width: 180px;
        }
        .style20
        {
            z-index: 1;
            left: 60px;
            top: 222px;
            position: absolute;
            height: 284px;
            width: 897px;
        }
        .style33
        {
            z-index: 1;
            left: 358px;
            top: 505px;
            position: absolute;
            width: 94px;
            height: 28px;
        }
        .style34
        {
            z-index: 1;
            left: 534px;
            top: 526px;
            position: absolute;
            height: 26px;
            width: 84px;
        }
        .style35
        {
            z-index: 1;
            left: 1015px;
            top: 15px;
            position: absolute;
        }
        .style36
        {
            z-index: 1;
            left: 1017px;
            top: 41px;
            position: absolute;
        }
        .style37
        {
            z-index: 1;
            left: 989px;
            top: 91px;
            position: absolute;
            height: 104px;
            width: 180px;
        }
        .style38
        {
            z-index: 1;
            left: 25px;
            top: 10px;
            position: absolute;
        }
        .style39
        {
            z-index: 1;
            left: 14px;
            top: 38px;
            position: absolute;
            height: 22px;
            width: 136px;
        }
        .style40
        {
            z-index: 1;
            left: 998px;
            top: 68px;
            position: absolute;
            width: 154px;
        }
        .style41
        {
            z-index: 1;
            left: 636px;
            top: 525px;
            position: absolute;
            height: 25px;
            width: 80px;
        }
        </style>
        <style type="text/css">
            
                    .JanzStyle .ajax__tab_header
        {
            font-family: "Helvetica Neue" , Arial, Sans-Serif;
            font-size: 14px;
            font-weight:bold;
            display: block;
            background-color :transparent
            

        }
        .JanzStyle .ajax__tab_header .ajax__tab_outer
        {
            border-color: #222;
            color: #222;
            padding-left: 10px;
            margin-right: 3px;
            border:solid 1px #d7d7d7;
            border-color:inherit;
            
           
            
        }
        .JanzStyle .ajax__tab_header .ajax__tab_inner
        {
            border-color: #666;
            color: #000;
            padding: 3px 10px 2px 0px;
            font-style :normal;
        }
        
         .JanzStyle .ajax__tab_active .ajax__tab_inner
        {
            color:#fff;
            border-color: #333;
        }
    
     .JanzStyle .ajax__tab_body
        {
            font-family: verdana,tahoma,helvetica;
            font-size: 10pt;
            background-color: #009999;
            border-top-width: 0;
            border: solid 1px #d7d7d7;
            border-top-color: #fff;
        }
        
        .JanzStyle .ajax__tab_active .ajax__tab_outer
  {
     color: white;
     font-weight: bold;
     border-color: #BBB; /*color #1*/
     background-color:White;
     /*color #2*/
     /*z-index: 3;*/
     padding: 1px 10px 0px 10px;
     border-bottom-width: 0px;
  }
 .JanzStyle .ajax__tab_active .ajax__tab_inner
  {
     color: white;
     border-color: #333;
     padding: 0px 10px 0px 10px;
    
  }
  
  
  
  
  
  
  
  
       
        .JanzStyle
        {}
        .JanzStyle
        {}
        .JanzStyle
        {}
     .JanzStyle
            {
                margin-top: 9px;
            }
            .JanzStyle
            {
                margin-left: 14px;
            }
       
        
            .JanzStyle
            {}
            .JanzStyle
            {}
            .JanzStyle
            {}
       
        
            .style42
            {
                z-index: 1;
                left: 21px;
                top: 105px;
                position: absolute;
            }
            .style43
            {
                z-index: 1;
                left: 99px;
                top: 99px;
                position: absolute;
                height: 22px;
                width: 165px;
            }
            .style45
            {
                z-index: 1;
                left: 97px;
                top: 133px;
                position: absolute;
                height: 22px;
                width: 165px;
            }
            .style46
            {
                z-index: 1;
                left: 98px;
                top: 169px;
                position: absolute;
                height: 22px;
                width: 165px;
            }
            .style47
            {
                z-index: 1;
                left: 98px;
                top: 206px;
                position: absolute;
                height: 22px;
                width: 165px;
                right: 591px;
            }
            .style48
            {
                z-index: 1;
                top: 61px;
                position: absolute;
                left: 564px;
            }
            .style49
            {
                z-index: 1;
                left: 675px;
                top: 58px;
                position: absolute;
                height: 22px;
                width: 180px;
            }
            .style50
            {
                z-index: 1;
                left: 565px;
                top: 109px;
                position: absolute;
            }
            .style51
            {
                z-index: 1;
                left: 679px;
                top: 113px;
                position: absolute;
                height: 22px;
                width: 180px;
            }
            .style52
            {
                z-index: 1;
                left: 30px;
                top: 164px;
                position: absolute;
                height: 21px;
                width: 51px;
            }
            .style53
            {
                z-index: 1;
                left: 121px;
                top: 63px;
                position: absolute;
                height: 22px;
                width: 142px;
            }
            .style54
            {
                z-index: 1;
                left: 294px;
                top: 61px;
                position: absolute;
            }
            .style55
            {
                z-index: 1;
                left: 29px;
                top: 118px;
                position: absolute;
            }
            .style56
            {
                z-index: 1;
                left: 121px;
                top: 116px;
                position: absolute;
                height: 22px;
                width: 142px;
            }
            .style57
            {
                z-index: 1;
                left: 29px;
                top: 67px;
                position: absolute;
                height: 18px;
                width: 35px;
            }
            .style58
            {
                z-index: 1;
                left: 121px;
                top: 170px;
                position: absolute;
                height: 22px;
                width: 142px;
            }
            .style59
            {
                z-index: 1;
                left: 32px;
                top: 189px;
                position: absolute;
            }
            .style60
            {
                z-index: 1;
                left: 22px;
                top: 127px;
                position: absolute;
            }
            .style61
            {
                z-index: 1;
                left: 567px;
                top: 131px;
                position: absolute;
            }
       
        
            .style62
            {
                z-index: 1;
                left: 562px;
                top: 177px;
                position: absolute;
            }
            .style63
            {
                z-index: 1;
                left: 680px;
                top: 174px;
                position: absolute;
                height: 22px;
                width: 176px;
            }
            .style64
            {
                z-index: 1;
                left: 28px;
                top: 69px;
                position: absolute;
            }
            .style65
            {
                z-index: 1;
                left: 127px;
                top: 70px;
                position: absolute;
                width: 74px;
            }
            .style66
            {
                z-index: 1;
                left: 215px;
                top: 71px;
                position: absolute;
                height: 18px;
                width: 39px;
                text-align: justify;
            }
            .style67
            {
                z-index: 1;
                left: 267px;
                top: 72px;
                position: absolute;
            }
            .style68
            {
                z-index: 1;
                left: 510px;
                top: 71px;
                position: absolute;
            }
            .style69
            {
                z-index: 1;
                left: 568px;
                top: 71px;
                position: absolute;
            }
            .style70
            {
                z-index: 1;
                left: 592px;
                top: 68px;
                position: absolute;
                height: 22px;
                width: 132px;
            }
       
        
            .style71
            {
                z-index: 1;
                left: 24px;
                top: 124px;
                position: absolute;
            }
            .style72
            {
                z-index: 1;
                left: 126px;
                top: 126px;
                position: absolute;
                width: 74px;
            }
            .style73
            {
                z-index: 1;
                left: 215px;
                top: 128px;
                position: absolute;
                height: 18px;
                width: 39px;
                text-align: justify;
            }
            .style74
            {
                z-index: 1;
                left: 267px;
                top: 128px;
                position: absolute;
            }
            .style75
            {
                z-index: 1;
                left: 507px;
                top: 125px;
                position: absolute;
            }
            .style76
            {
                z-index: 1;
                left: 593px;
                top: 123px;
                position: absolute;
                height: 22px;
                width: 134px;
            }
            .style77
            {
                z-index: 1;
                left: 23px;
                top: 180px;
                position: absolute;
            }
            .style78
            {
                z-index: 1;
                left: 128px;
                top: 179px;
                position: absolute;
                width: 74px;
            }
            .style79
            {
                z-index: 1;
                left: 215px;
                top: 180px;
                position: absolute;
                height: 18px;
                width: 39px;
                text-align: justify;
            }
            .style80
            {
                z-index: 1;
                left: 262px;
                top: 179px;
                position: absolute;
            }
            .style81
            {
                z-index: 1;
                left: 507px;
                top: 178px;
                position: absolute;
            }
            .style82
            {
                z-index: 1;
                left: 594px;
                top: 172px;
                position: absolute;
                height: 22px;
                width: 132px;
            }
       
        
            .style83
            {
                z-index: 1;
                left: 677px;
                top: 175px;
                position: absolute;
                height:22px;
                width:180px;
            }
       
        
            .style84
            {
                z-index: 1;
                left: 25px;
                top: 64px;
                position: absolute;
            }
            .style85
            {
                z-index: 1;
                left: 98px;
                top: 63px;
                position: absolute;
                height: 22px;
                width: 150px;
            }
            .style86
            {
                z-index: 1;
                left: 23px;
                top: 64px;
                position: absolute;
            }
            .style87
            {
                z-index: 1;
                left: 126px;
                top: 62px;
                position: absolute;
                height: 22px;
                width: 95px;
            }
            .style88
            {
                z-index: 1;
                left: 21px;
                top: 135px;
                position: absolute;
            }
            .style89
            {
                z-index: 1;
                left: 125px;
                top: 130px;
                position: absolute;
                height: 22px;
                width: 218px;
            }
            .style90
            {
                z-index: 1;
                left: 538px;
                top: 64px;
                position: absolute;
            }
            .style91
            {
                z-index: 1;
                left: 645px;
                top: 101px;
                position: absolute;
                width:180px;
                height:22px;
            }
            .style92
            {
                z-index: 1;
                left: 644px;
                top: 63px;
                position: absolute;
                width:180px;
                height:22px
                
                
            }
            .style93
            {
                z-index: 1;
                left: 646px;
                top: 141px;
                position: absolute;
                width:180px;
                height:22px
            }
            .style94
            {
                z-index: 1;
                left: 647px;
                top: 182px;
                position: absolute;
                width:180px;
                height:22px
            }
            .style95
            {
                z-index: 1;
                left: 21px;
                top: 191px;
                position: absolute;
            }
            .style96
            {
                z-index: 1;
                left: 124px;
                top: 187px;
                position: absolute;
                height:22px;
            }
       
        
            .style97
            {
                z-index: 1;
                left: 24px;
                top: 85px;
                position: absolute;
            }
       
        
            .style98
            {
                z-index: 1;
                left: 24px;
                top: 68px;
                position: absolute;
            }
            .style99
            {
                z-index: 1;
                left: 132px;
                top: 66px;
                position: absolute;
                height: 25px;
                width: 258px;
            }
            .style100
            {
                z-index: 1;
                left: 415px;
                top: 67px;
                position: absolute;
            }
            .style101
            {
                z-index: 1;
                left: 459px;
                top: 65px;
                position: absolute;
                height: 22px;
                width: 153px;
            }
            .style102
            {
                z-index: 1;
                left: 634px;
                top: 65px;
                position: absolute;
            }
            .style103
            {
                z-index: 1;
                left: 637px;
                top: 86px;
                position: absolute;
            }
            .style104
            {
                z-index: 1;
                left: 703px;
                top: 67px;
                position: absolute;
            }
            .style105
            {
                z-index: 1;
                left: 26px;
                top: 132px;
                position: absolute;
            }
            .style106
            {
                z-index: 1;
                left: 134px;
                top: 131px;
                position: absolute;
                height: 23px;
                width: 256px;
            }
            .style107
            {
                z-index: 1;
                left: 416px;
                top: 129px;
                position: absolute;
            }
            .style108
            {
                z-index: 1;
                left: 460px;
                top: 128px;
                position: absolute;
                height: 22px;
                width: 153px;
            }
            .style109
            {
                z-index: 1;
                left: 636px;
                top: 124px;
                position: absolute;
            }
            .style110
            {
                z-index: 1;
                left: 636px;
                top: 142px;
                position: absolute;
            }
            .style111
            {
                z-index: 1;
                left: 704px;
                top: 130px;
                position: absolute;
            }
       
        
            .style112
            {
                z-index: 1;
                left: 563px;
                top: 233px;
                position: absolute;
            }
            .style113
            {
                z-index: 1;
                left: 678px;
                top: 230px;
                position: absolute;
                height: 23px;
                width: 125px;
            }
            .JanzStyle
            {}
            .JanzStyle
            {}
            .JanzStyle
            {}
            .JanzStyle
            {}
       
        
            .JanzStyle
            {}
       
        
        </style>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
</head>
<body bgcolor="#009999">
    <form id="form1" runat="server">
    <div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblUID" runat="server" CssClass="style35" Text="Label"></asp:Label>
    
    </div>
    <asp:Label ID="Label2" runat="server" CssClass="style3" Text="First Name"></asp:Label>
    <asp:Label ID="Label3" runat="server" CssClass="style4" Text="Middle Name"></asp:Label>
    <asp:Label ID="Label4" runat="server" CssClass="style5" Text="Last Name"></asp:Label>
    <asp:TextBox ID="txtFname" runat="server" CssClass="style6" Height="20px" 
        Width="200px" style="left: 185px; top: 27px" ></asp:TextBox>
    <asp:TextBox ID="txtMname" runat="server" CssClass="style7" Height="20px" 
        Width="200px"></asp:TextBox>
    <asp:TextBox ID="txtLname" runat="server" CssClass="style8" Height="20px" 
        Width="200px"></asp:TextBox>
    <asp:Panel ID="Panel1" runat="server" CssClass="style9" BorderColor="Black" 
        BorderStyle="Solid">
        <asp:Label ID="Label5" runat="server" CssClass="style10" 
    Text="Display Name"></asp:Label>
        <asp:TextBox ID="txtDisplayName" runat="server" CssClass="style11" 
            Height="20px"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" CssClass="style12" Text="NIC"></asp:Label>
        <asp:TextBox ID="txtNIC" runat="server" CssClass="style13" Height="20px" 
            Width="200px"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" CssClass="style14" Text="Birth Day"></asp:Label>
        <asp:TextBox ID="txtBdate" runat="server" CssClass="style15" Height="20px" 
            Width="200px"></asp:TextBox>
        <asp:Label ID="Label8" runat="server" CssClass="style16" Text="Gender"></asp:Label>
        <asp:DropDownList ID="cmbGender" runat="server" CssClass="style17" 
            Height="25px" Width="150px">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label9" runat="server" CssClass="style18" Text="Title"></asp:Label>
        <asp:DropDownList ID="cmdTitle" runat="server" CssClass="style19" 
            Height="25px" Width="150px">
            <asp:ListItem>Mr</asp:ListItem>
            <asp:ListItem>Mrs</asp:ListItem>
            <asp:ListItem>Miss</asp:ListItem>
            <asp:ListItem>Rev</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="btnSave" runat="server" CssClass="style33" Text="Save" />
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" BackColor="#009999" BorderColor="Black" 
        BorderStyle="Solid" CssClass="style20">
        <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" 
             CssClass="JanzStyle" Height="255px" Width="876px" ClientIDMode="Static" 
            ForeColor="Black" TabIndex="0" >
            <ajaxToolkit:TabPanel ID="TabPanel1" runat="server" 
                HeaderText="Contact Details">
                <HeaderTemplate>
                    Contact Details
                </HeaderTemplate>
                <ContentTemplate>
                    <asp:Label ID="Label17" runat="server" CssClass="style42" Text="Pemenant"></asp:Label>
                    <asp:TextBox ID="txtAdd1" runat="server" CssClass="style43" Height="22px" 
                        Width="200px"></asp:TextBox>
                    <asp:Label ID="Label18" runat="server" CssClass="style48" Text="Mobile Number"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label37" runat="server" CssClass="style84" Text="Type"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="cmbType" runat="server" CssClass="style85">
                        <asp:ListItem>Personal</asp:ListItem>
                        <asp:ListItem>Cooparative</asp:ListItem>
                        <asp:ListItem>Socity</asp:ListItem>
                        <asp:ListItem>Company(Pvt)</asp:ListItem>
                        <asp:ListItem>Company(PLC)</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtMobNu" runat="server" CssClass="style49"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label25" runat="server" CssClass="style60" Text="Address"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtAdd2" runat="server" CssClass="style45" Height="22px" 
                        Width="200px"></asp:TextBox>
                    <asp:TextBox ID="txtAdd3" runat="server" CssClass="style46" Height="22px" 
                        Width="200px"></asp:TextBox>
                    <asp:TextBox ID="txtAdd4" runat="server" CssClass="style47" Height="22px" 
                        Width="200px"></asp:TextBox>
                    <asp:Label ID="Label19" runat="server" CssClass="style50" Text="Home Phone"></asp:Label>
                    <asp:TextBox ID="txtHomNu" runat="server" CssClass="style51"></asp:TextBox>
                    <asp:Label ID="Label26" runat="server" CssClass="style61" Text="Number"></asp:Label>
                    <asp:Label ID="Label27" runat="server" CssClass="style62" Text="E-Mail"></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="style83"></asp:TextBox>
                    <asp:Label ID="Label51" runat="server" CssClass="style112" 
                        Text="Marital Status"></asp:Label>
                    <asp:DropDownList ID="DropDownList4" runat="server" CssClass="style113">
                        <asp:ListItem>Single</asp:ListItem>
                        <asp:ListItem>Married</asp:ListItem>
                        <asp:ListItem>Divorced</asp:ListItem>
                    </asp:DropDownList>
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" 
                HeaderText="Membership Details">
                <HeaderTemplate>
                    Membership Details
                </HeaderTemplate>
                <ContentTemplate>
                    <asp:Label ID="Label23" runat="server" CssClass="style57" Text="Coop"></asp:Label>
                    <br />
                    <asp:Label ID="Label20" runat="server" CssClass="style52" Text="Registed"></asp:Label>
                    <asp:TextBox ID="txtCoopID" runat="server" CssClass="style53"></asp:TextBox>
                    <asp:Label ID="lblCoopName" runat="server" CssClass="style54" Text="Label"></asp:Label>
                    <asp:Label ID="Label22" runat="server" CssClass="style55" Text="Member ID"></asp:Label>
                    <asp:TextBox ID="txtCoopMemID" runat="server" CssClass="style56" 
                        style="left: 121px; top: 116px"></asp:TextBox>
                    <asp:TextBox ID="txtCoopMemReg" runat="server" CssClass="style58"></asp:TextBox>
                    <asp:Label ID="Label24" runat="server" CssClass="style59" Text="On"></asp:Label>
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel ID="TabPanel3" runat="server" HeaderText="Gurdiant Details...">
                <HeaderTemplate>
                   Gurdiant Details...
                </HeaderTemplate>
                <ContentTemplate>
                    <asp:Label ID="Label28" runat="server" CssClass="style64" Text="Guardian 1"></asp:Label>
                    <asp:TextBox ID="TextBox11" runat="server" CssClass="style65"></asp:TextBox>
                    <asp:Button ID="btnGur1Search" runat="server" CssClass="style66" 
                        Text="&gt;&gt;" BackColor="#663300" BorderStyle="None" />
                    <asp:Label ID="lblGur1Name" runat="server" CssClass="style67" Text="Label"></asp:Label>
                    <asp:Label ID="Label30" runat="server" CssClass="style68" Text="Relationship"></asp:Label>
                    
                    <br />
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="style70">
                        <asp:ListItem>Father</asp:ListItem>
                        <asp:ListItem>Mother</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label31" runat="server" CssClass="style71" Text="Guardian 2"></asp:Label>
                    <asp:TextBox ID="TextBox12" runat="server" CssClass="style72"></asp:TextBox>
                    <asp:Button ID="btnGur2Search" runat="server" CssClass="style73" 
                        Text="&gt;&gt;" BackColor="#663300" />
                    <asp:Label ID="lblGurName2" runat="server" CssClass="style74" Text="Label"></asp:Label>
                    <asp:Label ID="Label33" runat="server" CssClass="style75" Text="Relationship"></asp:Label>
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="style76">
                        <asp:ListItem>Father</asp:ListItem>
                        <asp:ListItem>Mother</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label34" runat="server" CssClass="style77" Text="Guardian 3"></asp:Label>
                    <asp:TextBox ID="TextBox13" runat="server" CssClass="style78"></asp:TextBox>
                    <asp:Button ID="btnGur3Search" runat="server" CssClass="style79" 
                        Text="&gt;&gt;" BackColor="#663300" />
                    <asp:Label ID="lblgurName3" runat="server" CssClass="style80" Text="Label"></asp:Label>
                    <asp:Label ID="Label36" runat="server" CssClass="style81" Text="Relationship"></asp:Label>
                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="style82">
                        <asp:ListItem>Father</asp:ListItem>
                        <asp:ListItem>Mother</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel ID="TabPanel4" runat="server" HeaderText="Job Details">
                <ContentTemplate>
                    <asp:Label ID="Label38" runat="server" CssClass="style86" Text="Employee This"></asp:Label>
                    <asp:DropDownList ID="cmbEmpCoop" runat="server" CssClass="style87">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label39" runat="server" CssClass="style88" Text="Job Name"></asp:Label>
                    <asp:TextBox ID="txtJobName" runat="server" CssClass="style89"></asp:TextBox>
                    <asp:Label ID="Label40" runat="server" CssClass="style90" Text="Address"></asp:Label>
                    <asp:TextBox ID="txtJobAdd2" runat="server" CssClass="style91"></asp:TextBox>
                    <asp:TextBox ID="txtJobAdd1" runat="server" CssClass="style92"></asp:TextBox>
                    <asp:TextBox ID="txtJobAdd3" runat="server" CssClass="style93"></asp:TextBox>
                    <asp:TextBox ID="txtJobAdd4" runat="server" CssClass="style94"></asp:TextBox>
                    <asp:Label ID="Label41" runat="server" CssClass="style95" Text="EPF Nu"></asp:Label>
                    <asp:TextBox ID="txtEPFNu" runat="server" CssClass="style96"></asp:TextBox>
                    <asp:Label ID="Label42" runat="server" CssClass="style97" Text="Cooparative"></asp:Label>
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel ID="TabPanel5" runat="server" HeaderText="Socity Details...">
                <ContentTemplate>
                    <asp:Label ID="Label43" runat="server" CssClass="style98" 
                        Text="Socity secretary"></asp:Label>
                    <asp:TextBox ID="TextBox14" runat="server" CssClass="style99"></asp:TextBox>
                    <asp:Label ID="Label44" runat="server" CssClass="style100" Text="NIC"></asp:Label>
                    <asp:TextBox ID="TextBox15" runat="server" CssClass="style101"></asp:TextBox>
                    <asp:Label ID="Label45" runat="server" CssClass="style102" Text="Appointed"></asp:Label>
                    <asp:Label ID="Label46" runat="server" CssClass="style103" Text="Date"></asp:Label>
                    <asp:TextBox ID="TextBox16" runat="server" CssClass="style104"></asp:TextBox>
                    <asp:Label ID="Label47" runat="server" CssClass="style105" 
                        Text="Socity Chairman"></asp:Label>
                    <asp:TextBox ID="TextBox17" runat="server" CssClass="style106"></asp:TextBox>
                    <asp:Label ID="Label48" runat="server" CssClass="style107" Text="NIC"></asp:Label>
                    <asp:TextBox ID="TextBox18" runat="server" CssClass="style108"></asp:TextBox>
                    <asp:Label ID="Label49" runat="server" CssClass="style109" Text="Appointed "></asp:Label>
                    <asp:Label ID="Label50" runat="server" CssClass="style110" Text="Date"></asp:Label>
                    <asp:TextBox ID="TextBox19" runat="server" CssClass="style111"></asp:TextBox>
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
        </ajaxToolkit:TabContainer>
    </asp:Panel>
    <asp:Button ID="btnExit" runat="server" CssClass="style34" Text="Exit" />
    <asp:Label ID="ibiBrnCode" runat="server" CssClass="style36" Text="Label"></asp:Label>
    <asp:Panel ID="Panel3" runat="server" BorderColor="Black" BorderStyle="Solid" 
        CssClass="style37">
        <asp:Label ID="Label15" runat="server" CssClass="style38" 
    Text="Customer ID"></asp:Label>
        <asp:TextBox ID="txtCusID" runat="server" CssClass="style39"></asp:TextBox>
    </asp:Panel>
    <asp:Label ID="Label16" runat="server" CssClass="style40" Font-Bold="True" 
        Text="Edit Customer Details"></asp:Label>
    <asp:Button ID="btnEdit" runat="server" CssClass="style41" Text="Edit" />
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    </form>
</body>
</html>
