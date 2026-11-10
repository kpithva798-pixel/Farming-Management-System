<%@ Page Title="Admin Panel - AgriCulture" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="project.AdminPanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Admin Panel - AgriCulture Bootstrap Template</title>
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
          <li><a href="Cart.aspx">Cart</a></li>
          <li><a href="testimonials.aspx">Testimonials</a></li>
          <li><a href="blog.aspx">Blog</a></li>
          <li class="dropdown"><a href="#" class="active"><span>Admin</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
            <ul>
              <li><a href="AdminPanel.aspx" class="active">Admin Panel</a></li>
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
        <h1>Admin Panel</h1>
        <p>Home / Admin Panel</p>
        <nav class="breadcrumbs">
          <ol>
            <li><a href="index.aspx">Home</a></li>
            <li class="current">Admin Panel</li>
          </ol>
        </nav>
      </div>
    </div><!-- End Page Title -->

    <!-- Admin Panel Section -->
    <section class="section py-5">
      <div class="container">

        <!-- Welcome Banner -->
        <div class="alert alert-success d-flex align-items-center justify-content-between p-4 mb-5 shadow-sm" style="border-radius: 12px; background: #eaf5e2; border: 1px solid #c3e6cb;">
          <div>
            <h4 class="alert-heading fw-bold mb-1" style="color: #2b7a0b;">Admin Control Panel</h4>
            <p class="mb-0 text-muted">Manage your website products, view registered farmers/users, and oversee store operations.</p>
          </div>
          <div>
            <a href="AdminProduct.aspx" class="btn btn-success px-4 py-2 fw-bold">
              <i class="bi bi-plus-circle me-1"></i> Manage Products
            </a>
          </div>
        </div>

        <!-- Dashboard Stats Cards -->
        <div class="row g-4 mb-5">
          
          <div class="col-md-4">
            <div class="card shadow-sm border-0 text-center p-4 h-100" style="border-radius: 12px; background: #ffffff;">
              <div class="mb-3">
                <i class="bi bi-box-seam text-success" style="font-size: 3rem;"></i>
              </div>
              <h2 class="fw-bold text-success mb-1">
                <asp:Label ID="lblProductCount" runat="server" Text="0"></asp:Label>
              </h2>
              <h5 class="text-secondary fw-bold mb-2">Total Products</h5>
              <p class="text-muted small mb-3">Farm produce available in store catalog</p>
              <a href="AdminProduct.aspx" class="btn btn-outline-success btn-sm w-100 py-2">
                Manage Products &raquo;
              </a>
            </div>
          </div>

          <div class="col-md-4">
            <div class="card shadow-sm border-0 text-center p-4 h-100" style="border-radius: 12px; background: #ffffff;">
              <div class="mb-3">
                <i class="bi bi-people text-primary" style="font-size: 3rem;"></i>
              </div>
              <h2 class="fw-bold text-primary mb-1">
                <asp:Label ID="lblUserCount" runat="server" Text="0"></asp:Label>
              </h2>
              <h5 class="text-secondary fw-bold mb-2">Registered Users</h5>
              <p class="text-muted small mb-3">Accounts created via Register page</p>
              <a href="#users-section" class="btn btn-outline-primary btn-sm w-100 py-2">
                View Users &raquo;
              </a>
            </div>
          </div>

          <div class="col-md-4">
            <div class="card shadow-sm border-0 text-center p-4 h-100" style="border-radius: 12px; background: #ffffff;">
              <div class="mb-3">
                <i class="bi bi-cart3 text-warning" style="font-size: 3rem;"></i>
              </div>
              <h2 class="fw-bold text-warning mb-1">
                <asp:Label ID="lblCartCount" runat="server" Text="0"></asp:Label>
              </h2>
              <h5 class="text-secondary fw-bold mb-2">Items in Cart</h5>
              <p class="text-muted small mb-3">Active shopping cart items</p>
              <a href="Cart.aspx" class="btn btn-outline-warning btn-sm w-100 py-2">
                View Cart &raquo;
              </a>
            </div>
          </div>

        </div>

        <!-- Quick Access Navigation Cards -->
        <div class="row g-4 mb-5">
          <div class="col-md-6">
            <div class="card shadow-sm border-0 p-4 h-100" style="border-radius: 12px; background: #ffffff;">
              <div class="d-flex align-items-center mb-3">
                <div class="bg-success text-white p-3 rounded me-3">
                  <i class="bi bi-gear-fill fs-4"></i>
                </div>
                <div>
                  <h5 class="fw-bold mb-0">Product Management</h5>
                  <small class="text-muted">Add, Edit, Update, and Delete products</small>
                </div>
              </div>
              <p class="text-muted small">Access the complete product management section to add new crop items, set prices, manage stock quantities, and upload product photos.</p>
              <a href="AdminProduct.aspx" class="btn btn-success mt-auto py-2">Open Product Management</a>
            </div>
          </div>

          <div class="col-md-6">
            <div class="card shadow-sm border-0 p-4 h-100" style="border-radius: 12px; background: #ffffff;">
              <div class="d-flex align-items-center mb-3">
                <div class="bg-primary text-white p-3 rounded me-3">
                  <i class="bi bi-globe fs-4"></i>
                </div>
                <div>
                  <h5 class="fw-bold mb-0">Live Customer Store</h5>
                  <small class="text-muted">Preview products page as customer</small>
                </div>
              </div>
              <p class="text-muted small">View how products appear to customers on the website, test product detail views, and test adding items to the shopping cart.</p>
              <a href="Products.aspx" class="btn btn-outline-primary mt-auto py-2">Visit Products Page</a>
            </div>
          </div>
        </div>

        <!-- Registered Users Section -->
        <div id="users-section" class="card shadow-sm border-0" style="border-radius: 12px; background: #ffffff;">
          <div class="card-header bg-white py-3 border-bottom d-flex justify-content-between align-items-center">
            <h5 class="mb-0 fw-bold text-dark">Registered Users / Farmers</h5>
            <span class="badge bg-light text-dark border">User Database</span>
          </div>
          <div class="card-body p-0">
            <div class="table-responsive">
              <asp:GridView ID="GridViewUsers" runat="server" AutoGenerateColumns="False" 
                CssClass="table table-hover align-middle mb-0" GridLines="None">
                <HeaderStyle CssClass="table-light text-secondary" />
                <Columns>
                  
                  <asp:BoundField DataField="username" HeaderText="Username">
                    <ItemStyle CssClass="ps-4 py-3 fw-bold text-dark" />
                    <HeaderStyle CssClass="ps-4 py-3" />
                  </asp:BoundField>

                  <asp:BoundField DataField="fnm" HeaderText="First Name">
                    <ItemStyle CssClass="py-3" />
                  </asp:BoundField>

                  <asp:BoundField DataField="lnm" HeaderText="Last Name">
                    <ItemStyle CssClass="py-3" />
                  </asp:BoundField>

                  <asp:BoundField DataField="email" HeaderText="Email Address">
                    <ItemStyle CssClass="py-3" />
                  </asp:BoundField>

                  <asp:BoundField DataField="mobile" HeaderText="Mobile">
                    <ItemStyle CssClass="py-3 pe-4" />
                    <HeaderStyle CssClass="pe-4 py-3" />
                  </asp:BoundField>

                </Columns>
              </asp:GridView>
            </div>
          </div>
        </div>

      </div>
    </section><!-- /Admin Panel Section -->

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
