<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GlType.aspx.cs" Inherits="GlType" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

  <script src="../Scripts/jquery-2.2.3.min.js" type="text/javascript"></script>
    <script src="../Scripts/gltype.js" type="text/javascript"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label7" runat="server" 
            style="z-index: 1; position: absolute; top: 20px; left: 824px" Text="User ID"></asp:Label>
    
    </div>
    <asp:Panel ID="Panel1" runat="server" 
        
        style="z-index: 1; width: 930px; height: 335px; position: absolute; top: 64px; left: 61px" 
        BorderColor="White" BorderStyle="Solid">
        <asp:Label ID="Label2" runat="server" 
    style="z-index: 1; position: absolute; top: 28px; left: 143px" Text="GL Type"></asp:Label>
        <asp:DropDownList ID="cmbGLType" runat="server" AutoPostBack="true"
            
            style="z-index: 1; position: absolute; top: 31px; left: 235px; width: 149px; height: 16px" 
            onselectedindexchanged="cmbGLType_SelectedIndexChanged" >
            <asp:ListItem Value="01" Selected="True">Asset</asp:ListItem>
            <asp:ListItem Value="02">Equity</asp:ListItem>
            <asp:ListItem Value="03">Liabilities</asp:ListItem>
            <asp:ListItem Value="04">Expense</asp:ListItem>
            <asp:ListItem Value="05">Income</asp:ListItem>
         </asp:DropDownList>
        <asp:Label ID="Label3" runat="server" 
            style="z-index: 1; position: absolute; top: 127px; left: 84px" 
            Text="GL Sub Type Code"></asp:Label>
        <asp:Label ID="lblGLTypeID" runat="server"  
            style="z-index: 1; position: absolute; top: 32px; left: 399px; height: 27px;" ></asp:Label>
        <asp:Label ID="Label5" runat="server" 
            style="z-index: 1; position: absolute; top: 174px; left: 83px" 
            Text="Sub GL Type Name"></asp:Label>
        <asp:Label ID="Label6" runat="server" 
            style="z-index: 1; position: absolute; top: 218px; left: 85px" 
            Text="Description"></asp:Label>
       <%-- <asp:TextBox ID="txtsunGlTypeName" runat="server"  style="z-index: 1; position: absolute; top: 175px; left: 230px; width: 403px; height: 22px"></asp:TextBox>--%>
        <%--<asp:TextBox ID="txtSubGlTypeDec" runat="server" 
            
            
            style="z-index: 1; position: absolute; top: 228px; left: 230px; width: 408px; height: 22px"></asp:TextBox>--%>
        <asp:Panel ID="Panel2" runat="server" BorderColor="Black" BorderStyle="Solid" 
            style="z-index: 1; width: 890px; height: 247px; position: absolute; top: 82px; left: 47px">
            <asp:CheckBoxList ID="chkActv" runat="server" 
                style="z-index: 1; width: 82px; height: 27px; position: absolute; top: 13px; left: 615px" 
                TextAlign="Left">
                <asp:ListItem>Active</asp:ListItem>
            </asp:CheckBoxList>
            <asp:TextBox ID="txtsunGlTypeName" runat="server" 
                style="z-index: 1; position: absolute; top: 82px; left: 176px; width:400px; height:22px"></asp:TextBox>
            <asp:TextBox ID="txtSubGlTypeDec" runat="server" 
                style="z-index: 1; position: absolute; top: 127px; left: 175px; width:400px; height:22px"></asp:TextBox>
        </asp:Panel>
        <asp:Label ID="lblUserID" runat="server" 
            style="z-index: 1; position: absolute; top: -49px; left: 819px" Text="label"></asp:Label>
    </asp:Panel>
    <asp:Label ID="Label1" runat="server" 
        
        style="z-index: 1; position: absolute; top: 26px; left: 371px; width: 227px; height: 19px;" 
        Text="  Declaration GL Types"></asp:Label>
    <asp:Button ID="btnSave" runat="server" 
        style="z-index: 1; position: absolute; top: 436px; left: 238px; width: 100px; height: 27px" 
        Text="Save" onclick="Button1_Click" />
    <asp:Button ID="btnClose" runat="server" 
        style="z-index: 1; position: absolute; top: 436px; left: 362px; width: 81px; height: 27px;" 
        Text="Close" onclick="Button2_Click" />
    <asp:TextBox ID="txtSubGlTypeID" runat="server" 
        style="z-index: 1; position: absolute; top: 190px; left: 294px" 
        ReadOnly="True"></asp:TextBox>
    <asp:Button ID="btnClear" runat="server" onclick="Button3_Click" 
        style="z-index: 1; position: absolute; top: 436px; left: 490px; height: 26px; width: 76px;" 
        Text="Clear" />
    <asp:Button ID="glSubTypeIdButton" runat="server" onclick="Button1_Click1" 
        style="z-index: 1; left: 495px; top: 188px; position: absolute; height: 25px; width: 120px" 
        Text="Get SubType Id" />
    </form>

 
</body>
</html>
