<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Saving_main.aspx.cs" Inherits="Saving_main" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            z-index: 1;
            left: 161px;
            top: 43px;
            position: absolute;
            height: 20px;
            width: 101px;
            font-family:Arial;
            font-style:normal;
            font-size: 14px;
          
        }
        .style2
        {
            z-index: 1;
            left: 255px;
            top: 39px;
            position: absolute;
            height: 21px;
            width: 145px;
        }
        .style3
        {
            z-index: 1;
            left: 152px;
            top: 82px;
            position: absolute;
            font-family:Arial;
            font-size:medium;
            font-size: 14px;
        }
        .style4
        {
            z-index: 1;
            left: 257px;
            top: 80px;
            position: absolute;
            height: 22px;
            width: 200px;
            right: 414px;
        }
        .style5
        {
            z-index: 1;
            left: 1039px;
            top: 0px;
            position: absolute;
        }
        .style6
        {
            z-index: 1;
            left: 1043px;
            top: 26px;
            position: absolute;
            width: 32px;
        }
        .style7
        {
            z-index: 1;
            left: 87px;
            top: 127px;
            position: absolute;
            height: 260px;
            width: 848px;
        }
        .style10
        {
            z-index: 1;
            left: 266px;
            top: 410px;
            position: absolute;
            height: 26px;
            width: 83px;
            right: 594px;
        }
        .style11
        {
            z-index: 1;
            left: 362px;
            top: 411px;
            position: absolute;
            height: 24px;
            width: 80px;
        }
        .style12
        {
            z-index: 1;
            left: 464px;
            top: 411px;
            position: absolute;
            height: 24px;
            width: 74px;
        }
        .style13
        {
            z-index: 1;
            left: 12px;
            top: 56px;
            position: absolute;
            width: 105px;
            right: 731px;
            height: 50px;
        }
        .style14
        {
            z-index: 1;
            left: 11px;
            top: 123px;
            position: absolute;
            height: 21px;
        }
        .style15
        {
            z-index: 1;
            left: 18px;
            top: 169px;
            position: absolute;
            height: 48px;
            width: 88px;
        }
        .style16
        {
            z-index: 1;
            left: 486px;
            top: 62px;
            position: absolute;
            height: 36px;
            width: 88px;
        }
        .style17
        {
            z-index: 1;
            left: 126px;
            top: 61px;
            position: absolute;
        }
        .style18
        {
            z-index: 1;
            left: 122px;
            top: 125px;
            position: absolute;
            height: 22px;
            width: 127px;
        }
        .style19
        {
            z-index: 1;
            left: 129px;
            top: 174px;
            position: absolute;
            height: 20px;
            width: 140px;
        }
        .style20
        {
            z-index: 1;
            left: 587px;
            top: 72px;
            position: absolute;
            height: 19px;
            width: 137px;
        }
        .style21
        {
            z-index: 1;
            left: 290px;
            top: 172px;
            position: absolute;
            height: 19px;
        }
        .style22
        {
            z-index: 1;
            left: 296px;
            top: 194px;
            position: absolute;
        }
        .style23
        {
            z-index: 1;
            left: 28px;
            top: 67px;
            position: absolute;
        }
        .style24
        {
            z-index: 1;
            left: 101px;
            top: 67px;
            position: absolute;
            height: 27px;
            width: 140px;
        }
        .style25
        {
            z-index: 1;
            left: 316px;
            top: 64px;
            position: absolute;
        }
        .style26
        {
            z-index: 1;
            left: 30px;
            top: 117px;
            position: absolute;
        }
        .style27
        {
            z-index: 1;
            left: 29px;
            top: 140px;
            position: absolute;
        }
        .style28
        {
            z-index: 1;
            left: 105px;
            top: 127px;
            position: absolute;
            height: 22px;
            width: 136px;
        }
        .style29
        {
            z-index: 1;
            left: 318px;
            top: 119px;
            position: absolute;
        }
        .style30
        {
            z-index: 1;
            left: 24px;
            top: 185px;
            position: absolute;
        }
        .style31
        {
            z-index: 1;
            left: 107px;
            top: 185px;
            position: absolute;
            height: 21px;
            width: 140px;
        }
        .style32
        {
            z-index: 1;
            left: 322px;
            top: 178px;
            position: absolute;
        }
        .style33
        {
            z-index: 1;
            left: 19px;
            top: 76px;
            position: absolute;
        }
        .style34
        {
            z-index: 1;
            left: 202px;
            top: 78px;
            position: absolute;
        }
        .style35
        {
            z-index: 1;
            left: 332px;
            top: 78px;
            position: absolute;
        }
    </style>

     <style type="text/css">
            
                    .JanzStyle .ajax__tab_header
        {
            font-family:Arial;
            font-size: 14px;
            font-weight:bold;
            display: block;
            background-color :transparent;
            font-style:normal;
          
            

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
            font-family: Arial;
            font-size: 11pt;
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
       
        
            
        
         .JanzStyle
         {
             margin-top: 5px;
         }
         .JanzStyle
         {
             margin-left: 5px;
         }
       
        
            
        
        </style>
        











</head>
<body bgcolor="#009999">
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label3" runat="server" CssClass="style5" Text="lblUserID"></asp:Label>
    
    </div>
    <asp:Label ID="Label1" runat="server" CssClass="style1" Text="Savings Code"></asp:Label>
    <asp:TextBox ID="txtSavCode" runat="server" CssClass="style2" onkeypress="return isNumber(event)" MaxLength="3"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" CssClass="style3" Text="Savings Name"></asp:Label>
    <asp:TextBox ID="txtSaveName" runat="server" CssClass="style4" 
        style="left: 257px; right: 217px; top: 80px; width: 450px; height: 21px"></asp:TextBox>
    <asp:Label ID="Label4" runat="server" CssClass="style6" Text="lblBrnID"></asp:Label>
    <asp:Panel ID="Panel1" runat="server" CssClass="style7">
        <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" 
            CssClass="JanzStyle" ActiveTabIndex="0" Height="244px" Width="830px" 
            BorderColor="Black" BorderStyle="Solid" >
            <ajaxToolkit:TabPanel ID="TabPanel1" runat="server" HeaderText="Interest Calculation">
                <HeaderTemplate>
                    Interest Calculation
                </HeaderTemplate>
                <ContentTemplate>
                    <asp:Label ID="Label5" runat="server" CssClass="style13" Text="Interest Calculation Method"></asp:Label>
                    <asp:Label ID="Label6" runat="server" CssClass="style14" Text="Calculation On"></asp:Label>
                    <br />
                    <asp:Label ID="Label7" runat="server" CssClass="style15" 
                        Text="Interest Credit To"></asp:Label>
                    <asp:Label ID="Label8" runat="server" CssClass="style16" 
                        Text="Int.Calculation Amt"></asp:Label>
                    <asp:DropDownList ID="cmbCalOn" runat="server" CssClass="style18">
                        <asp:ListItem Value="0">Monthly</asp:ListItem>
                        <asp:ListItem Value="1">Quataly</asp:ListItem>
                        <asp:ListItem Value="3">Annualy</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="cmbIntCrdTo" runat="server" CssClass="style19" OnSelectedIndexChanged="cmbIntCrdTo_SelectedIndexChanged" AutoPostBack="true" >
                        <asp:ListItem Value="0">To Savings Account</asp:ListItem>
                        <asp:ListItem Value="1">Etc</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="cmbIntCalAmt" runat="server" CssClass="style20">
                        <asp:ListItem Value="0">Lowest Amount</asp:ListItem>
                        <asp:ListItem Value="1">Last Amount</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="txtIntCrdTo" runat="server" CssClass="style21" Visible="False"></asp:TextBox>
                    <asp:Label ID="lblIntCrdTo" runat="server" CssClass="style22" Text="Label" 
                        Visible="False"></asp:Label>
                    <asp:DropDownList ID="cmbIntCalMeth" runat="server" style="z-index: 1; left: 127px; top: 66px; position: absolute; height: 16px; width: 127px">
                        <asp:ListItem Value="0">Method-0</asp:ListItem>
                        <asp:ListItem Value="1">Mehod-1</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="btnIntCrd" runat="server" BackColor="#0033CC" style="z-index: 1; left: 427px; top: 174px; position: absolute; height: 18px; width: 34px" Text="Button" Visible="False" />
                    <asp:Label ID="Label18" runat="server" style="z-index: 1; left: 471px; top: 128px; position: absolute" Text="Minimum Amount"></asp:Label>
                    <asp:Label ID="Label19" runat="server" style="z-index: 1; left: 468px; top: 150px; position: absolute" Text="For Int Cal"></asp:Label>
                    <asp:TextBox ID="txtMinAmtInt" runat="server" style="z-index: 1; left: 589px; top: 137px; position: absolute; width: 132px"></asp:TextBox>
                    
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="Genaral Ledger">
                <HeaderTemplate>
                    Genaral Ledger
                </HeaderTemplate>
                <ContentTemplate>
                    <asp:Label ID="Label10" runat="server" CssClass="style23" Text="GL Code"></asp:Label>
                    <asp:TextBox ID="txtGlCode" runat="server" CssClass="style24"></asp:TextBox>
                    <asp:Label ID="lblGL" runat="server" CssClass="style25" Text="Label"></asp:Label>
                    <asp:Label ID="Label12" runat="server" CssClass="style26" Text="Interest"></asp:Label>
                    <asp:Label ID="Label13" runat="server" CssClass="style27" Text="GL"></asp:Label>
                    <asp:TextBox ID="txtIntGL" runat="server" CssClass="style28"></asp:TextBox>
                    <asp:Label ID="lblIntGL" runat="server" CssClass="style29" Text="Label"></asp:Label>
                    <asp:Label ID="Label15" runat="server" CssClass="style30" Text="Penalty/Tax"></asp:Label>
                    <asp:TextBox ID="txtTaxGL" runat="server" CssClass="style31" 
                        style="left: 106px; top: 185px"></asp:TextBox>
                    <asp:Label ID="lblTaxGL" runat="server" CssClass="style32" Text="Label"></asp:Label>
                    <asp:Button ID="Button5" runat="server" BackColor="Blue" style="z-index: 1; left: 255px; top: 66px; position: absolute; height: 15px; width: 32px" Text="Button" />
                    <asp:Button ID="Button6" runat="server" BackColor="Blue" style="z-index: 1; left: 259px; top: 127px; position: absolute; height: 14px; width: 26px" Text="Button" />
                    <asp:Button ID="Button7" runat="server" BackColor="Blue" style="z-index: 1; left: 259px; top: 185px; position: absolute; height: 14px; width: 26px" Text="Button" />
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel ID="TabPanel3" runat="server" HeaderText="Other">
                <ContentTemplate>
                    <asp:Label ID="Label17" runat="server" CssClass="style33" 
                        Text="Account Numer Genaration"></asp:Label>
                  
                    <asp:RadioButton ID="rbtAuto" runat="server" Checked="True" style="z-index: 1; left: 208px; top: 76px; position: absolute" Text="Automatic" />
                    <asp:RadioButton ID="rbtManually" runat="server" style="z-index: 1; left: 332px; top: 73px; position: absolute" Text="Manually" />
                    <asp:Panel ID="Panel2" runat="server" style="z-index: 1; left: 193px; top: 70px; position: absolute; height: 32px; width: 269px">
                    </asp:Panel>
                  
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
        </ajaxToolkit:TabContainer>
    </asp:Panel>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:Button ID="Button1" runat="server" CssClass="style10" Text="Save" OnClick="Button1_Click" />
    <asp:Button ID="Button3" runat="server" CssClass="style12" Text="Edit" />
    <asp:Button ID="Button2" runat="server" CssClass="style11" Text="Exit" />
         <script type="text/javascript" >
         function isNumber(evt) {
             evt = (evt) ? evt : window.event;
             var charCode = (evt.which) ? evt.which : evt.keyCode;
             if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                 return false;
             }
             return true;
         }

    
    
    
    </script>
        <asp:Button ID="BtnNewID" runat="server" style="z-index: 1; left: 414px; top: 39px; position: absolute; right: 450px" Text="New ID" OnClick="BtnNewID_Click"  />
    </form>
</body>
</html>
