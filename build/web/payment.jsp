<%@page import="com.model.Product"%>

<%
Product product = (Product) request.getAttribute("product");
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Checkout</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
    background:#f8f8ff;
    font-family:'Segoe UI',sans-serif;
}

.checkout-card{
    max-width:750px;
    margin:40px auto;
    border:none;
    border-radius:18px;
    box-shadow:0 8px 20px rgba(0,0,0,.08);
}

.product-img{
    width:100%;
    height:250px;
    object-fit:cover;
    border-radius:10px;
}

.price{
    color:#198754;
    font-size:28px;
    font-weight:bold;
}

.btn-purple{

    background:#8877dc;
    color:white;
    border:none;
    border-radius:10px;
    padding:10px;
    font-weight:600;

}

.btn-purple:hover{

    background:#705fd4;
    color:white;

}

.heading{

    color:#6c5ce7;
    font-weight:bold;

}

</style>

</head>

<body>

<div class="container">

<div class="card checkout-card">

<div class="card-body p-4">

<h2 class="text-center heading mb-4">

Checkout

</h2>

<!-- Product Information -->

<img src="<%=request.getContextPath()%>/<%=product.getImage()%>"
class="product-img mb-3">

<h3>

<%=product.getProductName()%>

</h3>

<p class="text-muted">

<%=product.getDescription()%>

</p>

<h3 class="price">

Rs. <%=product.getSellingPrice()%>

</h3>

<hr>

<!-- Payment Form -->

<form action="PaymentServlet" method="post">

<input
type="hidden"
name="productId"
value="<%=product.getProductId()%>">

<input
type="hidden"
name="amount"
value="<%=product.getSellingPrice()%>">

<div class="mb-3">

<label class="form-label">

Full Name

</label>

<input
type="text"
name="customerName"
class="form-control"
value="<%=session.getAttribute("fullname")!=null?session.getAttribute("fullname"):""%>"
required>

</div>

<div class="mb-3">

<label class="form-label">

Phone Number

</label>

<input
type="text"
name="phone"
class="form-control"
placeholder="Enter Phone Number"
required>

</div>

<div class="mb-3">

<label class="form-label">

Delivery Address

</label>

<textarea
name="address"
class="form-control"
rows="3"
required></textarea>

</div>

<div class="row">

<div class="col-md-6 mb-3">

<label class="form-label">

City

</label>

<input
type="text"
name="city"
class="form-control"
required>

</div>

<div class="col-md-6 mb-3">

<label class="form-label">

Pincode

</label>

<input
type="text"
name="pincode"
class="form-control"
required>

</div>

</div>

<div class="mb-4">

<label class="form-label">

Payment Method

</label>

<select
name="paymentMethod"
class="form-select"
required>

<option value="">Select Payment Method</option>

<option>Cash On Delivery</option>

<option>UPI</option>

<option>Credit / Debit Card</option>

<option>Net Banking</option>

</select>

</div>

<button
type="submit"
class="btn btn-purple w-100">

Place Order

</button>

</form>

</div>

</div>

</div>

</body>

</html>