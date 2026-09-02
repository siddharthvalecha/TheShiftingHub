<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">

    <title>Forgot Password - The Shifting Hub</title>

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

        .forgot-box {
            width: 420px;
            background: white;

            padding: 35px;

            border-radius: 20px;

            box-shadow: 0 4px 20px rgba(162, 121, 255, 0.15);

            text-align: center;
        }

        .forgot-box h2 {
            color: #6b21a8;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .forgot-box p {
            color: #666;
            margin-bottom: 25px;
        }

        .form-control {
            padding: 12px;
            border-radius: 8px;
        }

        .otp-input {
            text-align: center;
            font-size: 20px;
            letter-spacing: 5px;
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

        .message {
            margin-top: 15px;
            font-size: 14px;
        }

        .back-link {
            display: inline-block;
            margin-top: 20px;

            color: #6b21a8;
            text-decoration: none;
        }

        .back-link:hover {
            text-decoration: underline;
        }

    </style>

</head>

<body>

<div class="forgot-box">

<%
    String otpSent = request.getParameter("otpSent");
    String msg = request.getParameter("msg");
%>


<%
    // STEP 1: Email form
    if (!"true".equals(otpSent)) {
%>

    <h2>Forgot Password?</h2>

    <p>
        Enter your registered email address.
        We will send you an OTP to reset your password.
    </p>

    <form action="ForgotPasswordServlet" method="post">

        <div class="mb-3 text-start">

            <label class="form-label">
                Email Address
            </label>

            <input type="email"
                   name="email"
                   class="form-control"
                   placeholder="Enter your registered email"
                   required>

        </div>

        <button type="submit" class="btn btn-purple">
            Send OTP
        </button>

    </form>

<%
        if ("notfound".equals(msg)) {
%>

        <div class="message" style="color:red;">
            Email address is not registered.
        </div>

<%
        } else if ("sendfailed".equals(msg)) {
%>

        <div class="message" style="color:red;">
            Failed to send OTP. Please try again.
        </div>

<%
        }
%>


<%
    // STEP 2: OTP form
    } else {
%>

    <h2>Verify OTP</h2>

    <p>
        Enter the 6-digit OTP sent to your registered email.
    </p>

    <form action="VerifyOTPServlet" method="post">

        <div class="mb-3">

            <input type="text"
                   name="otp"
                   class="form-control otp-input"
                   placeholder="Enter OTP"
                   maxlength="6"
                   pattern="[0-9]{6}"
                   required>

        </div>

        <button type="submit" class="btn btn-purple">
            Verify OTP
        </button>

    </form>

<%
        if ("invalid".equals(msg)) {
%>

        <div class="message" style="color:red;">
            Invalid OTP. Please try again.
        </div>

<%
        }
%>

<%
    }
%>

    <a href="login.jsp" class="back-link">
        ← Back to Login
    </a>

</div>

</body>
</html>