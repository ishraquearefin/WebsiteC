using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Messagereplypage : System.Web.UI.Page
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

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button13_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        string args = btn.CommandArgument;
        Response.Redirect("doreply.aspx?messageid=" + args);
    }
}