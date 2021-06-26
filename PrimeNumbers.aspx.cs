using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace SSPL_Poonam
{
    public partial class PrimeNumbers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
			
        }

        protected void btnDisplayPrime_Click(object sender, EventArgs e)
        {

			txtResult.Text = "";
			int maxnum = Convert.ToInt32(txtMaxNumber.Text);
			int i, k, p;
			for (i = 2; i <= maxnum; i++)
			{
				k = 2;
				p = 1;
				while (k < i)
				{
					if (i % k == 0)
					{
						p = 0;
						break;
					}
					k++;
				}
				if (p == 1)
				{
					txtResult.Text = txtResult.Text + " " + i.ToString();
				}
			}
		}

        protected void btnBack_Click(object sender, EventArgs e)
        {
			Response.Redirect("OptionstoChoose.aspx");
        }

        protected void btnClose_Click(object sender, EventArgs e)
        {
			System.Environment.Exit(1);
		}
    }
}