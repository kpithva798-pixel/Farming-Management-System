<%@ Page Title="Product Details - AgriCulture" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="project.ProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Product Details - AgriCulture Bootstrap Template</title>
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
          <li><a href="Products.aspx" class="active">Products</a></li>
          <li><a href="Cart.aspx">Cart</a></li>
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
        <h1>Product Details</h1>
        <p>Home / Products / Details</p>
        <nav class="breadcrumbs">
          <ol>
            <li><a href="index.aspx">Home</a></li>
            <li><a href="Products.aspx">Products</a></li>
            <li class="current">Details</li>
          </ol>
        </nav>
      </div>
    </div><!-- End Page Title -->

    <!-- Product Details Section -->
    <section class="section py-5">
      <div class="container">

        <!-- Message Notification -->
        <asp:Label ID="lblMsg" runat="server" Visible="false" CssClass="alert alert-success d-block text-center mb-4"></asp:Label>

        <!-- Product Details Box -->
        <asp:Panel ID="pnlDetails" runat="server">
          <div class="card shadow-sm border-0" style="border-radius: 12px; overflow: hidden; background: #fff;">
            <div class="row g-0">
              
              <!-- Product Image Column -->
              <div class="col-lg-5 p-4 text-center d-flex align-items-center justify-content-center" style="background: #f8f9fa;">
                <asp:Image ID="imgProduct" runat="server" CssClass="img-fluid rounded shadow-sm" Style="max-height: 380px; width: 100%; object-fit: cover;" onerror="this.src='assets/img/img_sq_1.jpg';" />
              </div>

              <!-- Product Info Column -->
              <div class="col-lg-7 p-4 p-md-5 d-flex flex-column justify-content-between">
                <div>
                  <div class="mb-2">
                    <span class="badge bg-success" style="font-size: 14px; padding: 6px 14px; border-radius: 6px;">
                      Brand: <asp:Label ID="lblBrand" runat="server"></asp:Label>
                    </span>
                  </div>

                  <h2 class="fw-bold text-dark mb-3">
                    <asp:Label ID="lblProductName" runat="server"></asp:Label>
                  </h2>

                  <div class="d-flex align-items-center gap-3 mb-3">
                    <span class="display-6 fw-bold text-success">
                      <asp:Label ID="lblPrice" runat="server"></asp:Label>
                    </span>
                    <asp:Label ID="lblStockStatus" runat="server" CssClass="badge bg-success fs-6"></asp:Label>
                  </div>

                  <hr />

                  <h5 class="fw-bold text-secondary mb-2">Description</h5>
                  <p class="text-muted" style="line-height: 1.8; font-size: 15px;">
                    <asp:Label ID="lblDescription" runat="server"></asp:Label>
                  </p>

                  <div class="mt-4 mb-3">
                    <span class="text-muted">Available Stock: <strong><asp:Label ID="lblStock" runat="server"></asp:Label></strong> units</span>
                  </div>
                </div>

                <!-- Add to Cart Form -->
                <div class="pt-4 border-top">
                  <div class="row g-3 align-items-center">
                    <div class="col-auto">
                      <label for="txtQuantity" class="col-form-label fw-bold">Quantity:</label>
                    </div>
                    <div class="col-auto">
                      <asp:TextBox ID="txtQuantity" runat="server" TextMode="Number" Text="1" min="1" max="100" CssClass="form-control text-center" Style="width: 90px;"></asp:TextBox>
                    </div>
                    <div class="col-auto">
                      <asp:Button ID="btnAddToCart" runat="server" Text="Add to Cart" CssClass="btn btn-success px-4 py-2" OnClick="btnAddToCart_Click" />
                    </div>
                    <div class="col-auto">
                      <a href="Products.aspx" class="btn btn-outline-secondary px-3 py-2">
                        <i class="bi bi-arrow-left"></i> Back to Products
                      </a>
                    </div>
                  </div>
                </div>

              </div>

            </div>
          </div>
        </asp:Panel>

        <!-- Product Not Found Panel -->
        <asp:Panel ID="pnlNotFound" runat="server" Visible="false">
          <div class="alert alert-warning text-center py-5">
            <h4 class="alert-heading">Product Not Found!</h4>
            <p>The product you are looking for does not exist or has been removed.</p>
            <a href="Products.aspx" class="btn btn-success mt-2">Back to Products</a>
          </div>
        </asp:Panel>

      </div>
    </section><!-- /Product Details Section -->

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
