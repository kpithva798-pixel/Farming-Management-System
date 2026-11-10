using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class Cart : System.Web.UI.Page
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

        void fillCart()
        {
            string user = Session["user"] != null ? Session["user"].ToString() : "guest";
            getcon();

            da = new SqlDataAdapter("SELECT * FROM Cart WHERE Username = '" + user + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            GridViewCart.DataSource = ds;
            GridViewCart.DataBind();

            if (ds.Tables[0].Rows.Count > 0)
            {
                cmd = new SqlCommand("SELECT ISNULL(SUM(Total), 0) FROM Cart WHERE Username = '" + user + "'", con);
                decimal grandTotal = Convert.ToDecimal(cmd.ExecuteScalar());

                cmd = new SqlCommand("SELECT ISNULL(SUM(Quantity), 0) FROM Cart WHERE Username = '" + user + "'", con);
                int totalItems = Convert.ToInt32(cmd.ExecuteScalar());

                lblGrandTotal.Text = "&#8377; " + grandTotal.ToString("0.00");
                lblTotalItems.Text = totalItems.ToString();

                pnlCartContent.Visible = true;
                pnlEmptyCart.Visible = false;
            }
            else
            {
                pnlCartContent.Visible = false;
                pnlEmptyCart.Visible = true;
            }

            con.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillCart();
            }
        }

        protected void GridViewCart_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_remove")
            {
                int cartId = Convert.ToInt32(e.CommandArgument);
                getcon();
                cmd = new SqlCommand("DELETE FROM Cart WHERE CartID = " + cartId, con);
                cmd.ExecuteNonQuery();
                con.Close();

                lblMsg.Text = "Item removed from cart.";
                lblMsg.Visible = true;
                fillCart();
            }
        }

        protected void btnClearCart_Click(object sender, EventArgs e)
        {
            string user = Session["user"] != null ? Session["user"].ToString() : "guest";
            getcon();
            cmd = new SqlCommand("DELETE FROM Cart WHERE Username = '" + user + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();

            lblMsg.Text = "Your shopping cart has been cleared.";
            lblMsg.Visible = true;
            fillCart();
        }

        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            string user = Session["user"] != null ? Session["user"].ToString() : "guest";
            getcon();
            cmd = new SqlCommand("DELETE FROM Cart WHERE Username = '" + user + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();

            lblMsg.Text = "Thank you! Your order has been placed successfully.";
            lblMsg.Visible = true;
            fillCart();
        }
    }
}
