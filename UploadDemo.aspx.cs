using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UploadDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        if (flUpload.HasFile)
        {
            string path = Server.MapPath("Upload");
            flUpload.SaveAs(path + "/" + flUpload.FileName.ToString());
            lblAns.Text = "File Uploaded Sucessfully";
        }
        else
        {
            lblAns.Text = "Error!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
        }
    }
}