<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserRoleAssign.aspx.cs" Inherits="UserRoleAssign" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            z-index: 1;
            left: 139px;
            top: 44px;
            position: absolute;
            height: 244px;
            width: 739px;
        }
        .style2
        {
            z-index: 1;
            left: 131px;
            top: 35px;
            position: absolute;
            height: 19px;
            width: 69px;
        }
        .style3
        {
            z-index: 1;
            left: 77px;
            top: 73px;
            position: absolute;
        }
        .style4
        {
            z-index: 1;
            left: 85px;
            top: 123px;
            position: absolute;
        }
        .style5
        {
            z-index: 1;
            left: 214px;
            top: 36px;
            position: absolute;
            height: 19px;
            width: 153px;
        }
        .style6
        {
            z-index: 1;
            left: 216px;
            top: 76px;
            position: absolute;
            height: 19px;
            width: 149px;
        }
        .style7
        {
            z-index: 1;
            left: 218px;
            top: 119px;
            position: absolute;
            height: 22px;
            width: 151px;
        }
        .style8
        {
            z-index: 1;
            left: 264px;
            top: 318px;
            position: absolute;
            height: 26px;
            width: 92px;
        }
        .style9
        {
            z-index: 1;
            left: 378px;
            top: 315px;
            position: absolute;
            height: 29px;
            width: 91px;
        }
        .style10
        {
            z-index: 1;
            left: 508px;
            top: 315px;
            position: absolute;
            height: 27px;
            width: 86px;
        }
    </style>
</head>
<body bgcolor="#009999">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Panel ID="Panel1" runat="server" BackColor="#009999" BorderColor="Black" 
        BorderStyle="Solid" CssClass="style1">
        <asp:Label ID="Label1" runat="server" CssClass="style2" 
    Text="User ID"></asp:Label>
        <asp:Label ID="Label2" runat="server" CssClass="style3" 
            Text="Existing User Role"></asp:Label>
        <asp:Label ID="Label3" runat="server" CssClass="style4" Text="New User Role ID"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" BorderColor="#999999" 
            CssClass="style5" Height="25px"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" BorderColor="#999999" 
            CssClass="style6" Height="25px"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" BorderColor="#999999" 
            CssClass="style7" Height="25px"></asp:TextBox>
    </asp:Panel>
    <asp:Button ID="Button1" runat="server" CssClass="style8" Text="Save" />
    <asp:Button ID="Button2" runat="server" CssClass="style9" Text="Clear" />
    <asp:Button ID="Button3" runat="server" CssClass="style10" Text="Close" />
    </form>
</body>
</html>
