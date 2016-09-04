using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Saving_main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        if(txtSavCode.Text=="" ||txtSaveName.Text=="")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ok", "alert('Please Enter Correct Details...');", true);

        }
        else { 
            if(Convert.ToInt32(txtSavCode.Text)>100)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "ok", "alert('Savings Code Should be less than 100');", true);


            }
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["janzconn"].ToString());
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "insertmainprd";
        cmd.Parameters.AddWithValue("@prdid", txtSavCode.Text);
        cmd.Parameters.AddWithValue("@prdname", txtSaveName.Text);
        cmd.Parameters.AddWithValue("@prdtype", "Savings");
        cmd.Parameters.AddWithValue("@prdtypeid", '0');
        cmd.Parameters.AddWithValue("@savintcalmet",cmbIntCalMeth.SelectedItem.Text );
        cmd.Parameters.AddWithValue("@savintcalmetid", cmbIntCalMeth.Text);
        cmd.Parameters.AddWithValue("@savCalon", cmbCalOn.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@savCalOnid", cmbCalOn.Text);
        cmd.Parameters.AddWithValue("@savCalamt", cmbIntCalAmt.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@savCalamtId", cmbIntCalAmt.Text);
        cmd.Parameters.AddWithValue("@savCalminAmt", txtMinAmtInt.Text);

        cmd.Parameters.AddWithValue("@savintCrd", cmbIntCrdTo.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@savintCrdId", cmbIntCrdTo.Text);
        cmd.Parameters.AddWithValue("@savintCrdAcc", txtIntCrdTo.Text);


        cmd.Parameters.AddWithValue("@SavGL", txtGlCode.Text);
        cmd.Parameters.AddWithValue("@SavIntGL", txtIntGL.Text);
        cmd.Parameters.AddWithValue("@savTaxGL", txtTaxGL.Text);
        //cmd.Parameters.AddWithValue("@savAccGen", '0');
        if (rbtAuto.Checked == true)
        {
            cmd.Parameters.AddWithValue("@savAccGen", "0");

        }
        else
        {
            cmd.Parameters.AddWithValue("@savAccGen", "1");

        }
            cmd.Connection = cnn;
            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
            ClientScript.RegisterStartupScript(this.GetType(), "ok", "alert('Record inserted');", true);
            //txtGlCode.Text = "";
            //txtIntCrdTo.Text = "";
            //txtIntGL.Text = "";
            //txtSavCode.Text = "";
            //txtSaveName.Text = "";
            //txtTaxGL.Text = "";
            Response.Redirect("Saving_main.aspx");






        }





    }
    protected void txtSavCode_TextChanged(object sender, EventArgs e)
    {
       // string txt = txtSavCode.Text;
       // txtSavCode.Text = txt.ToString("000");
    }


    protected void cmbIntCrdTo_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(cmbIntCrdTo.Text=="1")
        {
            txtIntCrdTo.Visible = true;
            lblIntCrdTo.Visible = true;
            btnIntCrd.Visible = true;
        }
        else
        {
            txtIntCrdTo.Visible = false;
            lblIntCrdTo.Visible = false;
            btnIntCrd.Visible = false;
        }
    }
        
    //protected void TabContainer1_ActiveTabChanged(object sender, EventArgs e)
    //{
    //    ClientScript.RegisterStartupScript(this.GetType(), "ok", "alert('Record ');", true);
    //}


    protected void BtnNewID_Click(object sender, EventArgs e)
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["janzconn"].ToString());
        //SqlCommand cmd = new SqlCommand();
        string str = "select max(PRD_ID) as maxprd FROM [COREBANKER1].[dbo].[MAIN_PROD] WHERE PRD_TYPE_ID='0'";
        cnn.Open();
        SqlCommand cmd = new SqlCommand(str, cnn);
        SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.Default);
        while (dr.Read())
        {
            if (dr["maxprd"] == System.DBNull.Value)
            {
                txtSavCode.Text = "001";
            }
            else
            {
                int aa = Convert.ToInt32(dr["maxprd"].ToString());
                if(aa>100)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "ok", "alert('savings Code cannot grater than 100');", true);

                }
                else { 
                txtSavCode.Text = (Convert.ToInt32(dr["maxprd"].ToString()) + 1).ToString("000");
                }
            }
        }

    }
}