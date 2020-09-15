using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Announcementpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {


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

    

    protected void Submit(object sender, EventArgs e)
    {
        String dateofcomment;
        dateofcomment = DateTime.Now.ToLongDateString();
        String query = "insert into com(name,comment,dateofcomment) values('" + Session["user"]+ "','" + TextBox1.Text + "','" + dateofcomment + "')";
        String mycon = @"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=C:\USERS\USER\SOURCE\REPOS\WEBSITE1\WEBSITE1\APP_DATA\DATABASE.MDF;Integrated Security=True";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        DataList1.DataBind();
    }
}