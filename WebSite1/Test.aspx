<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            position: absolute;
            top: 57px;
            left: 310px;
            z-index: 1;
            width: 148px;
        }
        .style2
        {
            position: absolute;
            top: 95px;
            left: 311px;
            z-index: 1;
            width: 150px;
        }
        .style3
        {
            height: 11px;
        }
        .style4
        {
            height: 86px;
        }
        .style5
        {
            height: 0px;
        }
        .style6
        {
            z-index: 1;
            left: 580px;
            top: 87px;
            position: absolute;
            height: 25px;
            width: 88px;
        }
    </style>
</head>
<body>


    <form id="form1" runat="server" class="style3">
    <div>
    
    </div>
    <p class="style4">
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
                <asp:ScriptManager runat="server" ID="ScriptManager1"></asp:ScriptManager>

            <asp:Button ID="Button2" runat="server" CssClass="style6" 
            onclick="Button2_Click" Text="Button" />

            </p>
    <p>
        &nbsp;</p>
    <p1>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="style1" 
        ontextchanged="TextBox1_TextChanged"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" CssClass="style2"></asp:TextBox>
    </p1>

    <p class="style5">
    
        &nbsp;<ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="3" 
        Height="273px" Width="711px" BackColor="White" BorderColor="White" 
        Font-Size="Large" ForeColor="#009999" TabStripPlacement="TopRight" 
        VerticalStripWidth="220px">
        <ajaxToolkit:TabPanel ID="TabPanel1" runat="server" HeaderText="Informaton" Font-Size="X-Large" > 
        </ajaxToolkit:TabPanel>
        <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="Address" Font-Size="X-Large">
        </ajaxToolkit:TabPanel>
        <ajaxToolkit:TabPanel ID="TabPanel3" runat="server" HeaderText="Family Details" Font-Size="X-Large">
        </ajaxToolkit:TabPanel>
        <ajaxToolkit:TabPanel ID="TabPanel4" runat="server" HeaderText="Banking Details" Font-Size="X-Large">
        </ajaxToolkit:TabPanel>
    </ajaxToolkit:TabContainer>
    </p>

    </form>
</body>
</html>
