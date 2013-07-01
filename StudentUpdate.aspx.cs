using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class StudentUpdate : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\user\\Documents\\Visual Studio 2010\\WebSites\\DropDown\\App_Data\\DataBaseDemo.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            string s=Request.QueryString["Rollno"].ToString();
            TxtRollno.Text = s;
            try
            {
                SqlDataAdapter sa = new SqlDataAdapter("select * from StudentDetails where Rollno='" + s + "'", con);
                DataSet sd = new DataSet();
                con.Open();
                sa.Fill(sd, "a");
                con.Close();
                if (sd.Tables[0].Rows.Count > 0)
                {
                    string r = sd.Tables[0].Rows[0][1].ToString();
                    Txtname.Text = r;
                    string r1 = sd.Tables[0].Rows[0][2].ToString();
                    TxtAddress.Text = r1;
                    string r2 = sd.Tables[0].Rows[0][3].ToString();
                    TxtPhone.Text = r2;
                    string r3 = sd.Tables[0].Rows[0][4].ToString();
                    TxtEmail.Text = r3;
                
                }

            }
            catch (Exception g)
            {
            }
        }

    }
    protected void BtnUpdate_Click(object sender, EventArgs e)
    {
        SqlCommand sa = new SqlCommand("update StudentDetails set name='"+Txtname.Text+"',Address='"+TxtAddress.Text+"',phone='"+TxtPhone.Text+"',emailid='"+TxtEmail.Text+"'where Rollno='"+TxtRollno.Text+"'", con);
        con.Open();
        sa.ExecuteNonQuery();
        con.Close();
        Response.Redirect("~/StudentDynamic.aspx");

        
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        SqlCommand sa = new SqlCommand("Delete from StudentDetails where RollNo='"+TxtRollno.Text+"'",con);
            con.Open();
        sa.ExecuteNonQuery();
        con.Close();
        Response.Redirect("~/StudentDynamic.aspx");

    }
}