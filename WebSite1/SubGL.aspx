<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SubGL.aspx.cs" Inherits="SubGL" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" 
            style="z-index: 1; left: 288px; top: 30px; position: absolute; font-weight: 700; height: 19px; width: 281px; font-size: x-large" 
            Text="Genaral Ledger"></asp:Label>
    
    </div>
    <asp:Label ID="Label2" runat="server" 
        style="z-index: 1; left: 169px; top: 166px; position: absolute; width: 105px; height: 16px;" 
        Text="Ledger Account Catagory  Code"></asp:Label>
    <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; left: 165px; top: 80px; position: absolute" 
        Text="Ledger Code"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" 
        
        style="z-index: 1; left: 285px; top: 162px; position: absolute; height: 25px; width: 166px"></asp:TextBox>
    <asp:Label ID="Label4" runat="server" 
        style="z-index: 1; left: 472px; top: 165px; position: absolute" 
        Text="Label"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" 
        
        
        style="z-index: 1; left: 287px; top: 80px; position: absolute; height: 23px; width: 157px"></asp:TextBox>
    <asp:TextBox ID="TextBox3" runat="server" 
        
        
        style="z-index: 1; left: 287px; top: 121px; position: absolute; height: 24px; width: 289px"></asp:TextBox>
    <asp:Label ID="Label5" runat="server" 
        style="z-index: 1; left: 165px; top: 123px; position: absolute" 
        Text="Ledger Name"></asp:Label>
    <asp:Label ID="Label6" runat="server" 
        style="z-index: 1; left: 164px; top: 215px; position: absolute; height: 15px; width: 96px" 
        Text="Effective Date"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server" 
        
        
        style="z-index: 1; left: 286px; top: 210px; position: absolute; height: 22px; width: 154px" 
        Enabled="False"></asp:TextBox>
    <ajaxToolkit:CalendarExtender ID="CalendarExtender1" TargetControlID="TextBox4" PopupButtonID="btnCalPopUp" Format="yyyy-MM-dd" runat="server" />
<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:Button ID="Button1" runat="server" 
        style="z-index: 1; left: 240px; top: 270px; position: absolute; width: 95px" 
        Text="Save" />
    <asp:Button ID="Button4" runat="server" 
        style="z-index: 1; left: 577px; top: 269px; position: absolute; width: 75px; height: 24px" 
        Text="Show" onclick="Button4_Click" />
    <asp:Button ID="Button2" runat="server" 
        style="z-index: 1; left: 356px; top: 269px; position: absolute; width: 87px; right: 332px" 
        Text="Clear" />
    <asp:Button ID="Button3" runat="server" 
        style="z-index: 1; left: 468px; top: 271px; position: absolute; height: 23px; width: 83px" 
        Text="Cancel" />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        Font-Names="Arial" 
        
        style="z-index: 1; left: 32px; top: 335px; position: absolute; height: 133px; width: 795px" 
        BorderColor="#999999">
        <Columns>
            <asp:BoundField HeaderText="Sub GL ID" ReadOnly="True">
            <FooterStyle Width="100px" />
            <ItemStyle Width="75px" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Sub GL Name" ReadOnly="True">
            <ItemStyle Width="200px" />
            </asp:BoundField>
            <asp:BoundField HeaderText="GL Name" ReadOnly="True">
            <ItemStyle Width="200px" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Effective Date" ReadOnly="True">
            <ItemStyle Width="100px" />
            </asp:BoundField>
        </Columns>
        <HeaderStyle Height="20px" />
        <RowStyle Height="10px" />
    </asp:GridView>
    <asp:Button ID="btnCalPopUp" runat="server" BackColor="#3333CC" 
        style="z-index: 1; left: 448px; top: 210px; position: absolute; height: 20px; right: 565px;" 
        Text="..." />
    </form>


</body>
</html>

