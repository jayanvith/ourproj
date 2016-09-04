<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserCreation.aspx.cs" Inherits="UserCreation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 801px;
            height: 164px;
            position: absolute;
            top: 37px;
            left: 83px;
            z-index: 1;
        }
        .style2
        {
            height: 6px;
        }
        .style3
        {
            position: absolute;
            top: 19px;
            left: 93px;
            z-index: 1;
        }
        .style4
        {
            position: absolute;
            top: 54px;
            left: 92px;
            z-index: 1;
            height: 14px;
        }
        .style5
        {
            position: absolute;
            top: 93px;
            left: 44px;
            z-index: 1;
            height: 13px;
        }
        .style6
        {
            position: absolute;
            top: 132px;
            left: 85px;
            z-index: 1;
            height: 15px;
        }
        .style7
        {
            position: absolute;
            top: 14px;
            left: 84px;
            z-index: 1;
        }
        .style8
        {
            position: absolute;
            top: 18px;
            left: 202px;
            z-index: 1;
            width: 166px;
        }
        .style9
        {
            position: absolute;
            top: 55px;
            left: 203px;
            z-index: 1;
            height: 22px;
            width: 161px;
        }
        .style10
        {
            position: absolute;
            top: 91px;
            left: 204px;
            z-index: 1;
            height: 22px;
            width: 161px;
        }
        .style11
        {
            position: absolute;
            top: 127px;
            left: 206px;
            z-index: 1;
            width: 164px;
            height: 21px;
        }
        .style12
        {
            width: 869px;
            height: 291px;
            position: absolute;
            top: 219px;
            left: 32px;
            z-index: 1;
        }
        .style13
        {
            position: absolute;
            top: 204px;
            left: 35px;
            z-index: 1;
            width: 176px;
        }
        .style14
        {
            z-index: 1;
            left: 20px;
            top: 67px;
            position: absolute;
        }
        .style15
        {
            z-index: 1;
            left: 139px;
            top: 69px;
            position: absolute;
            height: 25px;
            width: 144px;
        }
        .style16
        {
            z-index: 1;
            left: 19px;
            top: 115px;
            position: absolute;
        }
        .style17
        {
            z-index: 1;
            left: 137px;
            top: 117px;
            position: absolute;
            height: 24px;
            width: 146px;
        }
        .style18
        {
            z-index: 1;
            left: 20px;
            top: 161px;
            position: absolute;
        }
        .style19
        {
            z-index: 1;
            left: 140px;
            top: 161px;
            position: absolute;
            height: 20px;
            width: 146px;
        }
        .style20
        {
            z-index: 1;
            left: 142px;
            top: 216px;
            position: absolute;
            height: 20px;
            width: 143px;
        }
        .style21
        {
            z-index: 1;
            left: 367px;
            top: 75px;
            position: absolute;
        }
        .style22
        {
            z-index: 1;
            left: 455px;
            top: 72px;
            position: absolute;
            height: 23px;
            width: 231px;
        }
        .style23
        {
            z-index: 1;
            left: 16px;
            top: 217px;
            position: absolute;
        }
        .style24
        {
            z-index: 1;
            left: 458px;
            top: 107px;
            position: absolute;
            height: 23px;
            width: 229px;
        }
        .style25
        {
            z-index: 1;
            left: 458px;
            top: 143px;
            position: absolute;
            height: 18px;
            width: 227px;
        }
        .style26
        {
            z-index: 1;
            left: 456px;
            top: 174px;
            position: absolute;
            height: 21px;
            width: 225px;
                
        }
        
         .style27
        {
            z-index: 1;
            left: 192px;
            top: 531px;
            position: absolute;
            height: 28px;
            width: 97px;
        }
        .style28
        {
            z-index: 1;
            left: 304px;
            top: 531px;
            position: absolute;
            height: 30px;
            width: 91px;
        }
        .style29
        {
            z-index: 1;
            left: 414px;
            top: 532px;
            position: absolute;
            height: 28px;
        }
    
             
    </style>

    <style type="text/css">
        
        .JanzStyle .ajax__tab_header
        {
            font-family: "Helvetica Neue" , Arial, Sans-Serif;
            font-size: 14px;
            font-weight:bold;
            display: block;

        }
        .JanzStyle .ajax__tab_header .ajax__tab_outer
        {
            border-color: #222;
            color: #222;
            padding-left: 10px;
            margin-right: 3px;
            border:solid 1px #d7d7d7;
        }
        .JanzStyle .ajax__tab_header .ajax__tab_inner
        {
            border-color: #666;
            color: #000;
            padding: 3px 10px 2px 0px;
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
            background-color: #006699;
            border-top-width: 0;
            border: solid 1px #d7d7d7;
            border-top-color: #fff;
        }
    
    
    
    
        .JanzStyle
        {}
        .JanzStyle
        {}
        .JanzStyle
        {}
       
    
    
    
    </style>







    <link href="Styles/ajax.css" rel="stylesheet" type="text/css" />
