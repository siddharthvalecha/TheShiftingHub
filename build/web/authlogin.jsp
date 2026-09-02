<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Admin Login - The Shifting Hub</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"/>

  <style>
    body {
      background: linear-gradient(135deg, #e8e2ff, #f6f4fc);
      min-height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
      font-family: 'Segoe UI', sans-serif;
    }

    .login-card {
      max-width: 400px;
      width: 100%;
      background: #ffffff;
      padding: 40px 30px;
      border-radius: 20px;
      box-shadow: 0 8px 20px rgba(160, 130, 255, 0.2);
      text-align: center;
    }

    .icon-circle {
      width: 70px;
      height: 70px;
      background-color: #ede7ff;
      color: #6b50d9;
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 32px;
      margin: 0 auto 20px;
      box-shadow: 0 6px 12px rgba(128, 100, 255, 0.2);
    }

    .login-card h4 {
      font-weight: 600;
      color: #6b50d9;
      margin-bottom: 30px;
    }

    .form-control,
    .form-select {
      border-radius: 12px;
      padding: 12px 15px;
      border: 1px solid #ddd;
    }

    .btn-lavender {
      background: linear-gradient(to right, #a788f7, #cbb9ff);
      color: #fff;
      border: none;
      padding: 10px;
      border-radius: 30px;
      font-weight: 500;
      transition: 0.3s ease;
      width: 100%;
    }

    .btn-lavender:hover {
      background: linear-gradient(to right, #9771f7, #bca8ff);
      box-shadow: 0 6px 18px rgba(140, 110, 240, 0.2);
    }

    .input-icon {
      position: absolute;
      left: 15px;
      top: 50%;
      transform: translateY(-50%);
      color: #a88ee7;
    }

    .form-group {
      position: relative;
    }

    .form-group input {
      padding-left: 40px;
    }

    .form-text {
      font-size: 0.9rem;
      color: #7a7a7a;
    }
    .role-select {
  padding-left: 40px;
  border-radius: 12px;
  border: 1px solid #d2c6f9;
  background-color: #f5f3ff;
  color: #5a5a89;
  box-shadow: 0 2px 6px rgba(155, 131, 255, 0.08);
  transition: border 0.3s ease, background-color 0.3s ease;
}

.role-select:hover {
  background-color: #ece4ff;
  border-color: #a88ee7;
  cursor: pointer;
}

.role-select:focus {
  border-color: #a88ee7;
  outline: none;
  box-shadow: 0 0 0 2px rgba(168, 142, 231, 0.3);
}

  </style>
</head>
<body>

  <div class="login-card">
    <div class="icon-circle">
      <i class="fas fa-user-tie"></i> <!-- Manager-style icon -->
    </div>
    <h4>Auth Login</h4>

    <form action="authloginjavacode.jsp" method="post">
      
      <!-- Username -->
      <div class="form-group mb-4">
        <i class="fas fa-user input-icon"></i>
        <input type="text" name="username" class="form-control" placeholder="Username" required>
      </div>

      <!-- Password -->
      <div class="form-group mb-4">
        <i class="fas fa-lock input-icon"></i>
        <input type="password" name="password" class="form-control" placeholder="Password" required>
      </div>

     
<!-- Role Dropdown -->
<div class="form-group mb-4 text-start">
  <label for="role" class="form-label fw-semibold" style="color: #5a5a89;">Login As</label>
  <div class="position-relative">
    <i class="fas fa-user-cog input-icon"></i>
    <select name="role" id="role" class="form-select role-select">
      <option value="Admin">Admin</option>
      <option value="Product Operator">Product Operator</option>
      <option value="Shifting Operator">Shifting Operator</option>
      <option value="Complain Operator">Complain Operator</option>
    </select>
  </div>
</div>



      <!-- Login Button -->
      <button type="submit" class="btn btn-lavender">Login</button>

     
    </form>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
