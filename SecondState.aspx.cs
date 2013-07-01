using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SecondState : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //string name = Request.QueryString["Name"].ToString();
            string name = Session["Name"].ToString();
            lblName.Text = "Hello " + name.ToString();
        }
    }
}