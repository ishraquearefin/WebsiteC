using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.ServiceModel.Channels;

public partial class Registerpage : System.Web.UI.Page
{
    public SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\USER\source\repos\WebSite1\WebSite1\App_Data\Register.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
            if (DropDownList1.SelectedIndex == 0)
            {
                string query = "insert into [Useri](Id,Name,Email,PhoneNo,Password,Role) values('" + TextBox2.Text + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + " ','" + TextBox5.Text + " ','" + DropDownList1.SelectedValue + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                

            }
            if (DropDownList1.SelectedIndex == 1)
            {

                string query = "insert into [Useri](Id,Name,Email,PhoneNo,Password,Role) values('" + TextBox2.Text + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + " ','" + TextBox5.Text + " ','" + DropDownList1.SelectedValue + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                
            }
             Response.Redirect("Loginpage.aspx");
        
        
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}