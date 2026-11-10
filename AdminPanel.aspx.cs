using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace project
{
    public partial class AdminPanel : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void loadDashboardData()
        {
            getcon();

            // Total Products Count
            cmd = new SqlCommand("SELECT COUNT(*) FROM Products", con);
            int prodCount = Convert.ToInt32(cmd.ExecuteScalar());
            lblProductCount.Text = prodCount.ToString();

            // Total Registered Users Count
            cmd = new SqlCommand("SELECT COUNT(*) FROM Register", con);
            int userCount = Convert.ToInt32(cmd.ExecuteScalar());
            lblUserCount.Text = userCount.ToString();

            // Total Cart Items Count
            cmd = new SqlCommand("SELECT ISNULL(SUM(Quantity), 0) FROM Cart", con);
            int cartCount = Convert.ToInt32(cmd.ExecuteScalar());
            lblCartCount.Text = cartCount.ToString();

            // Fill Registered Users Grid
            da = new SqlDataAdapter("SELECT fnm, lnm, email, mobile, username FROM Register ORDER BY username ASC", con);
            ds = new DataSet();
            da.Fill(ds);
            GridViewUsers.DataSource = ds;
            GridViewUsers.DataBind();

            con.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadDashboardData();
            }
        }
    }
}
