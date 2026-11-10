<%@ Page Title="Products - AgriCulture" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="project.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Products - AgriCulture Bootstrap Template</title>
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
        <!-- Uncomment the line below if you also wish to use an image logo -->
        <img src="assets/img/logo.png" alt="AgriCulture">
        <!-- <h1 class="sitename">AgriCulture</h1>  -->
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
        <h1>Products</h1>
        <p>Home / Products</p>
        <nav class="breadcrumbs">
          <ol>
            <li><a href="index.aspx">Home</a></li>
            <li class="current">Products</li>
          </ol>
        </nav>
      </div>
    </div><!-- End Page Title -->

    <!-- Products Section -->
    <section id="products-section" class="services section">

      <!-- Section Title -->
      <div class="container section-title" data-aos="fade-up">
        <h2>FARM PRODUCTS</h2>
        <p>Providing Fresh Produce Every Single Day</p>
      </div><!-- End Section Title -->

      <div class="container">
        <!-- Message Notification -->
        <asp:Label ID="lblMsg" runat="server" Visible="false" CssClass="alert alert-success d-block text-center mb-4"></asp:Label>

        <!-- Product Cards Grid -->
        <div class="row gy-4">
          <asp:Repeater ID="RepeaterProducts" runat="server" OnItemCommand="RepeaterProducts_ItemCommand">
            <ItemTemplate>
              <div class="col-lg-4 col-md-6 d-flex align-items-stretch" data-aos="fade-up">
                <div class="card w-100 shadow-sm border-0" style="border-radius: 12px; overflow: hidden; background: #ffffff;">
                  
                  <div style="position: relative; height: 230px; background-color: #f8f9fa;">
                    <img src='<%# Eval("Image") %>' class="w-100 h-100" style="object-fit: cover;" alt='<%# Eval("ProductName") %>' onerror="this.src='assets/img/img_sq_1.jpg';" />
                    <span class="badge bg-success" style="position: absolute; top: 12px; left: 12px; font-size: 13px; padding: 6px 12px; border-radius: 6px;">
                      <%# Eval("Brand") %>
                    </span>
                  </div>

                  <div class="card-body d-flex flex-column p-4">
                    <h4 class="card-title fw-bold text-dark mb-2" style="font-size: 1.25rem;">
                      <%# Eval("ProductName") %>
                    </h4>

                    <div class="d-flex justify-content-between align-items-center mb-3">
                      <span class="h4 text-success fw-bold mb-0">&#8377; <%# Eval("Price", "{0:0.00}") %></span>
                      <span class='<%# Convert.ToInt32(Eval("Stock")) > 0 ? "badge bg-light text-success border border-success" : "badge bg-light text-danger border border-danger" %>' style="font-size: 12px; padding: 5px 10px;">
                        <%# Convert.ToInt32(Eval("Stock")) > 0 ? "Stock: " + Eval("Stock") : "Out of Stock" %>
                      </span>
                    </div>

                    <p class="card-text text-muted flex-grow-1" style="font-size: 14px; line-height: 1.6; margin-bottom: 20px;">
                      <%# Eval("Description") %>
                    </p>

                    <div class="d-flex gap-2 pt-2 border-top">
                      <a href='ProductDetails.aspx?id=<%# Eval("ProductID") %>' class="btn btn-outline-success flex-fill" style="border-radius: 6px;">
                        <i class="bi bi-eye"></i> View Details
                      </a>
                      <asp:Button ID="btnAddToCart" runat="server" Text="Add to Cart" CommandName="AddToCart" CommandArgument='<%# Eval("ProductID") %>' CssClass="btn btn-success flex-fill" Enabled='<%# Convert.ToInt32(Eval("Stock")) > 0 %>' style="border-radius: 6px;" />
                    </div>

                  </div>
                </div>
              </div>
            </ItemTemplate>
          </asp:Repeater>
        </div>

      </div>

    </section><!-- /Products Section -->

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
