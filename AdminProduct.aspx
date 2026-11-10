<%@ Page Title="Manage Products - Admin" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminProduct.aspx.cs" Inherits="project.AdminProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Manage Products - AgriCulture Admin</title>
  <meta name="description" content="">
  <meta name="keywords" content="">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&family=Marcellus:wght@400&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">
</head>

<body>

  <header id="header" class="header d-flex align-items-center position-relative">
    <div class="container-fluid container-xl position-relative d-flex align-items-center justify-content-between">

      <a href="index.aspx" class="logo d-flex align-items-center">
        <img src="assets/img/logo.png" alt="AgriCulture">
      </a>

      <nav id="navmenu" class="navmenu">
        <ul>
          <li><a href="index.aspx">Home</a></li>
          <li><a href="about.aspx">About Us</a></li>
          <li><a href="services.aspx">Our Services</a></li>
          <li><a href="Products.aspx">Products</a></li>
          <li><a href="Cart.aspx">Cart</a></li>
          <li><a href="testimonials.aspx">Testimonials</a></li>
          <li><a href="blog.aspx">Blog</a></li>
          <li class="dropdown"><a href="#" class="active"><span>Admin</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
            <ul>
              <li><a href="AdminPanel.aspx">Admin Panel</a></li>
              <li><a href="AdminProduct.aspx" class="active">Manage Products</a></li>
            </ul>
          </li>
          <li><a href="contact.aspx">Contact</a></li>
          <li><a href="Login.aspx">Login</a></li>
          <li><a href="Ragister.aspx">Register</a></li>
        </ul>
        <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
      </nav>

    </div>
  </header>
</asp:Content>

