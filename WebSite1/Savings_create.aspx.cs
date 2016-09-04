using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblBrnCode.Text = "";
        lblDate.Text = "";
        lblUserName.Text = "";
        txtSavingsCode.Text = Request.QueryString["sav_id"];
        lblSavingsName.Text = Request.QueryString["sav_name"];
    }
    protected void open_window(object sender, EventArgs e)
    {
        string url = "Savings_search.aspx";
        string s = "window.open('" + url + "', 'popup_window', 'width=600,height=200,left=100,top=100,resizable=yes');";
        ClientScript.RegisterStartupScript(this.GetType(), "script", s, true);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void btnSavings_Click(object sender, EventArgs e)
    {

    }
}