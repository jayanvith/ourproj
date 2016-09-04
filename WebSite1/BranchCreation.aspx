<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BranchCreation.aspx.cs" Inherits="BranchCreation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            z-index: 1;
            left: 226px;
            top: 55px;
            position: absolute;
        }
        .style2
        {
            z-index: 1;
            left: 221px;
            top: 95px;
            position: absolute;
        }
        .style3
        {
            z-index: 1;
            left: 320px;
            top: 53px;
            position: absolute;
        }
        .style4
        {
            z-index: 1;
            left: 320px;
            top: 93px;
            position: absolute;
            height: 22px;
            width: 206px;
        }
        .style5
        {
            z-index: 1;
            left: 18px;
            top: 128px;
            position: absolute;
            height: 217px;
            width: 873px;
        }
        .style6
        {
            z-index: 1;
            left: 35px;
            top: 149px;
            position: absolute;
        }
        .style7
        {
            z-index: 1;
            left: 126px;
            top: 18px;
            position: absolute;
            height: 22px;
            width: 190px;
        }
        .style8
        {
            z-index: 1;
            left: 127px;
            top: 58px;
            position: absolute;
            height: 22px;
            width: 188px;
        }
        .style9
        {
            z-index: 1;
            left: 126px;
            top: 98px;
            position: absolute;
            width:188px;
        }
        .style10
        {
            z-index: 1;
            left: 125px;
            top: 143px;
            position: absolute;
            width:188px;
        }
        .style11
        {
            z-index: 1;
            left: 452px;
            top: 17px;
            position: absolute;
        }
        .style12
        {
            z-index: 1;
            left: 621px;
            top: 16px;
            position: absolute;
            height: 22px;
            width: 180px;
        }
        .style13
        {
            z-index: 1;
            left: 460px;
            top: 61px;
            position: absolute;
        }
        .style14
        {
            z-index: 1;
            left: 621px;
            top: 61px;
            position: absolute;
            height: 22px;
            width: 178px;
        }
        .style15
        {
            z-index: 1;
            left: 462px;
            top: 111px;
            position: absolute;
        }
        .style16
        {
            z-index: 1;
            left: 622px;
            top: 109px;
            position: absolute;
            height: 22px;
            width: 173px;
        }
        .style17
        {
            z-index: 1;
            left: 249px;
            top: 358px;
            position: absolute;
            height: 26px;
            width: 89px;
        }
        .style18
        {
            z-index: 1;
            top: 359px;
            position: absolute;
            width: 79px;
            height: 26px;
            left: 347px;
            right: 467px;
        }
        .style19
        {
            z-index: 1;
            left: 438px;
            top: 359px;
            position: absolute;
            height: 26px;
            width: 79px;
        }
    </style>
</head>
<body bgcolor="#ff9966">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Label ID="Label1" runat="server" CssClass="style1" Text="Branch Code"></asp:Label>
    <asp:Label ID="Label2" runat="server" CssClass="style2" Text="Branch Name"></asp:Label>
    <asp:TextBox ID="txtBrnCode" runat="server"   CssClass="style3" 
         onkeypress="return isNumber(event)" MaxLength="4" ></asp:TextBox>
        <%--<input type="text" class="textfield" value="" id="extra7" name="extra7" onkeypress="return isNumber(event)" />--%>
   
    <asp:TextBox ID="txtBrnName" runat="server" CssClass="style4" 
        style="left: 320px; top: 93px"></asp:TextBox>
    <asp:Panel ID="Panel1" runat="server" CssClass="style5" BorderColor="Black" 
        BorderStyle="Solid">
        <asp:TextBox ID="txtBrnAdd1" runat="server" 
    CssClass="style7"></asp:TextBox>
        <asp:TextBox ID="txtBrnAdd2" runat="server" CssClass="style8"></asp:TextBox>
        <asp:TextBox ID="txtBrnAdd3" runat="server" CssClass="style9"></asp:TextBox>
        <asp:TextBox ID="txtBrnAdd4" runat="server" CssClass="style10" 
            style="left: 125px; top: 143px"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" CssClass="style11" 
            Text="Branch Contact Number"></asp:Label>
        <asp:TextBox ID="txtBrnNum" runat="server" CssClass="style12" onkeypress="return isNumber(event)" MaxLength="10"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" CssClass="style13" Text="Fax Number" ></asp:Label>
        <asp:TextBox ID="txtBrnFax" runat="server" CssClass="style14" onkeypress="return isNumber(event)" MaxLength="10"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" CssClass="style15" Text="E-Mail"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" CssClass="style16"></asp:TextBox>
    </asp:Panel>
    <asp:Label ID="Label3" runat="server" CssClass="style6" Text="Branch Address"></asp:Label>
    <asp:Button ID="btnSave" runat="server" CssClass="style17" Text="Save" 
        onclick="btnSave_Click" />
    <asp:Button ID="btClear" runat="server" CssClass="style18" Text="Clear" />
    <asp:Label ID="Label7" runat="server" 
        style="z-index: 1; position: absolute; top: 16px; left: 1048px; bottom: 457px" 
        Text="Label"></asp:Label>
    <p>
        <asp:Button ID="btnEdit" runat="server" CssClass="style19" Text="Edit" />
    </p>
    </form>
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
</body>
</html>
