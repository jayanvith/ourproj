<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Savings_create.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.4.1.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 894px; top: 17px; position: absolute; bottom: 366px" Text="User Name:"></asp:Label>
    
    </div>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" style="z-index: 1; left: 358px; top: 16px; position: absolute; width: 258px; height: 30px;" Text="Opening Savings Account ..." Font-Size="Large"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 898px; top: 39px; position: absolute; bottom: 396px" Text="Date:"></asp:Label>
        <asp:Label ID="lblUserName" runat="server" style="z-index: 1; left: 985px; top: 16px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="lblDate" runat="server" style="z-index: 1; left: 988px; top: 39px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 61px; top: 75px; position: absolute; right: 714px;" Text="Savings Product"></asp:Label>
        <%--<asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 93px; top: -74px; position: absolute; width: 178px" ></asp:TextBox>--%>
        <asp:Button ID="btnSavings" runat="server" style="z-index: 1; left: 375px; top: 74px; position: absolute; height: 21px" Text="Savings " OnClick="btnSavings_Click"/>
        <asp:Label ID="lblSavingsName" runat="server" style="z-index: 1; left: 476px; top: 79px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 74px; top: 145px; position: absolute" Text="Customer "></asp:Label>
        <asp:TextBox ID="txtCusID" runat="server" style="z-index: 1; left: 186px; top: 149px; position: absolute; width: 176px"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" style="z-index: 1; left: 383px; top: 146px; position: absolute; height: 21px; width: 67px; right: 473px;" Text="Customers" />
        <asp:Label ID="lblCusDisName" runat="server" style="z-index: 1; left: 468px; top: 147px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="Label10" runat="server" style="z-index: 1; left: 894px; top: 66px; position: absolute" Text="Branch Code"></asp:Label>
        <asp:Label ID="lblBrnCode" runat="server" style="z-index: 1; left: 992px; top: 65px; position: absolute" Text="Label"></asp:Label>
        <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 16px; top: 249px; position: absolute; height: 100px; width: 787px">
            <asp:Label ID="Label12" runat="server" style="z-index: 1; left: 12px; top: 6px; position: absolute" Text="Branch Name:"></asp:Label>
            <asp:Label ID="lblBrnName" runat="server" style="z-index: 1; left: 111px; top: 6px; position: absolute; width: 34px;" Text="Label"></asp:Label>
            <asp:Label ID="lblAccOpenDate" runat="server" style="z-index: 1; left: 567px; top: 10px; position: absolute" Text="Label"></asp:Label>
            <asp:Label ID="Label16" runat="server" style="z-index: 1; left: 13px; top: 52px; position: absolute" Text="Interest Rate:"></asp:Label>
            <asp:Label ID="lblIntRate" runat="server" style="z-index: 1; left: 110px; top: 52px; position: absolute" Text="Label"></asp:Label>
        </asp:Panel>
        <asp:Label ID="Label14" runat="server" style="z-index: 1; left: 424px; top: 258px; position: absolute" Text="Account Openning Date:"></asp:Label>
        <asp:Label ID="Label18" runat="server" Font-Bold="True" style="z-index: 1; left: 15px; top: 228px; position: absolute" Text="Information"></asp:Label>
        <asp:Button ID="Button3" runat="server" style="z-index: 1; left: 203px; top: 361px; position: absolute; right: 580px; height: 25px" Text="Open the Account" OnClick="Button3_Click" />
        <asp:Button ID="Button4" runat="server" style="z-index: 1; left: 374px; top: 360px; position: absolute; width: 145px; height: 27px" Text="Cancel" />
        <p>
            &nbsp;</p>
        <asp:TextBox ID="txtSavingsCode" runat="server" style="z-index: 1; left: 183px; top: 75px; position: absolute; width: 172px"></asp:TextBox>
        <asp:Label ID="Label19" runat="server" style="z-index: 1; left: 64px; top: 108px; position: absolute" Text="Account Type"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" style="z-index: 1; left: 185px; top: 109px; position: absolute; height: 15px; width: 170px">
            <asp:ListItem Value="0">Single</asp:ListItem>
            <asp:ListItem Value="1">Joint</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 188px; top: 185px; position: absolute; width: 173px"></asp:TextBox>
        <asp:Button ID="Button5" runat="server" style="z-index: 1; left: 385px; top: 184px; position: absolute; width: 67px; height: 20px" Text="Button" />
        <asp:Label ID="Label20" runat="server" style="z-index: 1; left: 468px; top: 183px; position: absolute; height: 19px; width: 37px; right: 418px" Text="Label"></asp:Label>
    </form>
    <%--<script>
        $(document).ready(function () {
            $("#btnSavings").click(function () {
                var popup_window = window.open('Savings_search.aspx')
                popup_window.onbeforeunload = function () { console.log("Hello world!!!") }
            })
        })
       
        </script>--%>
</body>
</html>
