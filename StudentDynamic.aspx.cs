using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class StudentDynamic : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\user\\Documents\\Visual Studio 2010\\WebSites\\DropDown\\App_Data\\DataBaseDemo.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            SqlDataAdapter cmd = new SqlDataAdapter("select * from StudentDetails", con);
            DataSet ds = new DataSet();
            con.Open();
            cmd.Fill(ds, "ff");
            con.Close();
            TableRow r = new TableRow();
            r.BackColor = System.Drawing.Color.Aquamarine;
            r.ForeColor = System.Drawing.Color.Black;
            for (int i = 0; i < 1; i++)
            {
                
                TableCell c = new TableCell();
                c.ColumnSpan = 5;
                LiteralControl l2 = new LiteralControl("StudentDetails");
                c.Controls.Add(l2);
                c.Style.Add("text-align", "center");
                c.Controls.Add(l2);
                r.Controls.Add(c);
            }
            Table1.Controls.Add(r);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Table1.GridLines = GridLines.Both;

                TableRow r2 = new TableRow();
                r2.BackColor = System.Drawing.Color.Aquamarine;
                r2.ForeColor = System.Drawing.Color.Black;

                for (int i = 0; i < ds.Tables[0].Columns.Count; i++)
                {
                    TableCell c1 = new TableCell();
                    c1.Style.Add("text-align", "center");
                    LiteralControl l1 = new LiteralControl(ds.Tables[0].Columns[i].ColumnName.ToString());

                    c1.Controls.Add(l1);
                    r2.Controls.Add(c1);
                }
                Table1.Controls.Add(r2);
                for (int j = 0; j < ds.Tables[0].Rows.Count; j++)
                {
                    TableRow r1 = new TableRow();

                    for (int i = 0; i < 1; i++)
                    {
                        TableCell c2 = new TableCell();
                        c2.Style.Add("text-align", "center");


                        HyperLink obj = new HyperLink();
                        obj.Text = ds.Tables[0].Rows[j][i].ToString();
                        obj.NavigateUrl = "~/StudentUpdate.aspx?RollNo="+obj.Text;
                        c2.Controls.Add(obj);


                        r1.Controls.Add(c2);
                    }
                    for (int k = 1; k < ds.Tables[0].Columns.Count; k++)
                    {
                        TableCell c2 = new TableCell();
                        c2.Style.Add("text-align", "center");

                        LiteralControl l3 = new LiteralControl(ds.Tables[0].Rows[j][k].ToString());
                        c2.Controls.Add(l3);
                        r1.Controls.Add(c2);

                    }

                    Table1.Controls.Add(r1);
                }
            }
        }
        catch (Exception g)
        {
        }
    }

}