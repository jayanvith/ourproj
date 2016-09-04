<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MainGL.aspx.cs" Inherits="MainGL" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%--<script src="../Scripts/main_gl.js" type="text/javascript"></script>
    <script src="../Scripts/jquery-2.2.3.min.js" type="text/javascript"></script>--%>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" 
            style="z-index: 1; left: 317px; top: 12px; position: absolute; height: 31px; width: 311px; font-weight: 700; font-size: x-large" 
            Text="Define Main General Ledgers"></asp:Label>
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    
    </div>
    <p>
        <asp:Label ID="Label8" runat="server" 
            style="z-index: 1; position: absolute; top: 67px; left: 199px" 
            Text="GL Type"></asp:Label>
        <asp:Label ID="Label11" runat="server" 
            style="z-index: 1; position: absolute; top: 102px; left: 194px" 
            Text="Gl Sub Type"></asp:Label>
    </p>
    <p>
        <asp:DropDownList ID="cmbGlSubType" runat="server"  AutoPostBack="true" ViewStateMode="Enabled"
            
            style="z-index: 1; position: absolute; top: 104px; left: 288px; width: 227px; height: 18px; right: 411px" 
            onselectedindexchanged="cmbGlSubType_SelectedIndexChanged" 
            ontextchanged="cmbGlSubType_TextChanged">
             <asp:ListItem Selected="True" />
        </asp:DropDownList>
    </p>
    <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" 
        
        
        
        style="z-index: 1; left: 34px; top: 243px; position: absolute; height: 253px; width: 821px">
        <asp:Label ID="Label2" runat="server" 
    style="z-index: 1; left: 127px; top: 22px; position: absolute" Text="GL Code"></asp:Label>
        <asp:Label ID="Label3" runat="server" 
            style="z-index: 1; left: 130px; top: 64px; position: absolute" Text="GL Name"></asp:Label>
        <asp:Label ID="Label4" runat="server" 
            style="z-index: 1; left: 131px; top: 109px; position: absolute" 
            Text="Decription"></asp:Label>
        <asp:TextBox ID="txtGLCode" runat="server" 
            
            
            style="z-index: 1; left: 216px; top: 22px; position: absolute; height: 27px; width: 309px"></asp:TextBox>
        <asp:TextBox ID="txtGLName" runat="server" 
            
            
            style="z-index: 1; left: 218px; top: 68px; position: absolute; height: 23px; width: 469px"></asp:TextBox>
        <asp:CheckBox ID="chkExtSubGL" runat="server" 
            style="z-index: 1; left: 219px; top: 220px; position: absolute" 
            Text="Yes" />
        <asp:Label ID="Label5" runat="server" 
            style="z-index: 1; left: 119px; top: 219px; position: absolute" 
            Text="Exist Sub GL "></asp:Label>
        <asp:Label ID="Label15" runat="server" 
            style="z-index: 1; position: absolute; top: 188px; left: 117px" 
            Text="GL Catagory"></asp:Label>
        <asp:DropDownList ID="cmbGlCat" runat="server" AutoPostBack="true"
            
            style="z-index: 1; position: absolute; top: 188px; left: 221px; width: 198px; height: 21px" 
            onselectedindexchanged="DropDownList3_SelectedIndexChanged">
            <asp:ListItem Selected="True"></asp:ListItem>
            <asp:ListItem Value="0">Non</asp:ListItem>
            <asp:ListItem Value="1">Main Cash Book</asp:ListItem>
            <asp:ListItem Value="2">Cash Book</asp:ListItem>
            <asp:ListItem Value="3">Stock Account</asp:ListItem>
            <asp:ListItem Value="4">Bank Account</asp:ListItem>
            <asp:ListItem Value="5">P/L Account</asp:ListItem>
            <asp:ListItem Value="6">Suspense Account</asp:ListItem>
            <asp:ListItem Value="7">Return Cheque Account</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="lblGlcatID" runat="server" 
            style="z-index: 1; position: absolute; top: 188px; left: 424px" 
            Text="text"></asp:Label>
        <asp:Button ID="Button1" runat="server" 
            style="z-index: 1; position: absolute; top: 20px; left: 541px" 
            Text="New ID" onclick="Button1_Click" />
        <asp:Label ID="Label16" runat="server" 
            style="z-index: 1; position: absolute; top: -24px; left: -1px" 
            Text="GL Information"></asp:Label>
    </asp:Panel>
    <asp:Button ID="btnSave" runat="server" 
        style="z-index: 1; left: 326px; top: 518px; position: absolute; height: 23px; width: 97px" 
        Text="Save" onclick="btnSave_Click" />
    <asp:Button ID="btnCancel" runat="server" 
        style="z-index: 1; left: 447px; top: 518px; position: absolute; height: 21px; width: 82px" 
        Text="Cancel" onclick="btnCancel_Click" />
    <asp:Button ID="btnShow" runat="server" 
        style="z-index: 1; left: 548px; top: 515px; position: absolute; width: 76px" 
        Text="Show" onclick="btnShow_Click" />
    <asp:Label ID="Label6" runat="server" 
        style="z-index: 1; left: 155px; top: 396px; position: absolute" 
        Text="Effective Date"></asp:Label>
    <asp:TextBox ID="txtEffectDate" runat="server" 
        
        style="z-index: 1; left: 258px; top: 395px; position: absolute; width: 162px; height: 23px;"></asp:TextBox>
    <ajaxToolkit:CalendarExtender ID="CalendarExtender1"  TargetControlID="txtEffectDate" Format="yyyy-MM-dd" PopupButtonID="btnPopDate" runat="server" />
    <asp:Button ID="btnPopDate" runat="server" BackColor="Blue" 
        style="z-index: 1; left: 435px; top: 395px; position: absolute; height: 17px; width: 24px" 
        Text="...." />
    <asp:Label ID="lblUserName" runat="server" 
        style="z-index: 1; position: absolute; top: 21px; left: 986px; height: 16px" 
        Text="Label1"></asp:Label>
    <asp:Label ID="Label7" runat="server" 
        style="z-index: 1; position: absolute; top: 18px; left: 904px; width: 83px; right: 155px" 
        Text="User Name:"></asp:Label>
    <asp:TextBox ID="txtGLdec" runat="server" 
        
        style="z-index: 1; position: absolute; top: 356px; left: 257px; width: 476px; height: 24px"></asp:TextBox>
    <asp:DropDownList ID="cmbGlType" runat="server" AutoPostBack="true" 
        
        
        style="z-index: 1; position: absolute; top: 66px; left: 286px; width: 224px; height: 16px; bottom: 339px" 
        onselectedindexchanged="cmbGlType_SelectedIndexChanged">
        <asp:ListItem Value="01">Asset</asp:ListItem>
        <asp:ListItem Value="02">Equity</asp:ListItem>
        <asp:ListItem Value="03">Liabilities</asp:ListItem>
        <asp:ListItem Value="04">Expense</asp:ListItem>
        <asp:ListItem Value="05">Income</asp:ListItem>
    </asp:DropDownList>
    <p>
    <asp:Label ID="Label9" runat="server" 
        style="z-index: 1; position: absolute; top: 140px; left: 125px; right: 537px; height: 16px;" 
        Text="Chart Of Account Name"></asp:Label>
    </p>
    <asp:DropDownList ID="cmbChartAcc" runat="server"  AutoPostBack="true"
        
        style="z-index: 1; position: absolute; top: 142px; left: 287px; width: 225px; height: 10px" 
        onselectedindexchanged="cmbChartAcc_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:Label ID="lblCharAccID" runat="server" 
        style="z-index: 1; position: absolute; top: 178px; left: 288px" Text="Label"></asp:Label>
    <asp:Label ID="Label14" runat="server" 
        style="z-index: 1; position: absolute; top: 177px; left: 140px" 
        Text="Chart Of Account ID"></asp:Label>
    </form>
</body>
</html>
