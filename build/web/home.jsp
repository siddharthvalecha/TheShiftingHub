<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">

    <style>
      body
      {
        background: linear-gradient(90deg, #e2e2e2, lavender);
            font-family: 'Poppins', sans-serif;
      }
      .body-class-img{
        width: 100%;
      height: 700px;
      object-fit: cover; /* This makes sure the images cover the area without distortion */
      }
      

      .navbar {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    /*background: rgba(255, 0, 0, 0.8);  Halka transparent red */
    z-index: 1000;
     background-color: lavender;
  height: 80px;
  box-shadow: 0 2px 10px rgba(0,0,0,0.1);
  
}

.navbar-brand {
   
  font-size: 1.8rem;
  font-weight: 700;
  color: #6f42c1 !important;
  letter-spacing: 1px;
}

.navbar-nav .nav-link {
  font-size: 1.1rem;
  font-weight: 500;
  color: #4a235a !important;
  transition: all 0.3s ease;
}
.navbar-nav .nav-link:hover {
  color: #6f42c1 !important;
  transform: scale(1.05);
}
.carousel-caption {
        position: absolute;
        top: 60%;
        left: 50%;
        transform: translate(-50%, -50%);
        color: white;
        text-align: center;
        padding: 5px 10px;
        border-radius: 10px;
        text-shadow: 2px 2px 5px rgba(99, 2, 118, 0.893);
        font-weight: bold;
    }
    footer {
    background-color: #e6e6fa;
    color: #333;
  }

  footer h5 {
    color: #6f42c1;
  }

  footer a {
    text-decoration: none;
    color: #333;
  }

  footer a:hover {
    color: #6f42c1;
  }

  .footer-bottom {
    background-color: #dcd0ff;
    color: #6f42c1;
  }


    </style>

      
</head>
<body>

  <!-- navbar -->
<nav class="navbar navbar-expand-lg ">
  <div class="container-fluid align-items-center">
     <a class="navbar-brand ms-6 logo" href="#"><img src="icons/logo.png" alt="logo" width="100" height="75"></span></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
      data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
      aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
            <a class="nav-link fs-5" aria-current="page" href="home.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link fs-5" href="#about">About Us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link fs-5" href="#service">Our Services</a>
        </li>
        <li class="nav-item">
            <a class="nav-link fs-5" href="login.jsp">Account</a>
        </li>
      </ul>

      <!-- Search form -->
      <form class="d-flex align-items-center" role="search">
          <!-- Call icon after search -->
          <a class="nav-link p-0 me-2" href="#" data-bs-toggle="modal" data-bs-target="#contactModal">
  <img src="images/call.png" alt="Call Icon" style="width: 30px; height: 30px; object-fit: contain;">
</a>

        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search"
          style="width: 250px;">
        <button class="btn fs-5 me-3" style="background-color: rgb(167, 100, 228); color: white;" type="submit">Search</button>

      
      </form>
    </div>
  </div>
</nav>



 
     <!-- carousel -->
     <div id="carouselExampleDark" class="carousel carousel-dark slide mt-5">
      <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
      </div>
      <div class="carousel-inner">
        <div class="carousel-item active" data-bs-interval="10000">
          <img src="images/1.webp" class="d-block w-100" alt="...">
          <div class="carousel-caption d-none d-md-block">
          
          </div>
        </div>
        <div class="carousel-item" data-bs-interval="2000">
          <img src="images/2.webp" class="d-block w-100" alt="...">
          <div class="carousel-caption d-none d-md-block">
           
            
          </div>
        </div>
        <div class="carousel-item">
          <img src="images/3.webp" class="d-block w-100" alt="...">
          <div class="carousel-caption d-none d-md-block">
           
            
          </div>
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div> 
     <div id="service" class="mt-5">
     <h2 class="fw-bold display-4 text-center" style="color: #6f42c1; font-size: 3rem;">Our Services</h2>
<hr class="mx-auto" style="width: 100px; height: 4px; background-color: #6f42c1; border: none;">

<div class="container my-5">
  <div class="row align-items-center mb-5">
    <div class="col-lg-6 mb-3 mb-lg-0">
      <img src="images/6632734.webp" class="img-fluid" style="height: 300px; width: 100%; object-fit: cover;" alt="Service Image">
    </div>

          
        <div class="col-lg-6">
          <h1>How Our Services Work</h1>
          <p class="para fs-5">
            
            We make international moving simple in just 3 steps: Book, Pack, Move! Start by booking your move online?just share your destination and item details. Our team then packs your belongings with care and handles all the logistics, including customs and shipping. Once everything arrives, we deliver it right to your new home abroad. Quick, easy, and hassle-free?so you can focus on your next chapter.


          </p>
        </div>
      </div>
    
      <div class="row align-items-center">
        <div class="col-lg-6">
          <h1>Shift Anything Anywhere!!!!!!!</h1>
          <p class="para fs-5">
            Whether it?s your household essentials, personal belongings, or office equipment, we make international shifting easy. No matter the size or destination, we ensure everything is packed securely, transported safely, and delivered on time. With our global network and reliable service, you can shift anything, anywhere?without the stress.

          </p>
        </div>
        <div class="col-lg-6 mt-3 mt-lg-0" >
          <img src="images/2nd.png" class="img-fluid" style="height: 300px; width: 100% ;object-fit:cover;" alt="Get Anything Image">
        </div>
      </div>
    </div>
     <!-- About Us Section -->
<div class="container my-5 mt-5" id="about">
  <div class="text-center mb-5">
    <h2 class="fw-bold display-4" style="color: #6f42c1;">About Us</h2>
    <hr class="mx-auto" style="width: 100px; height: 4px; background-color: #6f42c1; border: none;">
    <p class="fs-5 mt-4 px-md-5">
      <strong>The Shifting Hub</strong> is your trusted partner for stress-free international moving. With a mission to simplify shifting, 
      we combine care, speed, and global logistics to move your belongings safely and efficiently.
      Whether you're relocating across continents or sending a parcel overseas, we handle every step with precision and responsibility.
    </p>
  </div>
</div>
  <!-- Feature Cards Row -->
  <div class="row g-4">
    <div class="col-md-6 col-lg-3">
      <div class="border p-4 h-100 bg-white shadow rounded text-center">
        <div class="bg-lavender text-white p-3 rounded-circle mx-auto mb-3" style="background-color: #6f42c1; width: 60px; height: 60px;">
          <i class="bi bi-basket fs-4"></i>
        </div>
        <h5 class="fw-semibold">Import Export Goods</h5>
        <p class="mb-0">We manage global goods efficiently and securely.</p>
      </div>
    </div>

    <div class="col-md-6 col-lg-3">
      <div class="border p-4 h-100 bg-white shadow rounded text-center">
        <div class="bg-lavender text-white p-3 rounded-circle mx-auto mb-3" style="background-color: #6f42c1; width: 60px; height: 60px;">
          <i class="bi bi-truck fs-4"></i>
        </div>
        <h5 class="fw-semibold">Fast Delivery Network</h5>
        <p class="mb-0">We deliver quickly and reliably across the globe.</p>
      </div>
    </div>

    <div class="col-md-6 col-lg-3">
      <div class="border p-4 h-100 bg-white shadow rounded text-center">
        <div class="bg-lavender text-white p-3 rounded-circle mx-auto mb-3" style="background-color: #6f42c1; width: 60px; height: 60px;">
          <i class="bi bi-person-fill fs-4"></i>
        </div>
        <h5 class="fw-semibold">Well Qualified Staff</h5>
        <p class="mb-0">Experienced professionals handle every step with care.</p>
      </div>
    </div>

    <div class="col-md-6 col-lg-3">
      <div class="border p-4 h-100 bg-white shadow rounded text-center">
        <div class="bg-lavender text-white p-3 rounded-circle mx-auto mb-3" style="background-color: #6f42c1; width: 60px; height: 60px;">
          <i class="bi bi-house-door-fill fs-4"></i>
        </div>
        <h5 class="fw-semibold">Warehousing Service</h5>
        <p class="mb-0">Safe storage and live tracking for peace of mind.</p>
      </div>
    </div>
  </div>
</div>


     <!-- Footer -->
<footer class="text-center text-lg-start mt-5">
  <div class="container p-4 pb-0">
    <div class="row">

      <!-- Company Info -->
      <div class="col-md-4 col-lg-4 col-xl-4 mx-auto mt-3">
        <h5 class="text-uppercase mb-4 font-weight-bold">The Shifting Hub</h5>
        <p>
          We simplify shifting across borders. Secure packing, smooth logistics, and doorstep delivery ? all done with care.
        </p>
      </div>

      <!-- Quick Links -->
      <div class="col-md-4 col-lg-4 col-xl-4 mx-auto mt-3">
        <h5 class="text-uppercase mb-4 font-weight-bold">Quick Links</h5>
        <ul class="list-unstyled">
          <li><a href="home.jsp">Home</a></li>
          <li><a href="aboutus.jsp">About Us</a></li>
          <li><a href="services.jsp">Our Services</a></li>
          <li><a href="login.jsp">Account</a></li>
        </ul>
      </div>

      <!-- Contact Info -->
      <div class="col-md-4 col-lg-4 col-xl-4 mx-auto mt-3">
        <h5 class="text-uppercase mb-4 font-weight-bold">Contact</h5>
        <p><i class="bi bi-telephone"></i> +91 98765 43210</p>
        <p><i class="bi bi-envelope"></i> support@theshiftinghub.com</p>
        <p><i class="bi bi-geo-alt"></i> Indore, Madhya Pradesh, India</p>
      </div>

    </div>
  </div>

  <!-- Bottom bar -->
  <div class="text-center p-3 footer-bottom">
    © 2025 The Shifting Hub | All rights reserved.
  </div>
</footer>

<!-- Bootstrap Icons CDN (if not already included) -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<!-- Contact Modal -->
<div class="modal fade" id="contactModal" tabindex="-1" aria-labelledby="contactModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header" style="background-color: #6f42c1; color: white;">
        <h5 class="modal-title" id="contactModalLabel">Contact Us</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <p><strong>Phone:</strong> +91 98765 43210</p>
        <p><strong>Email:</strong> support@theshiftinghub.com</p>
        <div class="ratio ratio-16x9">
          <iframe
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3664.523481703882!2d75.87031001444383!3d22.72796433011744!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3962fdc309d47e6b%3A0xf0b7e3b6b8a3c3e7!2sIndore%2C%20Madhya%20Pradesh!5e0!3m2!1sen!2sin!4v1652345678901"
            width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
            referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
      </div>
    </div>
  </div>
</div>

</body>
</html>
