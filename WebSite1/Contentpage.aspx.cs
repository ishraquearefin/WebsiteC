using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;

public partial class Contentpage : System.Web.UI.Page
{
  
    public SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\USER\source\repos\WebSite1\WebSite1\App_Data\Register.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("file", typeof(string));
            dt.Columns.Add("size", typeof(string));
            dt.Columns.Add("type", typeof(string));
            foreach (string strfile in Directory.GetFiles(Server.MapPath("~/Data/")))
            {
                FileInfo fi = new FileInfo(strfile);
                dt.Rows.Add(fi.Name, fi.Length, GetFileTypeByExtension(fi.Extension));
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
            string query = "select * from [Useri] where Name = '" + Session["user"] + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();

            if (rd.HasRows)
            {
                rd.Read();
                if (rd[5].ToString() == "Teacher")
                {
                    Button10.Visible = true;
                    FileUpload1.Visible = true;

                }
                else {
                    Button10.Visible = false;
                    FileUpload1.Visible = false;
                  
                }
            }
        }
        else
        {
            Response.Redirect("Loginpage.aspx");
        }
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("Homepage.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Announcementpage.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Contentpage.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Messagepage.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Userpage.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Remove("user");
        Response.Redirect("Loginpage.aspx");
    }



    protected void upload(object sender, EventArgs e)
    {

          
                if (FileUpload1.HasFile)
                {

                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Data/") + FileUpload1.FileName);
                }
                DataTable dt = new DataTable();
                dt.Columns.Add("file", typeof(string));
                dt.Columns.Add("size", typeof(string));
                dt.Columns.Add("type", typeof(string));
                foreach (string strfile in Directory.GetFiles(Server.MapPath("~/Data/")))
                {
                    FileInfo fi = new FileInfo(strfile);
                    dt.Rows.Add(fi.Name, fi.Length, GetFileTypeByExtension(fi.Extension));
                }
                GridView1.DataSource = dt;
                GridView1.DataBind();
    }
            
        
        
            
        
        
    
    private string GetFileTypeByExtension(string fileExtension)
    {
        switch (fileExtension.ToLower())
        {
            case ".docx":
            case ".doc":
                return "Microsoft Word Document";
            case ".xlsx":
            case ".xls":
                return "Microsoft Excel Document";
            case ".txt":
                return "Text Document";
            case ".jpg":
            case ".png":
                return "Image";
            case ".pdf":
                return "Pdf";
            default:
                return "Unknown";
        }
    }



    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Response.Clear();
        Response.ContentType = "application/octet-stream";
        Response.AppendHeader("Content-Disposition", "filename="+ e.CommandArgument);
        Response.TransmitFile(Server.MapPath("~/Data/") + e.CommandArgument);
        Response.End();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}