using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MathsDemo : System.Web.UI.Page
{
    localhost.WebService obj = new localhost.WebService();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnClick_Click(object sender, EventArgs e)
    {
        int n1,n2,ans;
        n1 = Convert.ToInt16(txtNum1.Text);
        n2 = Convert.ToInt16(txtNum2.Text);
        ans = obj.Addition(n1,n2);
        lbaAns.Text = "Addition is: " + ans.ToString();
        txtNum1.Text = "";
        txtNum2.Text ="";
        txtNum1.Focus();
    }
}