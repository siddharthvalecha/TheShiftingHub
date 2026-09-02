<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Booking Successful</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<style>

body{

    background:#f8f8ff;
    font-family:'Segoe UI',sans-serif;

}

.success-card{

    max-width:650px;
    margin:80px auto;
    border:none;
    border-radius:18px;
    box-shadow:0 8px 20px rgba(0,0,0,.08);
    padding:40px;
    text-align:center;

}

.icon{

    font-size:70px;
    color:#28a745;

}

.heading{

    color:#8877dc;
    font-weight:bold;

}

.btn-theme{

    background:#8877dc;
    color:white;
    border:none;
    border-radius:10px;
    padding:10px 25px;

}

.btn-theme:hover{

    background:#6f5bd3;
    color:white;

}

</style>

</head>

<body>

<div class="container">

<div class="card success-card">

<div class="icon">

<i class="fa-solid fa-circle-check"></i>

</div>

<h2 class="heading mt-3">

Booking Successful!

</h2>

<p class="mt-3">

Thank you for choosing <strong>The Shifting Hub</strong>.

<br><br>

Your shifting request has been submitted successfully.

</p>

<div class="alert alert-warning mt-4">

<strong>Status :</strong> Pending

</div>

<div class="mt-4">

<a href="loginpage.jsp" class="btn btn-theme me-2">

Home

</a>

<a href="bookingform.jsp" class="btn btn-outline-secondary">

Book Another Shift

</a>

</div>

</div>

</div>

</body>
</html>