using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class Products : System.Web.UI.Page
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

        void fillProducts()
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM Products ORDER BY ProductID DESC", con);
            ds = new DataSet();
            da.Fill(ds);
            con.Close();

            RepeaterProducts.DataSource = ds;
            RepeaterProducts.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillProducts();
            }
        }

        protected void RepeaterProducts_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "AddToCart")
            {
                int pid = Convert.ToInt32(e.CommandArgument);
                addToCart(pid);
            }
        }

        void addToCart(int pid)
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM Products WHERE ProductID = " + pid, con);
            ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                string pName = ds.Tables[0].Rows[0]["ProductName"].ToString();
                decimal price = Convert.ToDecimal(ds.Tables[0].Rows[0]["Price"]);
                string user = Session["user"] != null ? Session["user"].ToString() : "guest";

                // Check if already in cart for current user
                da = new SqlDataAdapter("SELECT * FROM Cart WHERE ProductID = " + pid + " AND Username = '" + user + "'", con);
                DataSet dsCart = new DataSet();
                da.Fill(dsCart);

                if (dsCart.Tables[0].Rows.Count > 0)
                {
                    cmd = new SqlCommand("UPDATE Cart SET Quantity = Quantity + 1, Total = (Quantity + 1) * Price WHERE ProductID = " + pid + " AND Username = '" + user + "'", con);
                    cmd.ExecuteNonQuery();
                }
                else
                {
                    cmd = new SqlCommand("INSERT INTO Cart (ProductID, ProductName, Price, Quantity, Total, Username) VALUES (" + pid + ", '" + pName.Replace("'", "''") + "', " + price + ", 1, " + price + ", '" + user + "')", con);
                    cmd.ExecuteNonQuery();
                }

                con.Close();

                lblMsg.Text = "<strong>" + pName + "</strong> added to cart successfully! <a href='Cart.aspx' class='alert-link fw-bold ms-2'>Go to Cart &raquo;</a>";
                lblMsg.Visible = true;
            }
            else
            {
                con.Close();
            }
        }
    }
}
