using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class DynamicTableDemo : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\user\\Documents\\Visual Studio 2010\\WebSites\\DropDown\\App_Data\\DataBaseDemo.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
        }
    }
    public void BindGrid()
    {
        try
        {
            SqlDataAdapter da = new SqlDataAdapter("Select * from loginDetails", con);
            DataSet ds = new DataSet();
            con.Open();
            da.Fill(ds, "abc");
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                Table1.GridLines = GridLines.Horizontal;
                TableRow r = new TableRow();
                r.BackColor = System.Drawing.Color.Aqua;
                r.ForeColor = System.Drawing.Color.Navy;
                r.Style.Add("text-align", "center");
                for (int i = 0; i < ds.Tables[0].Columns.Count; i++)
                {   
                    TableCell c = new TableCell();
                    LiteralControl one = new LiteralControl(ds.Tables[0].Columns[i].ColumnName.ToString());
                    c.Controls.Add(one);
                    r.Controls.Add(c);
                }
                Table1.Controls.Add(r);


                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    TableRow r1 = new TableRow();
                    r1.BackColor = System.Drawing.Color.MistyRose;
                    r1.ForeColor = System.Drawing.Color.Red;
                    r1.Style.Add("text-align", "center");
                    for (int j = 0; j < ds.Tables[0].Columns.Count; j++)
                    {
                        TableCell c = new TableCell();
                        LiteralControl one = new LiteralControl(ds.Tables[0].Rows[i][j].ToString());
                        c.Controls.Add(one);
                        r1.Controls.Add(c);
                    }
                    Table1.Controls.Add(r1);
                }
            }
        }
        catch (Exception grid)
        {
            lblAns.Text = grid.Message.ToString();
        }
    }
}