using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Loginpage : System.Web.UI.Page
{
    public SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\USER\source\repos\WebSite1\WebSite1\App_Data\Register.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        
            string query = "select count (*) from [Useri] where Name ='" + usertxt.Text + "' and Password ='" + passtxt.Text + "'";
            SqlCommand cmd = new SqlCommand(query,con);
            con.Open();
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {

                Session["user"] = usertxt.Text;
                Response.Redirect("Homepage.aspx");
            }
            else
            {
            Panel2.Controls.Add(new Label { Text="YOUR ID OR PASSWORD IS INCORRECT"});
                
            }
    }
       
    
}