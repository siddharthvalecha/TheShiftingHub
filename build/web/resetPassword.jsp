<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Boolean otpVerified = (Boolean) session.getAttribute("otpVerified");

    if (otpVerified == null || !otpVerified) {
        response.sendRedirect("forgotPassword.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <title>Reset Password - The Shifting Hub</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <style>

        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', sans-serif;

            background: linear-gradient(to right, #f8f5ff, #f2e7ff);

            display: flex;
            justify-content: center;
            align-items: center;

            min-height: 100vh;
        }

        .reset-box {
            width: 420px;

            background: white;

            padding: 35px;

            border-radius: 20px;

            box-shadow: 0 4px 20px rgba(162, 121, 255, 0.15);

            text-align: center;
        }

        .reset-box h2 {
            color: #6b21a8;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .reset-box p {
            color: #666;
            margin-bottom: 25px;
        }

        .form-control {
            padding: 12px;
            border-radius: 8px;
        }

        .btn-purple {
            width: 100%;
            padding: 12px;

            background-color: #a78bfa !important;
            color: white !important;

            border: none;
            border-radius: 8px;

            font-size: 16px;
        }

        .btn-purple:hover {
            background-color: #7c3aed !important;
        }

    </style>

</head>

<body>

<div class="reset-box">

    <h2>Reset Password</h2>

    <p>
        Enter your new password below.
    </p>

    <form action="ResetPasswordServlet" method="post">

        <div class="mb-3 text-start">

            <label class="form-label">
                New Password
            </label>

            <input type="password"
                   name="newPassword"
                   class="form-control"
                   placeholder="Enter new password"
                   required>

        </div>


        <div class="mb-3 text-start">

            <label class="form-label">
                Confirm Password
            </label>

            <input type="password"
                   name="confirmPassword"
                   class="form-control"
                   placeholder="Confirm new password"
                   required>

        </div>


        <button type="submit" class="btn btn-purple">
            Reset Password
        </button>

    </form>
<%
    String msg = request.getParameter("msg");

    if ("mismatch".equals(msg)) {
%>

    <p style="color:red; margin-top:15px;">
        Passwords do not match.
    </p>

<%
    } else if ("failed".equals(msg)) {
%>

    <p style="color:red; margin-top:15px;">
        Password reset failed. Please try again.
    </p>

<%
    }
%>
</div>

</body>
</html> 