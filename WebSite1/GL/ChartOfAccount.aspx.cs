using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class GL_ChartOfAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["janzconn"].ToString());
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "insertglchatOfacct";
        cmd.Parameters.AddWithValue("@gltypeid", cmbGlType.Text);
        cmd.Parameters.AddWithValue("@gltypename", cmbGlType.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@glsubtypeid", cmbsubtype.Text);
        cmd.Parameters.AddWithValue("@glsubtypename", cmbsubtype.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@chataccid", txtChtAccID.Text);
        cmd.Parameters.AddWithValue("@chataccname", txtChtAccName.Text);
        cmd.Parameters.AddWithValue("@chataccdec", txtChartAccDec.Text);
        cmd.Parameters.AddWithValue("@chataccwho", lblUserID.Text);
        cmd.Parameters.AddWithValue("@characcwhen", DateTime.Now);
        cmd.Connection = cnn;
        cnn.Open();
        cmd.ExecuteNonQuery();
        cnn.Close();
        //txtEffectDate.Text = "";
        //txtGLCode.Text = "";
        //txtGLName.Text = "";
        ////cmbGLType.Text = "";
        //chkExtSubGL.Checked = false;
        Response.Redirect("ChartOfAccount.aspx");

        

    }
    protected void Button5_Click(object sender, EventArgs e)
    {

    }
    protected void btnExit_Click(object sender, EventArgs e)
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
        cmbsubtype.Items.Clear();

        while (dr.Read())
        {
            cmbsubtype.Items.Add(new ListItem(dr["name"].ToString(), dr["id"].ToString()));
        }
        cnn.Close();
        dr.Close();


    }
    protected void cmbsubtype_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["janzconn"].ToString());
        //SqlCommand cmd = new SqlCommand();
        string str = "select max(CHART_ACC_ID) as max FROM [COREBANKER1].[dbo].[GL_CHART_ACC] WHERE GL_SUBTYPE_ID='" + cmbsubtype.Text + "' AND GL_TYPE_ID='"+cmbGlType.Text+"'";
        cnn.Open();
        SqlCommand cmd = new SqlCommand(str, cnn);
        SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.Default);
        if (cmbsubtype.Text == "" || cmbGlType.Text == "")
        {
            Response.Redirect("ChartOfAccount.aspx?error=1");

        }
        else
        {


            while (dr.Read())
            {
                if (dr["max"] == System.DBNull.Value)
                {
                    txtChtAccID.Text = cmbsubtype.Text + "01";
                }
                else
                {
                    string a = (dr.GetString(0));
                    txtChtAccID.Text = (Convert.ToInt32(dr.GetString(0)) + 1).ToString("000000");

                }


            }
        }
        cnn.Close();
        dr.Close();


    }
}