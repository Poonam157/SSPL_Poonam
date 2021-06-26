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
    public partial class EmployeeRegisteration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["Employee_PoonamConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            try
            {
                SqlDataAdapter sde = new SqlDataAdapter("SELECT  emp.ID, emp.Name, emp.DOB, emp.Email, emp.MobileNo, Des.DesignationDesc FROM TblEmployee emp INNER JOIN TblDesignation Des ON emp.DesignationId = Des.DesignationId order by emp.ID", con);
                DataSet ds = new DataSet();
                sde.Fill(ds);
                GridEmpDetails.DataSource = ds;
                GridEmpDetails.DataBind();
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

        protected void btnReset_Click(object sender, EventArgs e)
        {
            CleartextBoxes(this);
        }
        public void CleartextBoxes(Control parent)

        {



            foreach (Control c in parent.Controls)

            {

                if ((c.GetType() == typeof(TextBox)))

                {



                    ((TextBox)(c)).Text = "";

                }



                if (c.HasControls())

                {

                    CleartextBoxes(c);

                }

            }

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["Employee_PoonamConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            
            try
            {                
                string query = "insert into TblEmployee(Name,DOB,Email,MobileNo,DesignationId) values('" + txtName.Text + "', '" + txtDOB.Text + "', '" + txtemail.Text + "', '" + txtmobile.Text + "', '" +  dropdesig.SelectedValue + "');";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                con.Open();
                da.SelectCommand.ExecuteNonQuery();
                con.Close();
                
            }
            catch (Exception ex)
            {                
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
            }
            //GridEmpDetails.DataBind();

            CleartextBoxes(this);
            Response.Redirect("EmployeeRegisteration.aspx");
        }

        
    }
}