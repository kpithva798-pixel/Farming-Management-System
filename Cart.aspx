<%@ Page Title="Cart - AgriCulture" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="project.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Shopping Cart - AgriCulture Bootstrap Template</title>
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

<body class="services-page">

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
          <li><a href="Cart.aspx" class="active">Cart</a></li>
          <li><a href="testimonials.aspx">Testimonials</a></li>
          <li><a href="blog.aspx">Blog</a></li>
          <li class="dropdown"><a href="#"><span>Admin</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
            <ul>
              <li><a href="AdminPanel.aspx">Admin Panel</a></li>
              <li><a href="AdminProduct.aspx">Manage Products</a></li>
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
        <h1>Shopping Cart</h1>
        <p>Home / Products / Cart</p>
        <nav class="breadcrumbs">
          <ol>
            <li><a href="index.aspx">Home</a></li>
            <li><a href="Products.aspx">Products</a></li>
            <li class="current">Cart</li>
          </ol>
        </nav>
      </div>
    </div><!-- End Page Title -->

    <!-- Cart Section -->
    <section class="section py-5">
      <div class="container">

        <!-- Message Notification -->
        <asp:Label ID="lblMsg" runat="server" Visible="false" CssClass="alert alert-info d-block text-center mb-4"></asp:Label>

        <!-- Cart Content Panel -->
        <asp:Panel ID="pnlCartContent" runat="server">
          <div class="row">
            
            <!-- Cart Table -->
            <div class="col-lg-8 mb-4">
              <div class="card shadow-sm border-0" style="border-radius: 12px; overflow: hidden; background: #fff;">
                <div class="card-header bg-white py-3 border-bottom">
                  <h5 class="mb-0 fw-bold text-dark">Cart Items</h5>
                </div>
                <div class="card-body p-0">
                  <div class="table-responsive">
                    <asp:GridView ID="GridViewCart" runat="server" AutoGenerateColumns="False" 
                      CssClass="table table-hover align-middle mb-0" 
                      OnRowCommand="GridViewCart_RowCommand" GridLines="None">
                      <HeaderStyle CssClass="table-light text-secondary" />
                      <Columns>
                        
                        <asp:TemplateField HeaderText="Product Name">
                          <ItemTemplate>
                            <span class="fw-bold text-dark"><%# Eval("ProductName") %></span>
                          </ItemTemplate>
                          <ItemStyle CssClass="ps-4 py-3" />
                          <HeaderStyle CssClass="ps-4 py-3" />
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Price">
                          <ItemTemplate>
                            <span>&#8377; <%# Eval("Price", "{0:0.00}") %></span>
                          </ItemTemplate>
                          <ItemStyle CssClass="py-3" />
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Quantity">
                          <ItemTemplate>
                            <span class="badge bg-light text-dark border px-3 py-2 fs-6">
                              <%# Eval("Quantity") %>
                            </span>
                          </ItemTemplate>
                          <ItemStyle CssClass="py-3" />
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Total">
                          <ItemTemplate>
                            <span class="fw-bold text-success">&#8377; <%# Eval("Total", "{0:0.00}") %></span>
                          </ItemTemplate>
                          <ItemStyle CssClass="py-3" />
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Action">
                          <ItemTemplate>
                            <asp:LinkButton ID="btnRemove" runat="server" 
                              CommandName="cmd_remove" 
                              CommandArgument='<%# Eval("CartID") %>' 
                              CssClass="btn btn-sm btn-outline-danger" 
                              OnClientClick="return confirm('Are you sure you want to remove this item?');">
                              <i class="bi bi-trash"></i> Remove
                            </asp:LinkButton>
                          </ItemTemplate>
                          <ItemStyle CssClass="text-end pe-4 py-3" />
                          <HeaderStyle CssClass="text-end pe-4 py-3" />
                        </asp:TemplateField>

                      </Columns>
                    </asp:GridView>
                  </div>
                </div>

                <div class="card-footer bg-white d-flex justify-content-between py-3">
                  <a href="Products.aspx" class="btn btn-outline-secondary">
                    <i class="bi bi-arrow-left"></i> Continue Shopping
                  </a>
                  <asp:Button ID="btnClearCart" runat="server" Text="Clear Cart" CssClass="btn btn-outline-danger" OnClick="btnClearCart_Click" OnClientClick="return confirm('Are you sure you want to clear your entire cart?');" />
                </div>
              </div>
            </div>

            <!-- Order Summary -->
            <div class="col-lg-4">
              <div class="card shadow-sm border-0" style="border-radius: 12px; background: #fff;">
                <div class="card-header bg-white py-3 border-bottom">
                  <h5 class="mb-0 fw-bold text-dark">Order Summary</h5>
                </div>
                <div class="card-body p-4">
                  <div class="d-flex justify-content-between mb-3">
                    <span class="text-muted">Total Quantity:</span>
                    <strong><asp:Label ID="lblTotalItems" runat="server"></asp:Label> items</strong>
                  </div>
                  <div class="d-flex justify-content-between mb-3">
                    <span class="text-muted">Delivery Charges:</span>
                    <span class="text-success fw-bold">FREE</span>
                  </div>
                  <hr />
                  <div class="d-flex justify-content-between align-items-center mb-4">
                    <span class="h5 mb-0 fw-bold">Grand Total:</span>
                    <span class="h4 mb-0 fw-bold text-success">
                      <asp:Label ID="lblGrandTotal" runat="server"></asp:Label>
                    </span>
                  </div>
                  <asp:Button ID="btnCheckout" runat="server" Text="Proceed to Checkout" CssClass="btn btn-success w-100 py-3 fw-bold" OnClick="btnCheckout_Click" />
                </div>
              </div>
            </div>

          </div>
        </asp:Panel>

        <!-- Empty Cart Panel -->
        <asp:Panel ID="pnlEmptyCart" runat="server" Visible="false">
          <div class="text-center py-5">
            <i class="bi bi-cart-x text-muted" style="font-size: 5rem;"></i>
            <h3 class="fw-bold mt-3 text-secondary">Your Cart is Empty</h3>
            <p class="text-muted">Looks like you haven't added any products to your cart yet.</p>
            <a href="Products.aspx" class="btn btn-success px-4 py-2 mt-2">
              <i class="bi bi-shop"></i> Browse Farm Products
            </a>
          </div>
        </asp:Panel>

      </div>
    </section><!-- /Cart Section -->

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
