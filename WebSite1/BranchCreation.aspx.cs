using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class BranchCreation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        btnEdit.Enabled = false;
        //txtBrnCode.Attributes.Add("onKeyPress", "return onKeyPressBorcInsert('" + rntBorc.ClientID + "', '" + rntAlacak.ClientID + "', event);");
        
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (txtBrnCode.Text == "" || txtBrnName.Text == "")
        {
            string myStringVariable = "Please Fill the necesarry Information";
            ClientScript.RegisterStartupScript(this.GetType(), "ok", "alert('" + myStringVariable + "');", true);
        }
        else
        {
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["janzconn"].ToString());

            SqlCommand cmd = new SqlCommand();
            //string str="INSERT INTO USERS
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "insertbranch";
            cmd.Parameters.AddWithValue("@brncode",txtBrnCode.Text);
            cmd.Parameters.AddWithValue("@brnname", txtBrnName.Text);
            cmd.Parameters.AddWithValue("@brnadd1", txtBrnAdd1.Text);
            cmd.Parameters.AddWithValue("@brnadd2", txtBrnAdd2.Text);
            cmd.Parameters.AddWithValue("@brnadd3", txtBrnAdd3.Text);
            cmd.Parameters.AddWithValue("@brnadd4", txtBrnAdd4.Text);
            cmd.Parameters.AddWithValue("@brnCont", txtBrnNum.Text);
            cmd.Parameters.AddWithValue("@brnfax", txtBrnFax.Text);
            cmd.Parameters.AddWithValue("@brnemail", txtEmail.Text);

            cmd.Connection = cnn;
            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
            ClientScript.RegisterStartupScript(this.GetType(), "ok", "alert('Record inserted');", true);
            txtBrnCode.Text = "";
            txtBrnName.Text = "";
            txtBrnAdd1.Text = "";
            txtBrnAdd2.Text = "";
            txtBrnAdd3.Text = "";
            txtBrnAdd4.Text = "";
            txtBrnNum.Text = "";
            txtBrnFax.Text = "";
            txtEmail.Text = "";

           




        }

    }
}