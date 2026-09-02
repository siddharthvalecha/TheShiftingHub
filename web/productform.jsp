<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Login Page</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

  <style>
      html{
   scroll-behavior: smooth;
   }


    body {
      font-family: 'Segoe UI', sans-serif;
      overflow-x: hidden;
    }

    .navbar {
      background-color: lavender;
      height: 80px;
      position: fixed;
      top: 0;
      width: 100%;
      z-index: 1050;

    }

    .hamburger {
      font-size: 24px;
      cursor: pointer;
      padding: 10px;
      position: absolute;
      left: 10px;
      top: 50%;
      transform: translateY(-50%);
      z-index: 1001;
    }

    .sidebar {
      position: fixed;
      width: 220px;
      background-color: #f0f0ff;
      transition: all 0.8s ease;
      padding-top: 20px;
      height: calc(100vh - 80px);
      top: 80px;
      left: 0;
      border-right: 2px solid lavender;
      z-index: 1;
      overflow-y: auto;
    }

    .sidebar.collapsed {
      width: 60px;
    }

    .sidebar .nav-link {
      color: #333;
      font-size: 1rem;
      padding: 12px 20px;
      display: flex;
      align-items: center;
      transition: 0.2s;
    }

    .sidebar .nav-link:hover {
      background-color: #dcdcff;
      border-radius: 8px;
    }

    .sidebar .nav-link .icon {
      display: inline-block;
      width: 25px;
      text-align: center;
      font-size: 1.2rem;
      margin-right: 10px;
    }

    .sidebar .nav-link .text {
      display: inline-block;
      transition: margin-left 0.5s ease-in-out; /*smooth motion */
      animation: fadeInSlide 0.6s ease;
      
    }

    .sidebar.collapsed .nav-link .text {
      display: none;

    }

    .sidebar.collapsed .nav-link .icon {
      margin-right: 0;
      width: 100%;
      text-align: center;
    }

    .content {
      margin-left: 220px;
      margin-top: 40px;
      padding: 20px;
      transition: margin-left 0.5s ease-in-out; /*smooth motion */
      animation: fadeInSlide 0.6s ease;
    }

    .sidebar.collapsed + .content {
      margin-left: 60px;
    }

    .notification{
     background-color: lavender;
     box-shadow: 0 4px 6px rgba(0,0,0,0.1);
     margin-top: auto;
     margin-right: 10px;



    }

  
   


    @keyframes fadeInSlide {
  from {
    opacity: 0;
    transform: translateX(30px);
  }
  to {
    opacity: 1;
    transform: translateX(0);
  }
}

/* styling for main content */

.card {
      border: none;
      border-radius: 15px;
      box-shadow: 0 4px 12px rgba(0,0,0,0.05);
    }
    .greeting {
      font-size: 1.5rem;
      font-weight: 600;
    }
    .section-title {
      font-size: 1.2rem;
      font-weight: 500;
    }

  </style>
</head>
<body>



  <%@include file="bar.jsp" %>


    

  
 <!-- ? Sell Product Section -->
<div id="addProductSection" class="d-flex justify-content-center align-items-center" style="min-height: 100vh; padding-top: 100px;">
  <div class="card shadow-lg p-5 w-100" style="
      max-width: 720px;
      background: linear-gradient(135deg, #f4f4ff, #ffffff);
      border: 1px solid #ddd;
      border-radius: 20px;
      box-shadow: 0 10px 25px rgba(138, 122, 223, 0.15);
    ">
    
    <h5 class="section-title mb-4 text-center" style="color: #5a5a89;">Sell Product </h5>

    <%
    String msg = request.getParameter("msg");
    if (msg != null) {
        if (msg.equals("success")) {
%>

<div class="alert alert-success alert-dismissible fade show mx-auto mt-3"
     role="alert"
     style="max-width:700px;">
    <strong>Success!</strong> Product uploaded successfully.
    <button type="button"
            class="btn-close"
            data-bs-dismiss="alert"></button>
</div>

<%
        } else if (msg.equals("failed")) {
%>

<div class="alert alert-danger alert-dismissible fade show mx-auto mt-3"
     role="alert"
     style="max-width:700px;">
    <strong>Error!</strong> Product upload failed. Please try again.
    <button type="button"
            class="btn-close"
            data-bs-dismiss="alert"></button>
</div>

<%
        }
    }
%>       
    
  <!-- Inside <form> -->
  <form action="UploadProductServlet" method="post"
      enctype="multipart/form-data">

  <div class="row g-4">
      <% String fullName = (String) session.getAttribute("fullname"); %>
       <div class="col-md-6">
  <label for="UName" class="form-label fw-semibold">Full Name</label>
  <input type="text" name="fname" class="form-control rounded-3 py-2" id="prtName"
         value="<%= fullName != null ? fullName : "" %>" 
         placeholder="Enter your name">
</div>
    <div class="col-md-6">
      <label for="productName"  class="form-label fw-semibold">Product Name</label>
      <input type="text" name="pname" class="form-control rounded-3 py-2" id="productName" placeholder="Enter product name">
    </div>

    <div class="col-12">
      <label for="productDescription"  class="form-label fw-semibold">Description</label>
      <textarea name="descr" class="form-control rounded-3 py-2" id="productDescription" rows="3" placeholder="Enter product description"></textarea>
    </div>

    <div class="col-md-6">
      <label for="billDetails"  class="form-label fw-semibold">Bill Details</label>
      <input type="number" name="price" class="form-control rounded-3 py-2" id="billDetails" placeholder="Enter product price mentioned in bill">
    </div>

   

   <div class="col-md-6">
    <label class="form-label fw-semibold">
        Date of Purchase
    </label>

    <input type="date"
           name="dop"
           class="form-control rounded-3 py-2"
           required>
</div>

    <div class="col-md-6">
      <label for="expectedPrice"  class="form-label fw-semibold">Expected Selling Price</label>
      <input type="number" name="eprice" class="form-control rounded-3 py-2" id="expectedPrice" placeholder="Enter expected selling price">
    </div>
         
    <div class="col-md-6">
    <label class="form-label fw-semibold">Product Image</label>
    <input type="file"
           class="form-control rounded-3 py-2"
           name="image"
           accept="image/*"
           required>
</div>
   

    <!-- Submit Button - properly aligned in a full-width column -->
    <div class="col-12 text-center mt-4">
      <button type="submit" class="btn px-4 py-2 rounded-pill text-white" style="background-color: #8877dc; border-color: #8877dc;">
        Add Product
      </button>
    </div>
  </div>
</form>



  <!-- ? Script -->
  <script>
    function toggleSidebar() {
      const sidebar = document.getElementById("sidebar");
      sidebar.classList.toggle("collapsed");

      const content = document.querySelector(".content");
      if (sidebar.classList.contains("collapsed")) {
        content.style.marginLeft = "60px";
      } else {
        content.style.marginLeft = "220px";
      }
    }
  </script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
