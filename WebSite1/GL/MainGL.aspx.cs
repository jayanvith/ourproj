using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class MainGL : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblUserName.Text = (string)(Session["username"]);
        //lblGlTypeID.Text = "1";

    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {



        if (txtGLCode.Text == "" || txtGLName.Text == "")
        {

            Response.Redirect("MainGL.aspx?maingl_mess=0");

        }
        else
        {

            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["janzconn"].ToString());
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "insertmaingl";
            cmd.Parameters.AddWithValue("@gltypeID", cmbGlType.Text);
            cmd.Parameters.AddWithValue("@gltypename", cmbGlType.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@glsubtypeid", cmbGlSubType.Text);
            cmd.Parameters.AddWithValue("@glsubtypename", cmbGlSubType.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@cartaccid", cmbChartAcc.Text);
            cmd.Parameters.AddWithValue("@chartaccname", cmbChartAcc.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@glcode", txtGLCode.Text);
            cmd.Parameters.AddWithValue("@glname", txtGLName.Text);
            cmd.Parameters.AddWithValue("@gldec", txtGLdec.Text);
            cmd.Parameters.AddWithValue("@gleffdate", txtEffectDate.Text);
            cmd.Parameters.AddWithValue("@glentwho", lblUserName.Text);
            cmd.Parameters.AddWithValue("@glentwhen", DateTime.Today);
            cmd.Parameters.AddWithValue("@glcatg", cmbGlCat.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@glcatid", cmbGlCat.Text);
            cmd.Parameters.AddWithValue("@glact", chkExtSubGL.Checked);
            cmd.Connection = cnn;
            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
            Response.Redirect("MainGL.aspx");





        }




    }
    protected void cmbGLType_SelectedIndexChanged(object sender, EventArgs e)
    {
       // lblGlTypeID.Text = cmbGLType.SelectedValue;
    }
    protected void cmbGLType_Init(object sender, EventArgs e)
    {
        

    }
    protected void btnShow_Click(object sender, EventArgs e)
    {

    }
    protected void cmbGlType_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["janzconn"].ToString());
        //SqlCommand cmd = new SqlCommand();
        string str = "select gltype_sub_name as name, gltype_sub_id as id from [COREBANKER1].[dbo].[GL_TYPE] where gltype='" + cmbGlType.SelectedItem.Text + "'";
        cnn.Open();
        SqlCommand cmd = new SqlCommand(str, cnn);
        SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.Default);
        cmbGlSubType.Items.Clear();
        cmbGlSubType.Items.Add(" ");
        while (dr.Read())
        {
            cmbGlSubType.Items.Add(new ListItem(dr["name"].ToString(), dr["id"].ToString()));
        }
        
        cnn.Close();
        dr.Close();
    }
    protected void cmbChartAcc_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblCharAccID.Text = cmbChartAcc.Text;



    }
    protected void cmbGlSubType_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["janzconn"].ToString());
        //SqlCommand cmd = new SqlCommand();
        string str = "select CHART_ACC_NAME as name, CHART_ACC_ID as id from [COREBANKER1].[dbo].[GL_CHART_ACC] where GL_SUBTYPE_ID='" + cmbGlSubType.Text + "' AND GL_SUBTYPE_NAME='"+cmbGlSubType.SelectedItem.Text+"'";
        cnn.Open();
        SqlCommand cmd = new SqlCommand(str, cnn);
        SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.Default);
        cmbChartAcc.Items.Clear();

        while (dr.Read())
        {
            cmbChartAcc.Items.Add(new ListItem(dr["name"].ToString(), dr["id"].ToString()));
        }
        cnn.Close();
        dr.Close();

    }
    protected void cmbGlSubType_TextChanged(object sender, EventArgs e)
    {
       

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["janzconn"].ToString());
        //SqlCommand cmd = new SqlCommand();
        string str = "select max(GL_ID) as max FROM [COREBANKER1].[dbo].[GL_MAIN] WHERE CHAT_ACC_ID='" + cmbChartAcc.Text + "' AND CHAT_ACC_NAME='" + cmbChartAcc.SelectedItem.Text + "'";
        cnn.Open();
        SqlCommand cmd = new SqlCommand(str, cnn);
        SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.Default);
        if (cmbGlType.Text == "" || cmbGlSubType.Text == "")
        {
            Response.Redirect("MainGL.aspx?error=1");

        }
        else
        {


            while (dr.Read())
            {
                if (dr["max"] == System.DBNull.Value)
                {
                    txtGLCode.Text = lblCharAccID.Text + "01";
                }
                else
                {
                    string a = (dr.GetString(0));
                    txtGLCode.Text = (Convert.ToInt32(dr.GetString(0)) + 1).ToString("00000000");

                }


            }
        }
        cnn.Close();
        dr.Close();

    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblGlcatID.Text = cmbGlCat.Text;
    }
}