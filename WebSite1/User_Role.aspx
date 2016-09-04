<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User_Role.aspx.cs" Inherits="User_Role" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            z-index: 1;
            left: 103px;
            top: 89px;
            position: absolute;
            height: 190px;
            width: 749px;
        }
        .style2
        {
            z-index: 1;
            left: 77px;
            top: 52px;
            position: absolute;
        }
        .style3
        {
            z-index: 1;
            left: 64px;
            top: 95px;
            position: absolute;
        }
        .style4
        {
            z-index: 1;
            left: 175px;
            top: 52px;
            position: absolute;
            height: 23px;
            width: 175px;
        }
        .style5
        {
            z-index: 1;
            left: 177px;
            top: 93px;
            position: absolute;
            height: 24px;
            width: 173px;
        }
        .style6
        {
            z-index: 1;
            left: 1068px;
            top: 12px;
            position: absolute;
        }
        .style7
        {
            z-index: 1;
            left: 1069px;
            top: 29px;
            position: absolute;
            width: 72px;
        }
        .style8
        {
            z-index: 1;
            left: 326px;
            top: 311px;
            position: absolute;
            width: 95px;
        }
        .style9
        {
            z-index: 1;
            left: 440px;
            top: 313px;
            position: absolute;
            width: 84px;
            height: 25px;
        }
        .style10
        {
            z-index: 1;
            left: 310px;
            top: 37px;
            position: absolute;
        }
    </style>
</head>
<body bgcolor="#009999" >

    <form id="form1" runat="server" >
    <asp:Label ID="lblUserID" runat="server" CssClass="style6" Text="Label"></asp:Label>
    <div>
    
        <asp:Label ID="lblUserBrnCode" runat="server" CssClass="style7" Text="Label"></asp:Label>
    
    </div>
    <asp:Panel ID="Panel1" runat="server" BorderColor="Black" BorderStyle="Solid" 
        CssClass="style1">
        <asp:Label ID="Label1" runat="server" CssClass="style2" 
    Text="User Role ID"></asp:Label>
        <br />
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" CssClass="style4"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" CssClass="style3" Text="User Role Name"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="style5"></asp:TextBox>
    </asp:Panel>
    <asp:Button ID="Button1" runat="server" CssClass="style8" Text="Save" />
    <asp:Button ID="Button2" runat="server" CssClass="style9" Text="Exit" />
    <asp:Label ID="Label3" runat="server" CssClass="style10" Font-Size="X-Large" 
        Text="Define User Role"></asp:Label>
    </form>
</body>
</html>
