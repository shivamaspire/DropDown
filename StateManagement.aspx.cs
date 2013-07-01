using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StateManagement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string name = txtUser.Text;
        Session["Name"] = name.ToString();
       // Response.Redirect("~/FirstState.aspx?Name=" + name.ToString());
        Response.Redirect("~/FirstState.aspx");
    }
}