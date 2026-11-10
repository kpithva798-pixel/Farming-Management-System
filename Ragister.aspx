<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Ragister.aspx.cs" Inherits="project.Ragister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder1">
                <!DOCTYPE html>
    <html>
    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport"><title>Index - AgriCulture Bootstrap Template</title>
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

  <!-- =======================================================
  * Template Name: AgriCulture
  * Template URL: https://bootstrapmade.com/agriculture-bootstrap-website-template/
  * Updated: Aug 07 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->

        <style>

             <style>
        body {
            font-family: Arial;
            background-color: #eef7e8;
        }

        .register-box {
            width: 450px;
            margin: 50px auto;
            padding: 30px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0px 0px 10px gray;
        }

        h2 {
            text-align: center;
            color: green;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            margin: 8px 0 15px 0;
            box-sizing: border-box;
        }

        .btn {
            width: 100%;
            padding: 12px;
            background-color: green;
            color: white;
            border: none;
            cursor: pointer;
        }

        .btn:hover {
            background-color: darkgreen;
        }

        .error {
            color: red;
        }
    </style>
        </style>
    </head>
    <body>
        <header id="header" class="header d-flex align-items-center position-relative">
            <div class="container-fluid container-xl position-relative d-flex align-items-center justify-content-between">
                <a href="index.aspx" class="logo d-flex align-items-center">
        <!-- Uncomment the line below if you also wish to use an image logo -->
                <img src="assets/img/logo.png" alt="AgriCulture">
        <!-- <h1 class="sitename">AgriCulture</h1>  -->
                </a>&nbsp;<nav id="navmenu" class="navmenu">
                    <ul>
                        <li><a href="index.aspx">Home</a></li>
                        <li><a href="about.aspx">About Us</a></li>
                        <li><a href="services.aspx">Our Services</a></li>
                        <li><a href="Products.aspx">Products</a></li>
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
                        <li><a href="Ragister.aspx" class="active">Register</a></li>
                    </ul>
                    <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
                </nav>
            </div>
        </header>
</asp:Content>
<asp:Content ID="Content6" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <main class="main">

    <!-- Hero Section -->
    <section id="hero" class="hero section dark-background">
        <div id="hero-carousel" class="carousel slide carousel-fade" data-bs-ride="carousel" data-bs-interval="5000">
            <div class="carousel-item active">
                <img src="assets/img/hero_1.jpg" alt="">
                <div class="carousel-container">
                    <h2>Farming is the best solution of worlds starvation</h2>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                </div>
            </div>
            <!-- End Carousel Item -->

            <div class="carousel-item">
                <img src="assets/img/hero_2.jpg" alt="">
                <div class="carousel-container">
                    <h2>Organic vegetables is good for health</h2>
                    <p>
                        Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus.</p>
                </div>
            </div>
            <!-- End Carousel Item -->

            <div class="carousel-item">
                <img src="assets/img/hero_3.jpg" alt="">
                <div class="carousel-container">
                    <h2>Providing Fresh Produce Every Single Day</h2>
                    <p>
                        Beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.</p>
                </div>
            </div>
            <!-- End Carousel Item -->

            <div class="carousel-item">
                <img src="assets/img/hero_4.jpg" alt="">
                <div class="carousel-container">
                    <h2>Farming as a Passione</h2>
                    <p>
                        Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius.</p>
                </div>
            </div>
            <!-- End Carousel Item -->

            <div class="carousel-item">
                <img src="assets/img/hero_5.jpg" alt="">
                <div class="carousel-container">
                    <h2>Good Food For All</h2>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                </div>
            </div>
            <!-- End Carousel Item -->

            <a class="carousel-control-prev" href="#hero-carousel" role="button" data-bs-slide="prev"><span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span></a><a class="carousel-control-next" href="#hero-carousel" role="button" data-bs-slide="next"><span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span></a>
            <ol class="carousel-indicators">
            </ol>
        </div>
    </section>
    <!-- /Hero Section -->
