using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Savings_search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //if(txtSearch.Text=="")
        //{
        //    SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["janzconn"].ToString());
        //    //SqlCommand cmd = new SqlCommand();
        //    DataTable dt = new DataTable();
        //    string str = "select PRD_ID,PRD_NAME from MAIN_PROD WHERE PRD_TYPE_ID=0";
        //    SqlCommand cmd = new SqlCommand(str);
        //    using (SqlDataAdapter da =new SqlDataAdapter())
        //    {
        //        cmd.Connection = cnn;
        //        cnn.Open();
        //        da.SelectCommand = cmd;
        //        da.Fill(dt);
        //        GridView1.DataSource = dt;
        //        GridView1.DataBind();
        //        cnn.Close();

        //    }




        //}
        



        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["janzconn"].ToString());
        {
            using (SqlCommand cmd = new SqlCommand("select PRD_ID,PRD_NAME from MAIN_PROD WHERE PRD_TYPE_ID=0"))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;
        Label1.Text =  row.Cells[1].Text ;
        Label2.Text = row.Cells[2].Text;
        //Response.Redirect("Savings_create.aspx?sav_name="+Label1.Text+"&sav_id="+Label2.Text+"");
        Session["sav_name"] = row.Cells[1].Text;
        Session["sav_id"] = row.Cells[2].Text;
        ClientScript.RegisterStartupScript(typeof(Page), "closePage", "window.close();", true);
        
        
    }
    protected void Onrowclick(object sender,GridViewRowEventArgs e)
    {
        //if (e.Row.RowType == DataControlRowType.DataRow)
        //{
        //    Label1.Text = "1";
        //}
        //Label1.Text = GridView1.SelectedRow.Cells[0].Text;
    }
}