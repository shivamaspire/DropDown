using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\user\\Documents\\Visual Studio 2010\\WebSites\\DropDown\\App_Data\\DataBaseDemo.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string r = Request.QueryString["name"].ToString();
            TxtFName.Text = r;

        }
        binddetails();
    }
    protected void BtnSave_Click(object sender, EventArgs e)
    {
        string gender;
        if (Male.Checked)
        {
            gender = "male";
        }
        else
        {
            gender = "female";
        }
        try
        {
            SqlCommand cmd = new SqlCommand("insert into registration(firstname,lastname,password,cpassword,gender,address,birthdate) values('" + TxtFName.Text + "','" + TxtLName.Text + "','" + TxtPass.Text + "','" + TxtCpass.Text + "','" + gender.ToString() + "','" + txtAddress.ToString() + "','" + CalBirthday.SelectedDate.ToString() + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            binddetails();

        }
        catch (Exception gr)
        {
            TxtFName.Text = "hell";
        }
    }
    public void binddetails()
    {
        try
        {
            SqlDataAdapter cmd = new SqlDataAdapter("select * from registration", con);
            DataSet sa = new DataSet();
            con.Open();
            cmd.Fill(sa, "hh");
            con.Close();
            Dglogin1.DataSource = sa.Tables[0];
            Dglogin1.DataBind();
        }
        catch (Exception gr)
        {
            TxtFName.Text = "error";
        }
    }
}