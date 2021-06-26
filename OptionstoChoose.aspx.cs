using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SSPL_Poonam
{
    public partial class OptionstoChoose : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEmpReg_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmployeeRegisteration.aspx");
        }

        protected void BtnPrime_Click(object sender, EventArgs e)
        {
            Response.Redirect("PrimeNumbers.aspx");
        }
    }
}