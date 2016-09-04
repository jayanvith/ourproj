using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Util;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;
using System.IO;
using System.Text;

public partial class UserCreation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtUname.Focus();
        

    }
    private string Encrypt(string clearText)
    {
        string EncryptionKey = "MAKV2SPBNI99212";
        byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(clearBytes, 0, clearBytes.Length);
                    cs.Close();
                }
                clearText = Convert.ToBase64String(ms.ToArray());
            }
        }
        return clearText;
    }





    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtUname.Text == "" || txtPasswd.Text == "" || txtConfPasswd.Text == "" || txtFname.Text == "" || txtLname.Text == "" || txtMname.Text == "")
        {
            string myStringVariable = "Please Fill the necesarry Information";
            
            ClientScript.RegisterStartupScript(this.GetType(), "ok", "alert('" + myStringVariable + "');", true);
           
        }
        else
        {
            if (txtPasswd.Text != txtConfPasswd.Text)
            {
                string myStringVariable = "Please check the Password";
                ClientScript.RegisterStartupScript(this.GetType(), "ok", "alert('" + myStringVariable + "');", true);
            }
            else
            {

                SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["janzconn"].ToString());
                
                SqlCommand cmd = new SqlCommand();
                //string str="INSERT INTO USERS
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "insertusers";
                cmd.Parameters.AddWithValue("@username", txtUname.Text);
                cmd.Parameters.AddWithValue("@passwd", Encrypt(txtPasswd.Text));
                cmd.Parameters.AddWithValue("@fname", txtFname.Text);
                cmd.Parameters.AddWithValue("@Mname", txtMname.Text);
                cmd.Parameters.AddWithValue("@Lname", txtLname.Text);
                cmd.Parameters.AddWithValue("@brncode", txtBrnCode.Text);
                cmd.Parameters.AddWithValue("@Bdate", txtBdate.Text);
                cmd.Parameters.AddWithValue("@Add1", txtAdd1.Text);
                cmd.Parameters.AddWithValue("@Add2", txtAdd2.Text);
                cmd.Parameters.AddWithValue("@Add3", txtAdd3.Text);
                cmd.Parameters.AddWithValue("@Add4", txtAdd4.Text);
                cmd.Parameters.AddWithValue("@bankjoin", txtBankJoin.Text);
                cmd.Parameters.AddWithValue("@empid", txtEmpID.Text);
                cmd.Parameters.AddWithValue("@marrage", cmbMarrageStatus.Text);
                cmd.Parameters.AddWithValue("@nic", txtNIC.Text);
                cmd.Parameters.AddWithValue("@usercra", lblEntUser.Text);
                cmd.Parameters.AddWithValue("@usercrwhen", DateTime.Today);
                cmd.Parameters.AddWithValue("@userrole", cmbUserRole.Text);
                


                

                cmd.Connection = cnn;
                cnn.Open();
                //try
                //{
                    cmd.ExecuteNonQuery();
                //}
                //catch (d)
                //{
                //    if(ex==Exception.Equals.
                //}

                cnn.Close();
                ClientScript.RegisterStartupScript(this.GetType(), "ok", "alert('Record inserted');", true);
                txtUname.Text = "";
                txtPasswd.Text = "";
                txtConfPasswd.Text = "";
                txtFname.Text = "";
                txtMname.Text = "";
                txtLname.Text = "";
                txtBdate.Text = "";
                txtBankJoin.Text = "";
                txtBrnCode.Text = "";
                txtEmpID.Text = "";
                txtAdd1.Text = "";
                txtAdd2.Text = "";
                txtAdd3.Text = "";
                txtAdd4.Text = "";
                cmbMarrageStatus.Text = "";
                cmbUserRole.Text = "";




            }


        }

    }
}