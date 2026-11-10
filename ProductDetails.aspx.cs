using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace project
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        int pid;

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void loadDetails(int id)
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM Products WHERE ProductID = " + id, con);
            ds = new DataSet();
            da.Fill(ds);
            con.Close();

            if (ds.Tables[0].Rows.Count > 0)
            {
                lblProductName.Text = ds.Tables[0].Rows[0]["ProductName"].ToString();
                lblBrand.Text = ds.Tables[0].Rows[0]["Brand"].ToString();
                decimal price = Convert.ToDecimal(ds.Tables[0].Rows[0]["Price"]);
                lblPrice.Text = "₹ " + price.ToString("0.00");
                lblDescription.Text = ds.Tables[0].Rows[0]["Description"].ToString();
                int stock = Convert.ToInt32(ds.Tables[0].Rows[0]["Stock"]);
                lblStock.Text = stock.ToString();
                imgProduct.ImageUrl = ds.Tables[0].Rows[0]["Image"].ToString();

                if (stock <= 0)
                {
                    lblStockStatus.Text = "Out of Stock";
                    lblStockStatus.CssClass = "badge bg-danger fs-6";
                    btnAddToCart.Enabled = false;
                }
                else
                {
                    lblStockStatus.Text = "In Stock (" + stock + " units)";
                    lblStockStatus.CssClass = "badge bg-success fs-6";
                    btnAddToCart.Enabled = true;
                }

                pnlDetails.Visible = true;
                pnlNotFound.Visible = false;
            }
            else
            {
                pnlDetails.Visible = false;
                pnlNotFound.Visible = true;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    pid = Convert.ToInt32(Request.QueryString["id"]);
                    loadDetails(pid);
                }
                else
                {
                    Response.Redirect("Products.aspx");
                }
            }
        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                pid = Convert.ToInt32(Request.QueryString["id"]);
                int qty = 1;
                int.TryParse(txtQuantity.Text, out qty);
                if (qty <= 0) qty = 1;

                getcon();
                da = new SqlDataAdapter("SELECT * FROM Products WHERE ProductID = " + pid, con);
                ds = new DataSet();
                da.Fill(ds);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    string pName = ds.Tables[0].Rows[0]["ProductName"].ToString();
                    decimal price = Convert.ToDecimal(ds.Tables[0].Rows[0]["Price"]);
                    decimal total = price * qty;
                    string user = Session["user"] != null ? Session["user"].ToString() : "guest";

                    // Check if already in cart for current user
                    da = new SqlDataAdapter("SELECT * FROM Cart WHERE ProductID = " + pid + " AND Username = '" + user + "'", con);
                    DataSet dsCart = new DataSet();
                    da.Fill(dsCart);

                    if (dsCart.Tables[0].Rows.Count > 0)
                    {
                        cmd = new SqlCommand("UPDATE Cart SET Quantity = Quantity + " + qty + ", Total = (Quantity + " + qty + ") * Price WHERE ProductID = " + pid + " AND Username = '" + user + "'", con);
                        cmd.ExecuteNonQuery();
                    }
                    else
                    {
                        cmd = new SqlCommand("INSERT INTO Cart (ProductID, ProductName, Price, Quantity, Total, Username) VALUES (" + pid + ", '" + pName.Replace("'", "''") + "', " + price + ", " + qty + ", " + total + ", '" + user + "')", con);
                        cmd.ExecuteNonQuery();
                    }

                    con.Close();
                    lblMsg.Text = "<strong>" + pName + "</strong> (" + qty + " item(s)) added to cart successfully! <a href='Cart.aspx' class='alert-link fw-bold ms-2'>Go to Cart &raquo;</a>";
                    lblMsg.Visible = true;
                }
                else
                {
                    con.Close();
                }
            }
        }
    }
}
