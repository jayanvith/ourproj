<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Savings_search.aspx.cs" Inherits="Savings_search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 248px;
        }
    </style>
    <script src="Scripts/jquery-1.4.1.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <p>
            <asp:TextBox ID="txtSearch" runat="server" style="z-index: 1; left: 39px; top: 34px; position: absolute; width: 238px"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <asp:Button ID="Button1" runat="server" style="z-index: 1; top: 30px; position: absolute; left: 300px; width: 80px" Text="Search" OnClick="Button1_Click" />
      
        <link href="Styles/bootstrap.css" rel="stylesheet" />
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="true"   SelectedIndex="1" CssClass="table table-hover table-striped" UseAccessibleHeader="false" OnRowDataBound="Onrowclick" style="z-index: 1;   left: 40px; top: 79px; position: absolute; height: 167px; width: 456px" CellSpacing="1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
            <Columns>
        <asp:BoundField ItemStyle-Width="25px" DataField="PRD_ID" HeaderText="Savings ID" ReadOnly="True" >
<ItemStyle Width="25px"></ItemStyle>
                </asp:BoundField>
        <asp:BoundField ItemStyle-Width="25px" DataField="PRD_NAME" HeaderText="Savings Name" ReadOnly="True" >
      
<ItemStyle Width="25px"></ItemStyle>
                </asp:BoundField>



  
    </Columns>
            <HeaderStyle BackColor="#0066FF" BorderColor="#999999" BorderStyle="Inset" Width="75px" />
            <RowStyle BackColor="#6699FF" BorderColor="#0099FF" />
            <SelectedRowStyle BorderStyle="Groove" BackColor="WhiteSmoke" CssClass="cursor-pointer"  />
              <RowStyle CssClass="cursor-pointer" />
        </asp:GridView>
       <%-- <link href="Styles/bootstrap.css" rel="stylesheet" />
        <asp:GridView ID="GridView1" runat="server" 
    CssClass="table table-hover table-striped" GridLines="None" 
    AutoGenerateColumns="False">
    <Columns>
        <asp:BoundField DataField="PRD_ID" ItemStyle-Width="150px" HeaderText="Savings ID" Visible="false" />
        <asp:BoundField DataField="PRD_NAME" ItemStyle-Width="150px" HeaderText="Savings Name" />
       
    </Columns>
    <RowStyle CssClass="cursor-pointer" />
</asp:GridView>--%>

        

    






        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 506px; top: 86px; position: absolute" Text="Label"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 511px; top: 119px; position: absolute" Text="Label"></asp:Label>
    </form>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#Label1").text($("#DropDownList1").val())
        })
    </script>
</body>
</html>
