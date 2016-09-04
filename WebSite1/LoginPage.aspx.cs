using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;
using System.Text;
using System.IO;
using System.Globalization;


public partial class login2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["janzconn"].ToString());
        cnn.Open();
        SqlCommand cmd = new SqlCommand();
        string str = "select USER_NAME,USER_PASSWD from USERS WHERE USER_NAME='" + txtUserName.Text + "'";
        cmd = new SqlCommand(str, cnn);
        //OdbcDataReader dr = cmd.ExecuteReader(System.Data.CommandBehavior.SingleRow);
        SqlDataReader dr = cmd.ExecuteReader(System.Data.CommandBehavior.SingleRow);
        if (dr.Read() == true)
        {
            string pwd = dr[1].ToString();
            pwd = Decrypt(pwd);
            if (txtPassword.Text == pwd)
            {

                cmd.Dispose();
                dr.Dispose();
                cnn.Close();
                Response.Redirect("MainPage1.aspx?field1=" + txtUserName.Text + "");


            }
            else
            {
                //string myStringVariable = "Invalid UserName or Password";
                //ClientScript.RegisterStartupScript(this.GetType(), "ok", "alert('" + myStringVariable + "');", true);
                ////SqlConnection cnn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["janzconn"].ToString());
                //cnn1.Open();
                //string str1 = "UPDATE USERS SET UNSUCC_LOGIN ='" + DateTime.Now + "' where USER_NAME='" + txtUserName.Text + "'";
                //SqlCommand  cmd1 = new SqlCommand(str1,cnn1);
                //cmd1.ExecuteNonQuery();
                //cnn1.Close();
                Response.Redirect("LoginPage.aspx?loginpag_err=0");

            }
        }
        else
        {
            Response.Redirect("LoginPage.aspx?loginpag_err=1");


        }

        
            

            cnn.Close();

        }
   


   


         private string Decrypt(string cipherText)
    {
        string EncryptionKey = "MAKV2SPBNI99212";
        byte[] cipherBytes = Convert.FromBase64String(cipherText);
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(cipherBytes, 0, cipherBytes.Length);
                    cs.Close();
                }
                cipherText = Encoding.Unicode.GetString(ms.ToArray());
            }
        }
        return cipherText;
    }
    
}