<asp:Content ID="Content6" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <main class="main">

    <!-- Page Title -->
    <div class="page-title dark-background" data-aos="fade" style="background-image: url(assets/img/page-title-bg.webp);">
      <div class="container position-relative">
        <h1>Manage Products</h1>
        <p>Admin Panel / Manage Products</p>
        <nav class="breadcrumbs">
          <ol>
            <li><a href="index.aspx">Home</a></li>
            <li><a href="AdminPanel.aspx">Admin Panel</a></li>
            <li class="current">Manage Products</li>
          </ol>
        </nav>
      </div>
    </div><!-- End Page Title -->

    <!-- Admin Manage Section -->
    <section class="section py-5">
      <div class="container">

        <!-- Back to Admin Panel Link -->
        <div class="mb-4">
          <a href="AdminPanel.aspx" class="btn btn-outline-secondary">
            <i class="bi bi-arrow-left me-1"></i> Back to Admin Panel
          </a>
        </div>

        <!-- Status Message -->
        <asp:Label ID="lblAdminMsg" runat="server" Visible="false" CssClass="alert alert-info d-block text-center mb-4"></asp:Label>

        <!-- Product Form Card -->
        <div class="card shadow-sm border-0 mb-5" style="border-radius: 12px; background: #fff;">
          <div class="card-header bg-success text-white py-3" style="border-top-left-radius: 12px; border-top-right-radius: 12px;">
            <h5 class="mb-0 fw-bold">
              <asp:Label ID="lblFormTitle" runat="server" Text="Add New Product"></asp:Label>
            </h5>
          </div>
          <div class="card-body p-4 p-md-5">

            <asp:HiddenField ID="hfProductID" runat="server" />
            <asp:HiddenField ID="hfCurrentImage" runat="server" />

            <div class="row g-3">
              
              <!-- Product Name -->
              <div class="col-md-6">
                <label class="form-label fw-bold">Product Name <span class="text-danger">*</span></label>
                <asp:TextBox ID="txtProductName" runat="server" CssClass="form-control" placeholder="e.g. Organic Wheat Grain"></asp:TextBox>
              </div>

              <!-- Brand -->
              <div class="col-md-6">
                <label class="form-label fw-bold">Company / Brand <span class="text-danger">*</span></label>
                <asp:TextBox ID="txtBrand" runat="server" CssClass="form-control" placeholder="e.g. Kisan Gold"></asp:TextBox>
              </div>

              <!-- Price -->
              <div class="col-md-4">
                <label class="form-label fw-bold">Price (&#8377;) <span class="text-danger">*</span></label>
                <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control" placeholder="e.g. 450.00"></asp:TextBox>
              </div>

              <!-- Stock -->
              <div class="col-md-4">
                <label class="form-label fw-bold">Stock Quantity <span class="text-danger">*</span></label>
                <asp:TextBox ID="txtStock" runat="server" TextMode="Number" CssClass="form-control" placeholder="e.g. 50"></asp:TextBox>
              </div>

              <!-- Product Image File Upload -->
              <div class="col-md-4">
                <label class="form-label fw-bold">Product Image</label>
                <asp:FileUpload ID="fuProductImage" runat="server" CssClass="form-control" />
                <asp:Label ID="lblCurrentImage" runat="server" CssClass="text-muted d-block small mt-1"></asp:Label>
              </div>

              <!-- Description -->
              <div class="col-12">
                <label class="form-label fw-bold">Description</label>
                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" placeholder="Enter product details, specifications, features..."></asp:TextBox>
              </div>

              <!-- Buttons -->
              <div class="col-12 mt-4 pt-2 border-top d-flex gap-2">
                <asp:Button ID="btnSave" runat="server" Text="Save Product" CssClass="btn btn-success px-4 py-2 fw-bold" OnClick="btnSave_Click" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel / Reset" CssClass="btn btn-outline-secondary px-4 py-2" OnClick="btnCancel_Click" />
              </div>

            </div>

          </div>
        </div>

        <!-- Products List Card -->
        <div class="card shadow-sm border-0" style="border-radius: 12px; background: #fff;">
          <div class="card-header bg-white py-3 border-bottom d-flex justify-content-between align-items-center">
            <h5 class="mb-0 fw-bold text-dark">Existing Products List</h5>
            <span class="badge bg-light text-dark border">
              <asp:Label ID="lblTotalCount" runat="server"></asp:Label>
            </span>
          </div>
          <div class="card-body p-0">
            <div class="table-responsive">
              <asp:GridView ID="GridViewProducts" runat="server" AutoGenerateColumns="False" 
                CssClass="table table-hover align-middle mb-0" 
                OnRowCommand="GridViewProducts_RowCommand" GridLines="None">
                <HeaderStyle CssClass="table-light text-secondary" />
                <Columns>

                  <asp:BoundField DataField="ProductID" HeaderText="ID">
                    <ItemStyle CssClass="ps-4 py-3 fw-bold text-muted" />
                    <HeaderStyle CssClass="ps-4 py-3" />
                  </asp:BoundField>

                  <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                      <img src='<%# Eval("Image") %>' width="55" height="55" class="rounded border" style="object-fit: cover;" onerror="this.src='assets/img/img_sq_1.jpg';" alt="product" />
                    </ItemTemplate>
                    <ItemStyle CssClass="py-2" />
                  </asp:TemplateField>

                  <asp:BoundField DataField="ProductName" HeaderText="Product Name">
                    <ItemStyle CssClass="fw-bold text-dark py-3" />
                  </asp:BoundField>

                  <asp:BoundField DataField="Brand" HeaderText="Brand">
                    <ItemStyle CssClass="py-3" />
                  </asp:BoundField>

                  <asp:TemplateField HeaderText="Price">
                    <ItemTemplate>
                      <span class="text-success fw-bold">&#8377; <%# Eval("Price", "{0:0.00}") %></span>
                    </ItemTemplate>
                    <ItemStyle CssClass="py-3" />
                  </asp:TemplateField>

                  <asp:TemplateField HeaderText="Stock">
                    <ItemTemplate>
                      <span class='<%# Convert.ToInt32(Eval("Stock")) > 0 ? "badge bg-light text-success border border-success" : "badge bg-light text-danger border border-danger" %>'>
                        <%# Eval("Stock") %>
                      </span>
                    </ItemTemplate>
                    <ItemStyle CssClass="py-3" />
                  </asp:TemplateField>

                  <asp:TemplateField HeaderText="Description">
                    <ItemTemplate>
                      <span class="text-muted small" style="display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical; overflow: hidden;">
                        <%# Eval("Description") %>
                      </span>
                    </ItemTemplate>
                    <ItemStyle CssClass="py-3" />
                  </asp:TemplateField>

                  <asp:TemplateField HeaderText="Actions">
                    <ItemTemplate>
                      <asp:LinkButton ID="btnEdit" runat="server" 
                        CommandName="cmd_edit" 
                        CommandArgument='<%# Eval("ProductID") %>' 
                        CssClass="btn btn-sm btn-outline-primary me-1">
                        <i class="bi bi-pencil-square"></i> Edit
                      </asp:LinkButton>
                      <asp:LinkButton ID="btnDelete" runat="server" 
                        CommandName="cmd_delete" 
                        CommandArgument='<%# Eval("ProductID") %>' 
                        CssClass="btn btn-sm btn-outline-danger" 
                        OnClientClick="return confirm('Are you sure you want to delete this product?');">
                        <i class="bi bi-trash"></i> Delete
                      </asp:LinkButton>
                    </ItemTemplate>
                    <ItemStyle CssClass="text-end pe-4 py-3" />
                    <HeaderStyle CssClass="text-end pe-4 py-3" />
                  </asp:TemplateField>

                </Columns>
              </asp:GridView>
            </div>
          </div>
        </div>

      </div>
    </section><!-- /Admin Manage Section -->

  </main>

  <footer id="footer" class="footer dark-background">

    <div class="footer-top">
      <div class="container">
        <div class="row gy-4">
          <div class="col-lg-4 col-md-6 footer-about">
            <a href="index.aspx" class="logo d-flex align-items-center">
              <span class="sitename">AgriCulture</span>
            </a>
            <div class="footer-contact pt-3">
              <p>A108 Adam Street</p>
              <p>New York, NY 535022</p>
              <p class="mt-3"><strong>Phone:</strong> <span>+1 5589 55488 55</span></p>
              <p><strong>Email:</strong> <span>info@example.com</span></p>
            </div>
          </div>

          <div class="col-lg-2 col-md-3 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><a href="index.aspx">Home</a></li>
              <li><a href="about.aspx">About us</a></li>
              <li><a href="services.aspx">Services</a></li>
              <li><a href="Products.aspx">Products</a></li>
              <li><a href="Cart.aspx">Cart</a></li>
            </ul>
          </div>

          <div class="col-lg-2 col-md-3 footer-links">
            <h4>Our Services</h4>
            <ul>
              <li><a href="#">Web Design</a></li>
              <li><a href="#">Web Development</a></li>
              <li><a href="#">Product Management</a></li>
              <li><a href="#">Marketing</a></li>
              <li><a href="#">Graphic Design</a></li>
            </ul>
          </div>

          <div class="col-lg-2 col-md-3 footer-links">
            <h4>Hic solutasetp</h4>
            <ul>
              <li><a href="#">Molestiae accusamus iure</a></li>
              <li><a href="#">Excepturi dignissimos</a></li>
              <li><a href="#">Suscipit distinctio</a></li>
              <li><a href="#">Dilecta</a></li>
              <li><a href="#">Sit quas consectetur</a></li>
            </ul>
          </div>

          <div class="col-lg-2 col-md-3 footer-links">
            <h4>Nobis illum</h4>
            <ul>
              <li><a href="#">Ipsam</a></li>
              <li><a href="#">Laudantium dolorum</a></li>
              <li><a href="#">Dinera</a></li>
              <li><a href="#">Trodelas</a></li>
              <li><a href="#">Flexo</a></li>
            </ul>
          </div>

        </div>
      </div>
    </div>

    <div class="copyright text-center">
      <div class="container d-flex flex-column flex-lg-row justify-content-center justify-content-lg-between align-items-center">

        <div class="d-flex flex-column align-items-center align-items-lg-start">
          <div>
            © Copyright <strong><span>MyWebsite</span></strong>. All Rights Reserved
          </div>
          <div class="credits">
            Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a> Distributed by <a href="https://themewagon.com">ThemeWagon</a>
          </div>
        </div>

        <div class="social-links order-first order-lg-last mb-3 mb-lg-0">
          <a href=""><i class="bi bi-twitter-x"></i></a>
          <a href=""><i class="bi bi-facebook"></i></a>
          <a href=""><i class="bi bi-instagram"></i></a>
          <a href=""><i class="bi bi-linkedin"></i></a>
        </div>

      </div>
    </div>

  </footer>

  <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Preloader -->
  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>

  <!-- Main JS File -->
  <script src="assets/js/main.js"></script>
</asp:Content>
