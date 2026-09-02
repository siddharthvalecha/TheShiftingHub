<%@page import="java.util.ArrayList"%>
<%@page import="com.model.Product"%>

<%
ArrayList<Product> products =
(ArrayList<Product>) request.getAttribute("products");
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Buy Products</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
    background:#f8f8ff;
}

.content{
    margin-left:220px;
    margin-top:90px;
    padding:30px;
    transition:.5s;
}

.page-title{
    color:#6c5ce7;
    font-weight:700;
}

.product-card{
    border:none;
    border-radius:18px;
    overflow:hidden;
    box-shadow:0 6px 18px rgba(0,0,0,.08);
    transition:.3s;
    height:100%;
}


.product-card:hover{

    transform:translateY(-6px);

    box-shadow:0 12px 25px rgba(136,119,220,.25);

}
/*.product-card{
    border:none;
    border-radius:18px;
    overflow:hidden;
    background:#fff;
    box-shadow:0 5px 15px rgba(0,0,0,.08);
    transition:.3s;
    height:100%;
}*/
.card-body{
    display:flex;
    flex-direction:column;
    padding:18px;
}
.product-title{
    font-size:28px;
    font-weight:700;
    color:#2d2d2d;
}
.selling{

    color:#16a34a;

    font-size:20px;

    font-weight:700;

}
.description{

    color:#666;

    display:-webkit-box;

    -webkit-line-clamp:2;

    -webkit-box-orient:vertical;

    overflow:hidden;

}
.original{
    color:#999;
    text-decoration:line-through;
    font-size:16px;
}

.product-card img{
    height:190px;
    object-fit:cover;
}

.btn.buy-btn{
    background-color:#8877dc !important;
    color:white !important;
    border:none !important;
    border-radius:10px;
    font-weight:600;
    padding:10px 18px;
    transition:all .3s ease;
    width:100%;
}

.btn.buy-btn:hover{
    background-color:#6f5bd3 !important;
    color:white !important;
    transform:translateY(-2px);
    box-shadow:0 6px 15px rgba(136,119,220,0.35);
}

.buy-btn:focus{
    box-shadow:none;
}

.empty{

    background:white;

    border-radius:15px;

    padding:50px;

    text-align:center;

    box-shadow:0 5px 15px rgba(0,0,0,.08);

}

</style>

</head>

<body>

<%@include file="bar.jsp" %>

<div class="content">

<div class="container-fluid">

<div class="d-flex justify-content-between align-items-center mb-4">

<h2 class="page-title">

Resale Store

</h2>

</div>

<div class="row">

<%

if(products!=null && !products.isEmpty()){

for(Product p:products){

%>

<div class="col-lg-4 col-md-6 mb-4">

<div class="card product-card">

<img src="<%=p.getImage()%>">

<div class="card-body">

<h4 class="product-title">

<%=p.getProductName()%>

</h4>

<p class="description">

<%=p.getDescription()%>

</p>

<hr>

<p class="mb-1">
    <span class="original">
       Rs. <%=p.getOriginalPrice()%>
    </span>

    &nbsp;&nbsp;

    <span class="selling">
       Rs. <%=p.getSellingPrice()%>
    </span>
</p>


<p>

<b>Purchase Date :</b>

<%=p.getPurchaseDate()%>

<a href="PaymentServlet?id=<%=p.getProductId()%>"
   class="btn buy-btn">

    Buy Now

</a>

</div>

</div>

</div>

<%

}

}

else{

%>

<div class="col-12">

<div class="empty">

<h3>

No Products Available

</h3>

<p>

Currently there are no products available for resale.

</p>

</div>

</div>

<%

}

%>

</div>

</div>

</div>

</body>
</html>