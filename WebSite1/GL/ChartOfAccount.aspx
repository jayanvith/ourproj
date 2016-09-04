<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChartOfAccount.aspx.cs" Inherits="GL_ChartOfAccount" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
        style="z-index: 1; position: absolute; top: 14px; left: 279px" 
        Text="Chart of Accounts"></asp:Label>
    <asp:Label ID="Label2" runat="server" 
        style="z-index: 1; position: absolute; top: 58px; left: 190px; width: 61px; height: 20px" 
        Text="GLType"></asp:Label>
    <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; position: absolute; top: 110px; left: 180px; height: 20px" 
        Text="GL Sub Type"></asp:Label>
    <asp:DropDownList ID="cmbGlType" runat="server" AutoPostBack="true"
        
        
        style="z-index: 1; position: absolute; top: 56px; left: 304px; width: 156px; height: 18px" 
        onselectedindexchanged="cmbGlType_SelectedIndexChanged">
        <asp:ListItem Value="01">Asset</asp:ListItem>
        <asp:ListItem Value="02">Liabilities</asp:ListItem>
        <asp:ListItem Value="03">Equity</asp:ListItem>
        <asp:ListItem Value="04">Income</asp:ListItem>
        <asp:ListItem Value="05">Expense</asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="lblGltypeID" runat="server" 
        style="z-index: 1; position: absolute; top: 55px; left: 480px" 
        Text="Label"></asp:Label>
    <asp:Label ID="lblGlSubTypeID" runat="server" 
        style="z-index: 1; position: absolute; top: 111px; left: 483px" 
        Text="Label"></asp:Label>
    <asp:Panel ID="Panel1" runat="server" BorderColor="Black" BorderStyle="Solid" 
        style="z-index: 1; width: 832px; height: 259px; position: absolute; top: 176px; left: 24px">
        <asp:Label ID="Label6" runat="server" 
    style="z-index: 1; position: absolute; top: 24px; left: 32px" 
            Text="Chart of Account "></asp:Label>
        <asp:Label ID="Label7" runat="server" 
            style="z-index: 1; position: absolute; top: 44px; left: 57px" Text="ID"></asp:Label>
        <asp:TextBox ID="txtChtAccID" runat="server" 
            style="z-index: 1; position: absolute; top: 23px; left: 185px"></asp:TextBox>
        <asp:Label ID="Label8" runat="server" 
            style="z-index: 1; position: absolute; top: 99px; left: 13px" 
            Text="Chat Of Account Name"></asp:Label>
        <asp:TextBox ID="txtChtAccName" runat="server" 
            
            style="z-index: 1; position: absolute; top: 88px; left: 183px; width: 471px; height: 27px"></asp:TextBox>
        <asp:Label ID="Label9" runat="server" 
            style="z-index: 1; position: absolute; top: 154px; left: 17px" 
            Text="Decription"></asp:Label>
        <asp:TextBox ID="txtChartAccDec" runat="server" 
            
            style="z-index: 1; position: absolute; top: 148px; left: 186px; width: 478px; height: 24px"></asp:TextBox>
    </asp:Panel>
    <asp:Button ID="btnExit" runat="server" 
        style="z-index: 1; position: absolute; top: 464px; left: 314px; width: 79px; height: 26px" 
        Text="Exit" onclick="btnExit_Click"   />
    <p>
        <asp:Button ID="btnSave" runat="server" 
            style="z-index: 1; position: absolute; top: 465px; left: 206px; width: 79px; right: 641px;" 
            Text="Save" onclick="btnSave_Click"  />
    </p>
    <asp:Button ID="btnClear" runat="server" 
        style="z-index: 1; position: absolute; top: 463px; left: 426px; right: 398px; height: 24px" 
        Text="Clear" />
    <asp:Button ID="Button4" runat="server" Font-Overline="False"  
        style="z-index: 1; position: absolute; top: 201px; left: 349px; width: 38px; height: 24px" 
        Text="==&gt;" onclick="Button4_Click" />
    <asp:Label ID="Label10" runat="server" 
        style="z-index: 1; position: absolute; top: 14px; left: 760px" Text="User ID :"></asp:Label>
    <asp:Label ID="lblUserID" runat="server" 
        style="z-index: 1; position: absolute; top: 14px; left: 822px" 
        Text="Label"></asp:Label>
    <asp:DropDownList ID="cmbsubtype" runat="server" 
        onselectedindexchanged="cmbsubtype_SelectedIndexChanged" 
        style="z-index: 1; position: absolute; top: 108px; left: 304px; width: 159px; height: 14px">
    </asp:DropDownList>
    </form>
</body>
</html>
