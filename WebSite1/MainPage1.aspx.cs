using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class MainPage1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string ss = Request.QueryString["field1"];
        lblUserID.Text = ss;
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["janzconn"].ToString());
        cnn.Open();
        SqlCommand cmd = new SqlCommand();
        string str = "select USERS.USER_BRN_CODE,BRNCHES.BRN_NAME,USERS.USER_LAST_SUCCES_LOGIN,USERS.UNSUCC_LOGIN,USERS.USER_USER_ROLE from USERS  LEFT JOIN BRNCHES on USERS.USER_BRN_CODE=BRNCHES.BRN_CODE  where USERS.USER_NAME='" + ss + "'";
        cmd = new SqlCommand(str, cnn);
        SqlDataReader dr = cmd.ExecuteReader(System.Data.CommandBehavior.SingleRow);
        if (dr.Read() == true)
        {
            lblBrnCode.Text = dr[0].ToString();
            lblBrnName.Text = dr[1].ToString();
            lblLastLog.Text = dr[2].ToString();
            lblUserRolle.Text = dr[4].ToString();



        }



        cnn.Close();
        Session["username"] = lblUserID.Text;
        Session["branchcode"] = lblBrnCode.Text;


    }
    protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
    {
        
    }


    protected void TreeView1_TreeNodeDataBound(object sender, TreeNodeEventArgs e)
    {
        e.Node.Target = "_blank";
       // Session["username"] = lblUserID.Text;
        
        

    }

    protected void TreeView1_SelectedNodeChanged1(object sender, EventArgs e)
    {

    }
}