<%--
    Register page--%>
       

    <div class="register-box">

        <h2>Farmer Registration</h2>

        <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
        <asp:TextBox ID="txtFirstName" runat="server"
            CssClass="form-control"
            placeholder="Enter First Name"></asp:TextBox>

        <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
        <asp:TextBox ID="txtLastName" runat="server"
            CssClass="form-control"
            placeholder="Enter Last Name"></asp:TextBox>

        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server"
            TextMode="Email"
            CssClass="form-control"
            placeholder="Enter Email"></asp:TextBox>

        <asp:Label ID="lblMobile" runat="server" Text="Mobile Number"></asp:Label>
        <asp:TextBox ID="txtMobile" runat="server"
            CssClass="form-control"
            placeholder="Enter Mobile Number"></asp:TextBox>

        <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
        <asp:TextBox ID="txtUsername" runat="server"
            CssClass="form-control"
            placeholder="Enter Username"></asp:TextBox>

        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server"
            TextMode="Password"
            CssClass="form-control"
            placeholder="Enter Password"></asp:TextBox>

        <asp:Label ID="lblConfirmPassword" runat="server"
            Text="Confirm Password"></asp:Label>

        <asp:TextBox ID="txtConfirmPassword" runat="server"
            TextMode="Password"
            CssClass="form-control"
            placeholder="Confirm Password"></asp:TextBox>

        <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn" OnClick="btnRegister_Click" />

        <br /><br />

        <asp:Label ID="lblMessage" runat="server"></asp:Label>

    </div>


        <%--End register page--%>
    <!-- About Section -->
    <section id="about" class="about section">
        <div class="content">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 mb-4 mb-lg-0">
                        <img src="assets/img/img_long_5.jpg" alt="Image " class="img-fluid img-overlap" data-aos="zoom-out">
                    </div>
                    <div class="col-lg-5 ml-auto" data-aos="fade-up" data-aos-delay="100">
                        <h3 class="content-subtitle text-white opacity-50">Why Choose Us</h3>
                        <h2 class="content-title mb-4">More than <strong>50 year experience</strong> in agriculture
                industry </h2>
                        <p class="opacity-50">
                            Reprehenderit, odio laboriosam? Blanditiis quae ullam quasi illum
                minima nostrum perspiciatis error consequatur sit nulla.
                        </p>
                        <div class="row my-5">
                            <div class="col-lg-12 d-flex align-items-start mb-4">
                                <i class="bi bi-cloud-rain me-4 display-6"></i>
                                <div>
                                    <h4 class="m-0 h5 text-white">Plants needs rain</h4>
                                    <p class="text-white opacity-50">
                                        Lorem ipsum dolor sit amet.</p>
                                </div>
                            </div>
                            <div class="col-lg-12 d-flex align-items-start mb-4">
                                <i class="bi bi-heart me-4 display-6"></i>
                                <div>
                                    <h4 class="m-0 h5 text-white">Love organic foods</h4>
                                    <p class="text-white opacity-50">
                                        Lorem ipsum dolor sit amet.</p>
                                </div>
                            </div>
                            <div class="col-lg-12 d-flex align-items-start">
                                <i class="bi bi-shop me-4 display-6"></i>
                                <div>
                                    <h4 class="m-0 h5 text-white">Sell vegies</h4>
                                    <p class="text-white opacity-50">
                                        Lorem ipsum dolor sit amet.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- /About Section -->

    <!-- About 3 Section -->
    <section id="about-3" class="about-3 section">
        <div class="container">
            <div class="row gy-4 justify-content-between align-items-center">
                <div class="col-lg-6 order-lg-2 position-relative" data-aos="zoom-out">
                    <img src="assets/img/img_sq_1.jpg" alt="Image" class="img-fluid"> <a href="https://www.youtube.com/watch?v=Y7f98aduVJ8" class="glightbox pulsating-play-btn"><span class="play"><i class="bi bi-play-fill"></i></span></a>
                </div>
                <div class="col-lg-5 order-lg-1" data-aos="fade-up" data-aos-delay="100">
                    <h2 class="content-title mb-4">Plants Make Life Better</h2>
                    <p class="mb-4">
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Enim
              necessitatibus placeat, atque qui voluptatem velit explicabo vitae
              repellendus architecto provident nisi ullam minus asperiores commodi!
              Tenetur, repellat aliquam nihil illo.
                    </p>
                    <ul class="list-unstyled list-check">
                        <li>Lorem ipsum dolor sit amet</li>
                        <li>Velit explicabo vitae repellendu</li>
                        <li>Repellat aliquam nihil illo</li>
                    </ul>
                    <p>
                        <a href="#" class="btn-cta">Get in touch</a></p>
                </div>
            </div>
        </div>
    </section>
    <!-- /About 3 Section -->

    <!-- Services 2 Section -->
    <section id="services-2" class="services-2 section dark-background">
      <!-- Section Title -->
        <div class="container section-title" data-aos="fade-up">
            <h2>Services</h2>
            <p>
                Necessitatibus eius consequatur</p>
        </div>
        <!-- End Section Title -->

        <div class="services-carousel-wrap">
            <div class="container">
                <div class="swiper init-swiper">
            <script type="application/json" class="swiper-config">
              {
                "loop": true,
                "speed": 600,
                "autoplay": {
                  "delay": 5000
                },
                "slidesPerView": "auto",
                "pagination": {
                  "el": ".swiper-pagination",
                  "type": "bullets",
                  "clickable": true
                },
                "navigation": {
                  "nextEl": ".js-custom-next",
                  "prevEl": ".js-custom-prev"
                },
                "breakpoints": {
                  "320": {
                    "slidesPerView": 1,
                    "spaceBetween": 40
                  },
                  "1200": {
                    "slidesPerView": 3,
                    "spaceBetween": 40
                  }
                }
              }
            </script>
                    <button class="navigation-prev js-custom-prev">
                        <i class="bi bi-arrow-left-short"></i>
                    </button>
                    <button class="navigation-next js-custom-next">
                        <i class="bi bi-arrow-right-short"></i>
                    </button>
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="service-item">
                                <div class="service-item-contents">
                                    <a href="#"><span class="service-item-category">We do</span>
                                    <h2 class="service-item-title">Planting</h2>
                                    </a>
                                </div>
                                <img src="assets/img/img_sq_1.jpg" alt="Image" class="img-fluid">
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="service-item">
                                <div class="service-item-contents">
                                    <a href="#"><span class="service-item-category">We do</span>
                                    <h2 class="service-item-title">Mulching</h2>
                                    </a>
                                </div>
                                <img src="assets/img/img_sq_3.jpg" alt="Image" class="img-fluid">
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="service-item">
                                <div class="service-item-contents">
                                    <a href="#"><span class="service-item-category">We do</span>
                                    <h2 class="service-item-title">Watering</h2>
                                    </a>
                                </div>
                                <img src="assets/img/img_sq_8.jpg" alt="Image" class="img-fluid">
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="service-item">
                                <div class="service-item-contents">
                                    <a href="#"><span class="service-item-category">We do</span>
                                    <h2 class="service-item-title">Fertilizing</h2>
                                    </a>
                                </div>
                                <img src="assets/img/img_sq_4.jpg" alt="Image" class="img-fluid">
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="service-item">
                                <div class="service-item-contents">
                                    <a href="#"><span class="service-item-category">We do</span>
                                    <h2 class="service-item-title">Harvesting</h2>
                                    </a>
                                </div>
                                <img src="assets/img/img_sq_5.jpg" alt="Image" class="img-fluid">
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="service-item">
                                <div class="service-item-contents">
                                    <a href="#"><span class="service-item-category">We do</span>
                                    <h2 class="service-item-title">Mowing</h2>
                                    </a>
                                </div>
                                <img src="assets/img/img_sq_6.jpg" alt="Image" class="img-fluid">
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="service-item">
                                <div class="service-item-contents">
                                    <a href="#"><span class="service-item-category">We do</span>
                                    <h2 class="service-item-title">Seeding Plants</h2>
                                    </a>
                                </div>
                                <img src="assets/img/img_sq_8.jpg" alt="Image" class="img-fluid">
                            </div>
                        </div>
                    </div>
                    <div class="swiper-pagination">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- /Services 2 Section -->

    <!-- Testimonials Section -->
    <section class="testimonials-12 testimonials section" id="testimonials">
      <!-- Section Title -->
        <div class="container section-title" data-aos="fade-up">
            <h2>TESTIMONIALS</h2>
            <p>
                Necessitatibus eius consequatur</p>
        </div>
        <!-- End Section Title -->

        <div class="testimonial-wrap">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 mb-4 mb-md-4">
                        <div class="testimonial">
                            <img src="assets/img/testimonials/testimonials-1.jpg" alt="Testimonial author">
                            <blockquote>
                                <p>
                                    “Lorem ipsum dolor sit, amet consectetur adipisicing
                    elit. Provident deleniti iusto molestias, dolore vel fugiat
                    ab placeat ea?”
                                </p>
                            </blockquote>
                            <p class="client-name">
                                James Smith</p>
                        </div>
                    </div>
                    <div class="col-md-6 mb-4 mb-md-4">
                        <div class="testimonial">
                            <img src="assets/img/testimonials/testimonials-2.jpg" alt="Testimonial author">
                            <blockquote>
                                <p>
                                    “Lorem ipsum dolor sit, amet consectetur adipisicing
                    elit. Provident deleniti iusto molestias, dolore vel fugiat
                    ab placeat ea?”
                                </p>
                            </blockquote>
                            <p class="client-name">
                                Kate Smith</p>
                        </div>
                    </div>
                    <div class="col-md-6 mb-4 mb-md-4">
                        <div class="testimonial">
                            <img src="assets/img/testimonials/testimonials-3.jpg" alt="Testimonial author">
                            <blockquote>
                                <p>
                                    “Lorem ipsum dolor sit, amet consectetur adipisicing
                    elit. Provident deleniti iusto molestias, dolore vel fugiat
                    ab placeat ea?”
                                </p>
                            </blockquote>
                            <p class="client-name">
                                Claire Anderson</p>
                        </div>
                    </div>
                    <div class="col-md-6 mb-4 mb-md-4">
                        <div class="testimonial">
                            <img src="assets/img/testimonials/testimonials-4.jpg" alt="Testimonial author">
                            <blockquote>
                                <p>
                                    “Lorem ipsum dolor sit, amet consectetur adipisicing
                    elit. Provident deleniti iusto molestias, dolore vel fugiat
                    ab placeat ea?”
                                </p>
                            </blockquote>
                            <p class="client-name">
                                Dan Smith</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- /Testimonials Section -->

    <!-- Recent Posts Section -->
    <section id="recent-posts" class="recent-posts section">

      <!-- Section Title -->
        <div class="container section-title" data-aos="fade-up">
            <h2>Recent Posts</h2>
            <p>
                Necessitatibus eius consequatur</p>
        </div>
        <!-- End Section Title -->

        <div class="container">
            <div class="row gy-5">
                <div class="col-xl-4 col-md-6">
                    <div class="post-item position-relative h-100" data-aos="fade-up" data-aos-delay="100">
                        <div class="post-img position-relative overflow-hidden">
                            <img src="assets/img/blog/blog-1.jpg" class="img-fluid" alt=""> <span class="post-date">December 12</span>
                        </div>
                        <div class="post-content d-flex flex-column">
                            <h3 class="post-title">Eum ad dolor et. Autem aut fugiat debitis</h3>
                            <div class="meta d-flex align-items-center">
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-person"></i><span class="ps-2">Julia Parker</span>
                                </div>
                                <span class="px-3 text-black-50">/</span>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-folder2"></i><span class="ps-2">Politics</span>
                                </div>
                            </div>
                            <hr><a href="blog-details.aspx" class="readmore stretched-link"><span>Read More</span><i class="bi bi-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
                <!-- End post item -->

                <div class="col-xl-4 col-md-6">
                    <div class="post-item position-relative h-100" data-aos="fade-up" data-aos-delay="200">
                        <div class="post-img position-relative overflow-hidden">
                            <img src="assets/img/blog/blog-2.jpg" class="img-fluid" alt=""> <span class="post-date">July 17</span>
                        </div>
                        <div class="post-content d-flex flex-column">
                            <h3 class="post-title">Et repellendus molestiae qui est sed omnis</h3>
                            <div class="meta d-flex align-items-center">
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-person"></i><span class="ps-2">Mario Douglas</span>
                                </div>
                                <span class="px-3 text-black-50">/</span>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-folder2"></i><span class="ps-2">Sports</span>
                                </div>
                            </div>
                            <hr><a href="blog-details.aspx" class="readmore stretched-link"><span>Read More</span><i class="bi bi-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
                <!-- End post item -->

                <div class="col-xl-4 col-md-6" data-aos="fade-up" data-aos-delay="300">
                    <div class="post-item position-relative h-100">
                        <div class="post-img position-relative overflow-hidden">
                            <img src="assets/img/blog/blog-3.jpg" class="img-fluid" alt=""> <span class="post-date">September 05</span>
                        </div>
                        <div class="post-content d-flex flex-column">
                            <h3 class="post-title">Quia assumenda est et veritati tirana ploder</h3>
                            <div class="meta d-flex align-items-center">
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-person"></i><span class="ps-2">Lisa Hunter</span>
                                </div>
                                <span class="px-3 text-black-50">/</span>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-folder2"></i><span class="ps-2">Economics</span>
                                </div>
                            </div>
                            <hr><a href="blog-details.aspx" class="readmore stretched-link"><span>Read More</span><i class="bi bi-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
                <!-- End post item -->

            </div>
        </div>
    </section>
    <!-- /Recent Posts Section -->

    <!-- Call To Action Section -->
    <section id="call-to-action" class="call-to-action section light-background">
        <div class="content">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <h3>Subscribe To Our Newsletter</h3>
                        <p class="opacity-50">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit.
                Nesciunt, reprehenderit!
                        </p>
                    </div>
                    <div class="col-lg-6">
                        <form action="forms/newsletter.php" class="form-subscribe php-email-form">
                            <div class="form-group d-flex align-items-stretch">
                                <input type="email" name="email" class="form-control h-100" placeholder="Enter your e-mail">
                                <input type="submit" class="btn btn-secondary px-4" value="Subcribe">
                            </div>
                            <div class="loading">
                                Loading</div>
                            <div class="error-message">
                            </div>
                            <div class="sent-message">
                                Your subscription request has been sent. Thank you!
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- /Call To Action Section -->

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
              <li><a href="#">Home</a></li>
              <li><a href="#">About us</a></li>
              <li><a href="#">Services</a></li>
              <li><a href="#">Terms of service</a></li>
              <li><a href="#">Privacy policy</a></li>
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

          <div class="col-lg-4 col-md-12 footer-newsletter">
            <h4>Our Newsletter</h4>
            <p>Subscribe to our newsletter and receive the latest news about our products and services!</p>
            <form action="forms/newsletter.php" method="post" class="php-email-form">
              <div class="newsletter-form"><input type="email" name="email"><input type="submit" value="Subscribe"></div>
              <div class="loading">Loading</div>
              <div class="error-message"></div>
              <div class="sent-message">Your subscription request has been sent. Thank you!</div>
            </form>
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
            <!-- All the links in the footer should remain intact. -->
            <!-- You can delete the links only if you purchased the pro version. -->
            <!-- Licensing information: https://bootstrapmade.com/license/ -->
            <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/herobiz-bootstrap-business-template/ -->
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
