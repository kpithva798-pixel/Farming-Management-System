using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class AdminProduct : System.Web.UI.Page
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

        void clearForm()
        {
            hfProductID.Value = "";
            txtProductName.Text = "";
            txtBrand.Text = "";
            txtPrice.Text = "";
            txtStock.Text = "";
            txtDescription.Text = "";
            hfCurrentImage.Value = "";
            lblCurrentImage.Text = "";
            btnSave.Text = "Save Product";
            lblFormTitle.Text = "Add New Product";
        }

        void fillGrid()
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM Products ORDER BY ProductID DESC", con);
            ds = new DataSet();
            da.Fill(ds);
            con.Close();

            GridViewProducts.DataSource = ds;
            GridViewProducts.DataBind();

            lblTotalCount.Text = "Total Products: " + ds.Tables[0].Rows.Count.ToString();
        }

        string uploadImage()
        {
            string imgPath = "";
            if (fuProductImage.HasFile)
            {
                string folder = Server.MapPath("~/Product_images/");
                if (!Directory.Exists(folder))
                {
                    Directory.CreateDirectory(folder);
                }

                string fileName = Path.GetFileName(fuProductImage.FileName);
                string savePath = Server.MapPath("~/Product_images/" + fileName);
                fuProductImage.SaveAs(savePath);
                imgPath = "Product_images/" + fileName;
            }
            return imgPath;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillGrid();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtProductName.Text) || string.IsNullOrWhiteSpace(txtPrice.Text))
            {
                lblAdminMsg.Text = "Please enter Product Name and Price.";
                lblAdminMsg.CssClass = "alert alert-warning d-block mb-4";
                lblAdminMsg.Visible = true;
                return;
            }

            string pName = txtProductName.Text.Trim();
            string brand = txtBrand.Text.Trim();
            decimal price = 0;
            decimal.TryParse(txtPrice.Text.Trim(), out price);
            int stock = 0;
            int.TryParse(txtStock.Text.Trim(), out stock);
            string desc = txtDescription.Text.Trim();

            if (btnSave.Text == "Save Product")
            {
                string img = uploadImage();
                if (string.IsNullOrEmpty(img))
                {
                    img = "Product_images/organic_wheat.jpg"; // Default fallback image
                }

                getcon();
                cmd = new SqlCommand("INSERT INTO Products (ProductName, Brand, Price, Description, Image, Stock) VALUES ('"
                    + pName.Replace("'", "''") + "', '"
                    + brand.Replace("'", "''") + "', "
                    + price + ", '"
                    + desc.Replace("'", "''") + "', '"
                    + img + "', "
                    + stock + ")", con);
                cmd.ExecuteNonQuery();
                con.Close();

                lblAdminMsg.Text = "Product added successfully!";
                lblAdminMsg.CssClass = "alert alert-success d-block mb-4";
                lblAdminMsg.Visible = true;
                clearForm();
                fillGrid();
            }
            else if (btnSave.Text == "Update Product")
            {
                int pid = Convert.ToInt32(hfProductID.Value);
                string img = uploadImage();
                if (string.IsNullOrEmpty(img))
                {
                    img = hfCurrentImage.Value; // Keep previous image
                }

                getcon();
                cmd = new SqlCommand("UPDATE Products SET ProductName = '"
                    + pName.Replace("'", "''") + "', Brand = '"
                    + brand.Replace("'", "''") + "', Price = "
                    + price + ", Description = '"
                    + desc.Replace("'", "''") + "', Image = '"
                    + img + "', Stock = "
                    + stock + " WHERE ProductID = " + pid, con);
                cmd.ExecuteNonQuery();
                con.Close();

                lblAdminMsg.Text = "Product updated successfully!";
                lblAdminMsg.CssClass = "alert alert-success d-block mb-4";
                lblAdminMsg.Visible = true;
                clearForm();
                fillGrid();
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            clearForm();
            lblAdminMsg.Visible = false;
        }

        protected void GridViewProducts_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_edit")
            {
                int pid = Convert.ToInt32(e.CommandArgument);
                getcon();
                da = new SqlDataAdapter("SELECT * FROM Products WHERE ProductID = " + pid, con);
                ds = new DataSet();
                da.Fill(ds);
                con.Close();

                if (ds.Tables[0].Rows.Count > 0)
                {
                    hfProductID.Value = pid.ToString();
                    txtProductName.Text = ds.Tables[0].Rows[0]["ProductName"].ToString();
                    txtBrand.Text = ds.Tables[0].Rows[0]["Brand"].ToString();
                    txtPrice.Text = ds.Tables[0].Rows[0]["Price"].ToString();
                    txtStock.Text = ds.Tables[0].Rows[0]["Stock"].ToString();
                    txtDescription.Text = ds.Tables[0].Rows[0]["Description"].ToString();
                    hfCurrentImage.Value = ds.Tables[0].Rows[0]["Image"].ToString();
                    lblCurrentImage.Text = "Current: " + hfCurrentImage.Value;

                    btnSave.Text = "Update Product";
                    lblFormTitle.Text = "Edit Product #" + pid;
                    lblAdminMsg.Visible = false;
                }
            }
            else if (e.CommandName == "cmd_delete")
            {
                int pid = Convert.ToInt32(e.CommandArgument);
                getcon();
                cmd = new SqlCommand("DELETE FROM Products WHERE ProductID = " + pid, con);
                cmd.ExecuteNonQuery();
                con.Close();

                lblAdminMsg.Text = "Product deleted successfully!";
                lblAdminMsg.CssClass = "alert alert-success d-block mb-4";
                lblAdminMsg.Visible = true;
                fillGrid();
            }
        }
    }
}
