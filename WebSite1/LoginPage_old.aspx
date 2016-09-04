<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage_old.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            position: absolute;
            top: 436px;
            left: 593px;
            z-index: 1;
            width: 79px;
        }
        .style2
        {
            position: absolute;
            top: 436px;
            left: 501px;
            z-index: 1;
            width: 70px;
        }
        .style3
        {
            position: absolute;
            top: 334px;
            left: 505px;
            z-index: 1;
            width: 160px;
        }
        .style4
        {
            position: absolute;
            top: 378px;
            left: 508px;
            z-index: 1;
            width: 153px;
        }
        .style5
        {
            position: absolute;
            top: 336px;
            left: 405px;
            z-index: 1;
        }
        .style6
        {
            position: absolute;
            top: 379px;
            left: 405px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <p>
        <asp:Button ID="btnClose" runat="server" CssClass="style1" 
            onclick="Button1_Click" Text="Close" style="left: 593px; top: 436px" />
    </p>
    <asp:Button ID="btnLogin" runat="server" CssClass="style2" Text="Log On" 
        onclick="Button2_Click" />
    
    
    <asp:TextBox ID="txtUserName" runat="server"   CssClass="style3" 
        ClientIDMode="Static" onkeypress="return EnterEvent(event)" ></asp:TextBox>
    <asp:TextBox ID="txtPassword" runat="server" CssClass="style4" 
        TextMode="Password" ClientIDMode="Static"   ></asp:TextBox>

    <script src="Scripts/jquery-1.4.1.js" type="text/javascript">
        function EnterEvent(event) {
        if (e.keyCode == 13) {
//            alert("Hello");

           
        }
    }
    </script>
   
    <asp:Label ID="Label1" runat="server" CssClass="style5" Text="User Name"></asp:Label>
    <asp:Label ID="Label2" runat="server" CssClass="style6" Text="Password"></asp:Label>
   
    </form>
    
</body>
</html>
