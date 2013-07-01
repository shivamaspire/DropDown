using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class DataGridDemo : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\user\\Documents\\Visual Studio 2010\\WebSites\\DropDown\\App_Data\\DataBaseDemo.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindgrid();
        }

    }
    public void bindgrid()
    {
        SqlDataAdapter sad = new SqlDataAdapter("select * from studentDetails", con);
        DataSet sd = new DataSet();
        con.Open();
        sad.Fill(sd, "sd");
        con.Close();
        Dglogin.DataSource = sd.Tables[0];
        Dglogin.DataBind();
    }

    protected void Dglogin_DeleteCommand(object source, DataGridCommandEventArgs e)
    {
        string s = (((Label)e.Item.FindControl("lblRollno")).Text);
        SqlCommand cmd = new SqlCommand("delete from StudentDetails where Rollno='" + s.ToString() + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        bindgrid();
    }
    protected void Dglogin_CancelCommand(object source, DataGridCommandEventArgs e)
    {

    }
    protected void Dglogin_EditCommand(object source, DataGridCommandEventArgs e)
    {
        Dglogin.EditItemIndex = e.Item.ItemIndex;
        bindgrid();
    }
    protected void Dglogin_UpdateCommand(object source, DataGridCommandEventArgs e)
    {
        string s = (((TextBox)e.Item.FindControl("txtRollno")).Text);
        string s1 = (((TextBox)e.Item.FindControl("TxtName")).Text);
        string s2 = (((TextBox)e.Item.FindControl("TxtAddress")).Text);
        string s3 = (((TextBox)e.Item.FindControl("TxtEmail")).Text);
        
        
        SqlCommand cmd = new SqlCommand("update  StudentDetails set rollno='"+s.ToString()+"',name='"+s1.ToString()+"',Address='"+s2.ToString()+"',emailid='"+s3.ToString()+"' where Rollno='" + s.ToString() + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Dglogin.EditItemIndex = -1;
        bindgrid();
    
    }
}