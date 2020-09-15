using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class doreply : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            if (Request.QueryString["messageid"] != null)
            {
                int mid = Convert.ToInt16(Request.QueryString["messageid"].ToString());
                String mycon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\USER\source\repos\WebSite1\WebSite1\App_Data\Message.mdf;Integrated Security=True";
                String myquery = "Select * from msg where mId=" + mid;
                SqlConnection con = new SqlConnection(mycon);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = myquery;
                cmd.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {

                    Label1.Text = ds.Tables[0].Rows[0]["studentid"].ToString();
                    Label2.Text = ds.Tables[0].Rows[0]["registerdatetime"].ToString();
                    Label3.Text = ds.Tables[0].Rows[0]["cname"].ToString();
                    Label4.Text = ds.Tables[0].Rows[0]["compalintdetail"].ToString();
                    Label5.Text = ds.Tables[0].Rows[0]["status"].ToString();
                }
                else
                {
                    Response.Redirect("Messagereplypage.aspx");

                }
                con.Close();


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

    protected void Button14_Click(object sender, EventArgs e)
    {
        int mid = Convert.ToInt16(Request.QueryString["messageid"].ToString());
        String mycon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\USER\source\repos\WebSite1\WebSite1\App_Data\Message.mdf;Integrated Security=True";
        String updatedata = "Update msg set status='Sent'" + ", reply='" + TextBox1.Text + "' where mId=" + mid;
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Label6.Text = "Reply Has Been Processed Properly";
    }
}

