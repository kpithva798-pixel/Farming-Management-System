using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Configuration;

namespace project
{
    public partial class Ragister : System.Web.UI.Page
    {

        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlCommand cmd;
        SqlConnection con;
        DataSet ds;
        IDataAdapter da;

        void clear()
        {
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtEmail.Text = "";
            txtMobile.Text = "";
            txtUsername.Text = "";
            txtPassword.Text = "";
            txtConfirmPassword.Text = "";
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void fillgrid()
        {
            getcon();

            da = new SqlDataAdapter("SELECT * FROM Register", con);

            ds = new DataSet();
            da.Fill(ds);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (btnRegister.Text == "Register")
            {
                getcon();

                cmd = new SqlCommand("INSERT INTO Register (fnm,lnm,email,mobile,username,password) VALUES('"
     + txtFirstName.Text + "','"
     + txtLastName.Text + "','"
     + txtEmail.Text + "','"
     + txtMobile.Text + "','"
     + txtUsername.Text + "','"
     + txtPassword.Text + "')", con);

                cmd.ExecuteNonQuery();

                clear();

                Response.Redirect("Login.aspx");
            }
        }
    }
}
