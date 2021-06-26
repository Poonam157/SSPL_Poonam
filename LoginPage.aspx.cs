using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SSPL_Poonam
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["Employee_PoonamConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            try
            {
                
                SqlCommand cmd = new SqlCommand("select * from TblLogin where UserName=@UserName and Password=@Password", con);
                cmd.Parameters.AddWithValue("@UserName", txtUserName.Text);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);

                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                con.Open();
                cmd.ExecuteNonQuery();
                if (dt.Rows.Count > 0)
                {
                    //Server.Transfer("OptionstoChoose.aspx");
                    Session.Clear();
                    Response.Redirect("OptionstoChoose.aspx");
                }
                else
                {
                    lblMessage.Text = "Your UserName or Password is incorrect";
                    txtPassword.Text = "";
                    txtUserName.Text = "";
                }
                
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
            }
        }

       
    }
}