<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MainPage1.aspx.cs" Inherits="MainPage1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            width: 399px;
            height: 801px;
            position: absolute;
            top: 0px;
            left: 0px;
            z-index: 1;
        }
        .style3
        {
            width: 1010px;
            height: 800px;
            position: absolute;
            top: 0px;
            left: 333px;
            z-index: 1;
            margin-right: 302px;
            text-align: center;
            margin-left: 0px;
        }
        .style4
        {
            width: 511px;
            height: 182px;
            position: absolute;
            top: 35px;
            left: 410px;
            z-index: 1;
        }
        .style5
        {
            position: absolute;
            top: 13px;
            left: 413px;
            z-index: 1;
            height: 18px;
        }
        .style6
        {
            position: absolute;
            top: 10px;
            left: 8px;
            z-index: 1;
        }
        .style7
        {
            position: absolute;
            top: 10px;
            left: 101px;
            z-index: 1;
            height: 16px;
            width: 64px;
        }
        .style8
        {
            position: absolute;
            top: 89px;
            left: 417px;
            z-index: 1;
            height: 20px;
        }
        .style9
        {
            position: absolute;
            top: 90px;
            left: 513px;
            z-index: 1;
            height: 15px;
            right: 433px;
        }
        .style10
        {
            position: absolute;
            top: 105px;
            left: 8px;
            z-index: 1;
        }
        .style11
        {
            position: absolute;
            top: 104px;
            left: 104px;
            z-index: 1;
            height: 15px;
            width: 64px;
        }
        .style13
        {
            position: absolute;
            top: 144px;
            left: 107px;
            z-index: 1;
            right: 340px;
            height: 15px;
        }
        .style14
        {
            position: absolute;
            top: 11px;
            left: 254px;
            z-index: 1;
        }
        .style15
        {
            position: absolute;
            top: 32px;
            left: 259px;
            z-index: 1;
        }
        .style16
        {
            position: absolute;
            top: 287px;
            left: 411px;
            z-index: 1;
            margin-left: 0px;
        }
        .style18
        {
            position: absolute;
            top: 325px;
            left: 418px;
            z-index: 1;
            height: 20px;
        }
        .style19
        {
            position: absolute;
            top: 367px;
            left: 417px;
            z-index: 1;
            height: 13px;
        }
        .style20
        {
            position: absolute;
            top: 328px;
            left: 111px;
            z-index: 1;
        }
        .style21
        {
            position: absolute;
            top: 289px;
            left: 112px;
            z-index: 1;
            height: 20px;
        }
        .style23
        {
            width: 516px;
            height: 95px;
            position: absolute;
            top: 306px;
            left: 405px;
            z-index: 1;
        }
        .style24
        {
            position: absolute;
            top: 19px;
            left: 342px;
            z-index: 1;
        }
        .style25
        {
            position: absolute;
            top: 145px;
            left: 12px;
            z-index: 1;
        }
        .style27
        {
            position: absolute;
            top: 234px;
            left: 14px;
            z-index: 1;
            width: 258px;
            height: 174px;
        }
        .style28
        {
            position: absolute;
            top: 433px;
            left: 21px;
            z-index: 1;
            width: 246px;
        }
        .style29
        {
            z-index: 1;
            left: 0px;
            top: 0px;
            position: absolute;
            height: 139px;
            width: 99px;
        }
        .style30
        {
            z-index: 1;
            left: 678px;
            top: 429px;
            position: absolute;
            height: 29px;
            width: 92px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server" BackColor="#009999" CssClass="style2" 
            Direction="LeftToRight">
            <asp:TreeView ID="TreeView1" runat="server" 
    CssClass="style29" ImageSet="Arrows" style="left: 5px; top: 0px" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged1">
                <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                <Nodes>
                    <asp:TreeNode Text="CORE BANK" Value="CORE BANK">
                        <asp:TreeNode Text="Admin pannel1" Value="Admin pannel1"></asp:TreeNode>
                        <asp:TreeNode Text="Define Interest Rates" Value="Define Interest Rates">
                        </asp:TreeNode>
                        <asp:TreeNode></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Text="Bank" Value="Bank">
                        <asp:TreeNode Text="Branch" Value="Branch">
                            <asp:TreeNode Text="Define Branch" Value="newbranch()" 
                                NavigateUrl="~/BranchCreation.aspx" Expanded="True" PopulateOnDemand="true" SelectAction="SelectExpand" ></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="Genaral Ledger" Value="Genaral Ledger">
                            <asp:TreeNode Text="Main GL" Value="Chart of Account Catagory" NavigateUrl="~/MainGL.aspx" Target="_blank" PopulateOnDemand="true"></asp:TreeNode>
                            <asp:TreeNode Text="Sub GL" Value="Genaral Ledger" NavigateUrl="~/SubGL.aspx" Target="_blank" ></asp:TreeNode>
                           <%-- <asp:TreeNode Text="Micro GL" Value="Micro GL"></asp:TreeNode>--%>
                            <asp:TreeNode Text="GL Access Code" Value="GL Access Code"></asp:TreeNode>
                        </asp:TreeNode> 
                        <asp:TreeNode Text="Savings" Value="Savings">
                            <asp:TreeNode Text="Define Savings Product" Value="Define Savings Product" 
                                NavigateUrl="~/Saving_main.aspx" Target="_blank"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="Fixed Deposit" Value="Fixed Deposit">
                            <asp:TreeNode Text="Define FD Product" Value="Define FD Product"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="Loan" Value="Loan">
                            <asp:TreeNode Text="Define Loan Code" Value="Define Loan Code"></asp:TreeNode>
                            <asp:TreeNode Text="Define Loan Purpose Code" Value="Define Loan Purpose Code">
                            </asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="Gold Loan" Value="Gold Loan">
                            <asp:TreeNode Text="Define Gold Loan" Value="Define Gold Loan"></asp:TreeNode>
                            <asp:TreeNode Text="Define Gold Articals" Value="Define Gold Articals">
                            </asp:TreeNode>
                            <asp:TreeNode Text="Define Gold Loan artical Details" 
                    Value="Define Gold Loan artical Details"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="Users" Value="Users">
                            <asp:TreeNode Text="New User" Value="New User" 
                                NavigateUrl="~/UserCreation.aspx"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/UserRoleAssign.aspx" Text="User Roles" 
                                Value="User Roles"></asp:TreeNode>
                        </asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Text="Customer" Value="Customer">
                        <asp:TreeNode Text="Define New Customer" Value="Define New Customer" 
                            NavigateUrl="~/Customer.aspx"></asp:TreeNode>
                    </asp:TreeNode>
                </Nodes>
                <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" 
                    HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                <ParentNodeStyle Font-Bold="False" />
                <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" 
                    HorizontalPadding="0px" VerticalPadding="0px" />
            </asp:TreeView>
           
        </asp:Panel>
    
    </div>
    <asp:Panel ID="Panel2" runat="server" BackColor="#009999" CssClass="style3" 
        BorderStyle="Groove">
        <asp:Panel ID="Panel3" runat="server" BorderColor="Black" BorderStyle="Solid" 
            BorderWidth="1px" CssClass="style4">
            <asp:Label ID="Label12" runat="server" CssClass="style14" Text="Successfull"></asp:Label>
            <asp:Label ID="Label13" runat="server" CssClass="style15" Text="Log On"></asp:Label>
            <asp:Label ID="lblLastLog" runat="server" CssClass="style24" Text="Label"></asp:Label>
            <asp:Label ID="Label2" runat="server" CssClass="style6" Font-Size="Small" 
                Text="User ID"></asp:Label>
            <asp:Label ID="lblUserID" runat="server" CssClass="style7" Font-Size="Small" 
                Text="Label"></asp:Label>
            <asp:Label ID="Label6" runat="server" CssClass="style10" Text="Branch Name" 
                Font-Size="Small"></asp:Label>
            <asp:Label ID="lblBrnName" runat="server" CssClass="style11" Text="Label" 
                Font-Size="Small"></asp:Label>
            <asp:Label ID="lblUserRolle" runat="server" CssClass="style13" Text="Label" 
                Font-Size="Small"></asp:Label>
            <asp:Label ID="lblBankDate" runat="server" CssClass="style20" Text="Label"></asp:Label>
            <asp:Label ID="lblserverDate" runat="server" CssClass="style21" Text="Label"></asp:Label>
            <asp:Label ID="Label25" runat="server" CssClass="style25" Text="User Role" 
                Font-Size="Small"></asp:Label>
        </asp:Panel>
        <asp:Label ID="Label1" runat="server" CssClass="style5" Font-Bold="True" 
            Text="User Infomation"></asp:Label>
        <asp:Label ID="Label4" runat="server" CssClass="style8" Text="Branch Code" 
            Font-Size="Small"></asp:Label>
        <asp:Label ID="lblBrnCode" runat="server" CssClass="style9" Text="Label" 
            Font-Size="Small"></asp:Label>
        <asp:Label ID="Label15" runat="server" CssClass="style16" Font-Bold="True" 
            Text="Dates and Times"></asp:Label>
        <asp:Label ID="Label16" runat="server" CssClass="style18" Text="Server Date"></asp:Label>
        <asp:Label ID="Label17" runat="server" CssClass="style19" Text="Banking Date"></asp:Label>
        <asp:Panel ID="Panel6" runat="server" BorderColor="Black" BorderStyle="Solid" 
            BorderWidth="1px" CssClass="style23">
        </asp:Panel>
        <br />
        <asp:Image ID="imgBank" runat="server" CssClass="style27" />
        <strong>
        <asp:Label ID="lblBankName" runat="server" CssClass="style28" 
            Font-Size="Larger" Text="Core Banker"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        </strong>
        <
        <asp:Button ID="Button1" runat="server" BackColor="#FFCC00" 
            BorderColor="#006666" CssClass="style30" Text="LogOut" OnClientClick="myFunction()"  />
 </asp:Panel>

 <script type="text/javascript">
     function myFunction() 
     {
         window.open("http://www.w3schools.com", "_blank", "toolbar=yes, scrollbars=yes, resizable=yes, top=500, left=500, width=400, height=400");
     }
</script>



    
    </form>
</body>
</html>
