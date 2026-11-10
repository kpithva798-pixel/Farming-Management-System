using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO.Ports;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        int i;

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text != null && txtPassword.Text != null)
            {
                getcon();

                cmd = new SqlCommand("select count(*) from Register where username='"
                    + txtUsername.Text + "' and Password='"
                    + txtPassword.Text + "'", con);

                i = Convert.ToInt32(cmd.ExecuteScalar());

                if (i > 0)
                {
                    Session["user"] = txtUsername.Text;

                    Response.Redirect("index.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Username or Password!!!');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Username or Password!!!');</script>");
            }
        }

    }
}