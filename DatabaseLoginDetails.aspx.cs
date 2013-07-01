using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class DatabaseLoginDetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\user\\Documents\\Visual Studio 2010\\WebSites\\DropDown\\App_Data\\UpdateMyDatabase.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindname();
            
        }
    }
        public void bindname()
        {
            try
            {
                SqlDataAdapter sad = new SqlDataAdapter("select * from logindemo", con);
                DataSet da = new DataSet();
                con.Open();
                sad.Fill(da, "ad");
                con.Close();
                dgLogin.DataSource = da.Tables[0];
                dgLogin.DataBind();
            }
            catch (Exception gr)
            {

            }

        }


        protected void BtnSave_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand sad = new SqlCommand("insert into logindemo(id,name,password) values('" + TxtId.Text + "','" + TxtName.Text + "','" + TxtPass.Text + "')", con);
                con.Open();
                sad.ExecuteNonQuery();
                con.Close();
                bindname();
            }
            catch (Exception gr)
            {
                TxtName.Text = "hell you baby!!!";
            }
        }
    protected void BtnUpdate_Click(object sender, EventArgs e)
    {
        SqlCommand sad = new SqlCommand("update logindemo set name='" + TxtName.Text + "',password='" +  TxtPass.Text + "' where id='"+TxtId.Text+"'", con);
        con.Open();
        sad.ExecuteNonQuery();
        con.Close();
        bindname();
    }
    protected void BtnDelete_Click(object sender, EventArgs e)
    {
        SqlCommand sad = new SqlCommand("delete from logindemo where id='"+TxtId.Text+"'", con);
        con.Open();
        sad.ExecuteNonQuery();
        con.Close();
        bindname();

    }
    protected void BtnClose_Click(object sender, EventArgs e)
    {
       
    }
}