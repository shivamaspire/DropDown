using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class LateBindingsDemo : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\user\\Documents\\Visual Studio 2010\\WebSites\\DropDown\\App_Data\\DataBaseDemo.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
            BindName();
        }
    }
    public void BindName()
    {
        try
        {
            SqlDataAdapter da = new SqlDataAdapter("Select * from LoginDetails", con);
            DataSet ds = new DataSet();
            con.Open();
            da.Fill(ds, "abc");
            con.Close();
            drpName.DataSource = ds.Tables[0];
            drpName.DataTextField = "Name";
            drpName.DataValueField = "Name";
            drpName.DataBind();
        }
        catch (Exception grid)
        {
            lblAns.Text = grid.Message.ToString();
        }
    }
    public void BindGrid()
    {
        try
        {
            SqlDataAdapter da = new SqlDataAdapter("Select * from LoginDetails", con);
            DataSet ds = new DataSet();
            con.Open();
            da.Fill(ds, "abc");
            con.Close();
            dgLogin.DataSource = ds.Tables[0];
            dgLogin.DataBind();
        }
        catch (Exception grid)
        {
            lblAns.Text = grid.Message.ToString();
        }
    }
    protected void drpName_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            SqlDataAdapter da = new SqlDataAdapter("Select * from LoginDetails where Name like'" + drpName.SelectedItem.Text + "'", con);
            DataSet ds = new DataSet();
            con.Open();
            da.Fill(ds, "abc");
            con.Close();
            dgLogin.DataSource = ds.Tables[0];
            dgLogin.DataBind();
        }
        catch (Exception grid)
        {
            lblAns.Text = grid.Message.ToString();
        }
    }
    protected void lnbAll_Click(object sender, EventArgs e)
    {
        BindGrid();
    }
    protected void dgLogin_CancelCommand(object source, DataGridCommandEventArgs e)
    {
        dgLogin.EditItemIndex = -1;
        BindGrid();
    }
    protected void dgLogin_DeleteCommand(object source, DataGridCommandEventArgs e)
    {
        string name   = (((Label)e.Item.FindControl("lblName")).Text);
        SqlCommand cmd = new SqlCommand("Delete from logindetails where name like '" + name.ToString() + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        dgLogin.EditItemIndex = -1;
        BindGrid();
    }
    protected void dgLogin_EditCommand(object source, DataGridCommandEventArgs e)
    {
        dgLogin.EditItemIndex = e.Item.ItemIndex;
        BindGrid();
    }

    protected void dgLogin_UpdateCommand(object source, DataGridCommandEventArgs e)
    {
        string name = (((TextBox)e.Item.FindControl("txtname")).Text);
        string password = (((TextBox)e.Item.FindControl("txtPasswprd")).Text);
        string Cpassword = (((TextBox)e.Item.FindControl("txtCPassword")).Text);

        SqlCommand cmd = new SqlCommand("update LoginDetails set password='"+password.ToString()+"',CPassword='"+Cpassword.ToString()+"' where name='"+name.ToString()+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        BindGrid();
    }
}