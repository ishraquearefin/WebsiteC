using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Activities.Expressions;

public partial class Messagepage : System.Web.UI.Page
     
{
    static int mId;
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
                if (rd[5].ToString() == "Student")
                {
                    getmsgid();
                    Panel1.Visible = true; 
                    Label1.Text = DateTime.Now.ToLongDateString().ToString() + " " + DateTime.Now.ToLongTimeString().ToString();
                    
                }
                else
                {
                    Response.Redirect("Messagereplypage.aspx");
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

    protected void Button11_Click(object sender, EventArgs e) { 
         string query = "select * from [Useri] where Name = '" + Session["user"] + "'";
        SqlConnection con2 = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\USER\source\repos\WebSite1\WebSite1\App_Data\Register.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand(query, con2);
         con2.Open();
         SqlDataReader rd = cmd.ExecuteReader();

        if (rd.HasRows)
        {
            rd.Read();
            String query1 = "insert into msg(mId,studentid,registerdatetime,cname,compalintdetail,status) values('"+mId+"','" +rd[0] +"','" + Label1.Text + "','" +rd[1].ToString()+ "','" + TextBox1.Text + "','Not Seen')";
            String mycon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\USER\source\repos\WebSite1\WebSite1\App_Data\Message.mdf;Integrated Security=True";
            SqlConnection con1 = new SqlConnection(mycon);
            con1.Open();
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = query1;
            cmd1.Connection = con1;
            cmd1.ExecuteNonQuery();
            TextBox1.Text = "";
            Label2.Text = "Your Msg ID is " + mId + " . You can Check the Status of Message By Using ID";
        }
   
       
    }
    public void getmsgid()
    {
        String mycon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\USER\source\repos\WebSite1\WebSite1\App_Data\Message.mdf;Integrated Security=True";
        SqlConnection scon = new SqlConnection(mycon);
        String myquery = "select mId from msg";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        scon.Close();
        if (ds.Tables[0].Rows.Count < 1)
        {
            mId = 10001;

        }
        else
        {



            String mycon1 = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\USER\source\repos\WebSite1\WebSite1\App_Data\Message.mdf;Integrated Security=True";
            SqlConnection scon1 = new SqlConnection(mycon1);
            String myquery1 = "select max(mId) from msg";
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = myquery1;
            cmd1.Connection = scon1;
            SqlDataAdapter da1 = new SqlDataAdapter();
            da1.SelectCommand = cmd1;
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            int a;
            a = Convert.ToInt16(ds1.Tables[0].Rows[0][0].ToString());
            a = a + 1;
            mId = a;
            scon1.Close();
        }

    }

    protected void Button12_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text != "")
        {
            String mycon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\USER\source\repos\WebSite1\WebSite1\App_Data\Message.mdf;Integrated Security=True";
            String myquery = "Select * from msg where mId= '" + TextBox2.Text + "'And cname='"+Session["user"]+"'"; 
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0 )
            {
                Label8.Text = "Particular ID Found";
                Label4.Text = "Your Message ID is " + ds.Tables[0].Rows[0]["mId"].ToString();
                Label5.Text = "Status of Your Messaage: " + ds.Tables[0].Rows[0]["status"].ToString();
                if (ds.Tables[0].Rows[0]["status"].ToString() == "Not Seen")
                {
                    Panel2.Visible = true;

                    Label6.Text = "Your Message : " + ds.Tables[0].Rows[0]["compalintdetail"].ToString();
                    Label7.Visible = false;
                }
                else
                {
                    Panel2.Visible = true;
                    Label6.Text = "Your Message : " + ds.Tables[0].Rows[0]["compalintdetail"].ToString();

                    Label7.Text = "Teacher Reply : " + ds.Tables[0].Rows[0]["reply"].ToString();
                }
            }
            else
            {
                Label8.Text = "Particular ID Not Found";
                Label4.Text = "";
                Label5.Text = "";
                Panel2.Visible = false;


            }
            con.Close();
        }
    }
}