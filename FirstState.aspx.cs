using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FirstState : System.Web.UI.Page
{
    string name;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            //name = Request.QueryString["Name"].ToString();
            name = Session["Name"].ToString();
            lblName.Text = "Welcome " + name.ToString();
        }
    }
    protected void lnbSecond_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/SecondState.aspx");
    }

}