</head>
<body bgcolor="#009999" style="height: 10px">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <p class="style2">
        <asp:Label ID="Label5" runat="server" CssClass="style7" Text="Basic Infomation" 
            Font-Bold="True"></asp:Label>
    </p>
    <asp:Panel ID="Panel1" runat="server" BorderColor="Black" BorderStyle="Solid" 
        BorderWidth="1px" CssClass="style1">
        <asp:Label ID="Label1" runat="server" CssClass="style3" Text="User ID"></asp:Label>
        <asp:Label ID="Label2" runat="server" CssClass="style4" Text="Password"></asp:Label>
        <asp:Label ID="Label3" runat="server" CssClass="style5" 
            Text="Reconfirm Password"></asp:Label>
        <asp:Label ID="Label4" runat="server" CssClass="style6" Text="User Roll"></asp:Label>
        <asp:TextBox ID="txtUname" runat="server" CssClass="style8" Height="19px" 
            Width="180px"></asp:TextBox>
        <asp:TextBox ID="txtPasswd" runat="server" CssClass="style9" Height="19px" 
            Width="180px" TextMode="Password"></asp:TextBox>
        <asp:TextBox ID="txtConfPasswd" runat="server" CssClass="style10" Height="19px" 
            Width="180px" TextMode="Password"></asp:TextBox>
        <asp:DropDownList ID="cmbUserRole" runat="server" CssClass="style11" 
            Height="22px" Width="180px">
        </asp:DropDownList>
        <p>
            <asp:Label ID="lblEntUser" runat="server" 
                style="z-index: 1; position: absolute; top: -19px; left: 961px; height: 19px" 
                Text="Label"></asp:Label>
        </p>
      
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" BorderColor="Black" BorderStyle="Solid" 
        BorderWidth="1px" CssClass="style12" Height="300px">
        <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" 
            Font-Names="Arial" Font-Size="Large" Height="275px" Width="801px" 
             ScrollBars="Auto" 
            ForeColor="Black" CssClass="JanzStyle">
            <ajaxToolkit:TabPanel runat="server" HeaderText="Genaral Information" ID="TabPanel1" >
                <HeaderTemplate>
                    Genaral Information
                </HeaderTemplate>
                <ContentTemplate>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                        ID="Label25" runat="server" CssClass="style21" Text="Address"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtAdd1" runat="server" CssClass="style22" Height="22px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    <asp:Label ID="Label23" runat="server" CssClass="style16" Text="Middle Name"></asp:Label>
                    <asp:TextBox ID="txtAdd2" runat="server" CssClass="style24" Height="22px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label24" runat="server" CssClass="style18" Text="Last Name"></asp:Label>
                    <asp:TextBox ID="txtAdd3" runat="server" CssClass="style25" Height="22px" 
                        style="left: 456px; top: 144px; bottom: 138px"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="txtAdd4" runat="server" CssClass="style26" Height="22px"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label26" runat="server" CssClass="style23" Text="Birth Day"></asp:Label>
                    <asp:Button ID="Button5" runat="server" BackColor="#0033CC" 
                        style="z-index: 1; position: absolute; top: 217px; left: 341px; height: 17px; width: 40px" 
                        Text="..." />
                    <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" 
                        PopupButtonID="Button5" TargetControlID="txtBdate" Format="yyyy-MM-dd" 
                        PopupPosition="TopRight" BehaviorID="_content_CalendarExtender2" />



                    <br />
                    &nbsp;&nbsp;<asp:TextBox ID="txtBdate" runat="server" CssClass="style20" 
                        Width="180px" BorderColor="#999999" ReadOnly="True" 
                        style="left: 142px; top: 216px" Height="22px"></asp:TextBox>
                    <br />
                    <br />
                    &nbsp;&nbsp;
                    <asp:TextBox ID="txtLname" runat="server" CssClass="style19" Width="180px" 
                        Height="22px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtMname" runat="server" CssClass="style17" Width="180px" 
                        Height="22px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;
                    <asp:Label ID="Label22" runat="server" CssClass="style14" Text="First Name"></asp:Label>
                    <asp:TextBox ID="txtFname" runat="server" CssClass="style15" Width="180px" 
                        Height="22px"></asp:TextBox>
                    <br />
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="Banking Information" >
                <HeaderTemplate>
                    Banking Information
                </HeaderTemplate>
                <ContentTemplate>
                    <asp:Label ID="Label17" runat="server" 
                        style="z-index: 1; position: absolute; top: 72px; left: 24px" 
                        Text="Bank Join Date"></asp:Label>
                    <asp:Label ID="Label18" runat="server" 
                        style="z-index: 1; position: absolute; top: 132px; left: 23px" 
                        Text="Employee ID"></asp:Label>
                    <asp:TextBox ID="txtEmpID" runat="server" 
                        
                        
                        style="z-index: 1; position: absolute; top: 130px; left: 157px; width: 152px; height: 24px" 
                        Height="22px"></asp:TextBox>
                    <asp:TextBox ID="txtBankJoin" runat="server" 
                        
                        
                        style="z-index: 1; position: absolute; top: 73px; left: 159px; width: 154px; height: 21px" 
                        ReadOnly="True" Height="22px"></asp:TextBox>
                    
                    <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" 
                        PopupButtonID="Button4" TargetControlID="txtBankJoin" Format="yyyy-MM-dd" 
                        BehaviorID="_content_CalendarExtender1" />
                    
                    <asp:Button ID="Button4" runat="server" BackColor="#0066FF" 
                        style="z-index: 1; position: absolute; top: 73px; left: 329px; height: 20px" 
                        Text="...." Width="50px" />
                    
                    
                    
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel ID="TabPanel3" runat="server" HeaderText="Other Information">
                <HeaderTemplate>
                    Other Information
                </HeaderTemplate>
                <ContentTemplate>
                    <asp:Label ID="Label19" runat="server" Text="Marrage Status" 
                        style="z-index: 1; position: absolute; top: 72px; left: 22px"></asp:Label>
                    <asp:DropDownList ID="cmbMarrageStatus" runat="server" 
                        
                        style="z-index: 1; position: absolute; top: 74px; left: 180px; height: 23px; width: 138px">
                        <asp:ListItem>Married</asp:ListItem>
                        <asp:ListItem>Single</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label20" runat="server" 
                        style="z-index: 1; position: absolute; top: 133px; left: 9px" 
                        Text="NIC"></asp:Label>
                    <asp:Label ID="Label21" runat="server" 
                        style="z-index: 1; position: absolute; top: 156px; left: 11px; height: 21px" 
                        Text="Number"></asp:Label>
                    <asp:TextBox ID="txtNIC" runat="server" BorderColor="#CCCCCC" 
                        
                        
                        style="z-index: 1; position: absolute; top: 140px; left: 174px; width: 146px; height: 25px" 
                        Height="22px"></asp:TextBox>
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
        </ajaxToolkit:TabContainer>
    </asp:Panel>
    <asp:Label ID="Label6" runat="server" CssClass="style13" 
        Text="Other Information" Font-Bold="True" style="left: 35px; top: 203px"></asp:Label>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:Button ID="Button1" runat="server" CssClass="style27" Height="30px" 
        Text="Save" Width="100px" onclick="Button1_Click" 
        style="left: 192px; top: 531px" />
        <script type="text/javascript"  />
    <asp:Button ID="Button2" runat="server" CssClass="style28" Height="30px" 
        Text="Cancel" Width="100px" />
    <asp:Button ID="Button3" runat="server" CssClass="style29" Height="30px" 
        Text="Edit" Width="100px" />
    <asp:Label ID="Label27" runat="server" 
        style="z-index: 1; position: absolute; top: 55px; left: 527px" Text="Branch"></asp:Label>
    <asp:TextBox ID="txtBrnCode" runat="server" 
        style="z-index: 1; position: absolute; top: 54px; left: 573px" Width="100px"></asp:TextBox>
    <asp:Label ID="lblBrnName" runat="server" 
        style="z-index: 1; position: absolute; top: 54px; left: 690px" Text="Label"></asp:Label>
    </form>
</body>
</html>
