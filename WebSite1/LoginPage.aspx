<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="login2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/bootstrap.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery-2.2.3.min.js" type="text/javascript"></script>
    <link href="Styles/login_custom.css" rel="stylesheet" type="text/css" />
</head>
<body>

<div class="container">

      <form class="form-signin" runat="server">
        <h2 class="form-signin-heading" ></h2>
     <asp:Label  runat="server" Text="<%$ Resources:test.language, login_form_header %>" CssClass="h2 form-signin-heading" />
        <label for="inputEmail" class="sr-only">Email address</label>
        <asp:TextBox ID="txtUserName" runat="server"   CssClass="form-control"
        ClientIDMode="Static" onkeypress="return EnterEvent(event)" 
            style="left: 0px; top: 0px" ></asp:TextBox>

        <label for="inputPassword" class="sr-only">Password</label>   
        <asp:TextBox ID="txtPassword" runat="server"   CssClass="form-control" 
        ClientIDMode="Static" onkeypress="return EnterEvent(event)" 
            TextMode="Password" ></asp:TextBox>
    
         
        
<asp:Button ID="btnLogin" runat="server" CssClass="btn btn-lg btn-primary btn-block" Text="<%$ Resources:test.language, login_form_submit %>" 
        onclick="Button2_Click" />
      </form>

    </div> <!-- /container -->

</body>
</html>
