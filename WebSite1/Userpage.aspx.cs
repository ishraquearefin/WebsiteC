using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Caching;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Security.Cryptography;

public partial class Userpage : System.Web.UI.Page
{
  
    StringBuilder table = new StringBuilder();
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\USER\source\repos\WebSite1\WebSite1\App_Data\Register.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            string query = "select * from [Useri] where Name = '" + Session["user"] + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();

            if (rd.HasRows)
            {
                rd.Read();
                if (rd[5].ToString() == "Teacher")
                {
                    SqlConnection con1 = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\USER\source\repos\WebSite1\WebSite1\App_Data\Register.mdf;Integrated Security=True");
                    string query1 = "select * from [Useri] where Role = 'Student'";
                    SqlCommand cmd1 = new SqlCommand(query1, con1);
                    con1.Open();
                    SqlDataAdapter sd = new SqlDataAdapter(cmd1);
                    DataTable dt = new DataTable();
                    sd.Fill(dt);

                    table.Append("<h2>");
                    table.Append("Student Information");
                    table.Append("</h2>");
                    table.Append("<hr/>");
                    table.Append("<table border=1 class=table>");
                    table.Append("<tr>");
                    foreach (DataColumn dc in dt.Columns)
                    {
                        table.Append("<th>");
                        table.Append(dc.ColumnName.ToUpper());
                        table.Append("</th>");
                    }
                    table.Append("</tr>");
                    foreach (DataRow dr in dt.Rows)
                    {
                        table.Append("<tr>");
                        foreach (DataColumn dc in dt.Columns)
                        {
                            table.Append("<th>");
                            table.Append(dr[dc.ColumnName].ToString());
                            table.Append("</th>");

                        }
                        table.Append("</tr>");
                    }
                    table.Append("</table>");

                    Panel1.Controls.Add(new Label{ Text = table.ToString() });
                    Label1.Visible = false;
                    con1.Close();
                }
                else
                {
                    Label1.Visible = true;
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
        {
            Session.Remove("user");
            Response.Redirect("Loginpage.aspx");
        }
    }
}