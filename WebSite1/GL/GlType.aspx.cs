using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class GlType : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
            }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["janzconn"].ToString());
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "insertgltype";
            cmd.Parameters.AddWithValue("@gltypeid", cmbGLType.Text);
            cmd.Parameters.AddWithValue("@gltype", cmbGLType.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@glsuntypeid", txtSubGlTypeID.Text);
            cmd.Parameters.AddWithValue("@glsuntypename", txtsunGlTypeName.Text);
            cmd.Parameters.AddWithValue("@glsuntypedec", txtSubGlTypeDec.Text);
            cmd.Parameters.AddWithValue("@usercra", lblUserID.Text);
            cmd.Parameters.AddWithValue("@usercrwhen", DateTime.Now);
            cmd.Parameters.AddWithValue("@GLTYPECTV", chkActv.SelectedValue);
            cmd.Connection = cnn;
            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
            txtSubGlTypeDec.Text = "";
            txtSubGlTypeID.Text = "";
            txtsunGlTypeName.Text = "";
            chkActv.SelectedValue = "";







        
    }
    protected void cmbGlType_SelectedIndexChanged(object sender, EventArgs e)
    {
        //lblGLTypeID.Text = cmbGlType.SelectedValue;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        ClientScript.RegisterStartupScript(typeof(Page), "closePage", "window.close();", true);
    }
    protected void cmbGLType_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        txtSubGlTypeDec.Text = "";
        txtSubGlTypeID.Text = "";
        txtsunGlTypeName.Text = "";
        chkActv.ClearSelection();
        cmbGLType.SelectedIndex = 0;
        lblGLTypeID.Text = "";

    }
    protected void Button1_Click1(object sender, EventArgs e)
    { 
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["janzconn"].ToString());
        String query = 
            "SELECT MAX(gltype_sub_id) as max FROM [COREBANKER1].[dbo].[GL_TYPE] WHERE  gltype_id='" + cmbGLType.Text + "'";
        cnn.Open();
        SqlCommand cmd = new SqlCommand(query, cnn);
        SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.SingleResult);

        while (dr.Read()) {
            if (dr["max"] == System.DBNull.Value)
            {
                txtSubGlTypeID.Text = cmbGLType.Text + "01";
            }
            else {
                //int aa = dr.GetInt32(0);
                txtSubGlTypeID.Text =  (Convert.ToInt32(dr.GetString(0)) + 1).ToString("0000");
            }
        }
    }
}