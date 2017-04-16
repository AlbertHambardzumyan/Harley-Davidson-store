<!DOCTYPE html>
<html lang="en">
<head>
    <title>Cart</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <style>
        .navbar {
            color: #12535D;
            background-color: #CC3333;
        }
    </style>
</head>
<body style="background-color: #4d4d4d">

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="contactus.jsp">About us</a></li>
                <li><a href="catalog.jsp">Catalog</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="shopchart.jsp">
                    <span class="glyphicon glyphicon-shopping-cart"></span> Shopping chart</a>
                </li>
                <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login/Register</a></li>
            </ul>
        </div>
    </div>
</nav>


<div class="container" style="background-color:white;  border-radius:10px">
    <div class="row"
         style="border-radius:10px; background-color:#12535D; margin: 20px 30px 10px;">
        <div class="col-sm-12">
            <h1 style="color:white">Welcome to shopping chart</h1>
        </div>
    </div>
    <div class="row" style="margin-top: 20px">
        <div class="col-sm-3"></div>
        <div class="col-sm-3"><h4 style="font-size:20px; color: #CC3333">You purchased:</h4></div>
        <div class="col-sm-3">

            <!-- rows in the column-->
            <div class="row" style="margin-top: 20px">
                <div class="col-sm-3"></div>
                <%@ taglib prefix="c"
                           uri="http://java.sun.com/jsp/jstl/core" %>
                <c:forEach var="item" items="${cartBox.cartItems}">
                <div class="col-sm-12 thumbnail">
                    <p>Name: ${item.productName}</p>
                    <p>Price: $${item.productUnitCost}</p>
                    <p>Unit: ${item.productNum}</p></div>
            </div>
            <div class="row" style="margin-top: 20px">
                <div class="col-sm-3"></div>
                </c:forEach>

            </div>
            <div class="col-sm-3"></div>
        </div>
        <div class="row" style="margin-top: 40px; margin-bottom: 80px; margin-left: 40px">
            <div class="col-sm-3"></div>
            <div class="col-sm-6"><h3 style="font-size:20px; color: #CC3333"> Your total is: <b><span>$</span>${total}
            </b></h3>
                <a href="#" style="font-size: 20px; text-decoration: underline; color:#12535D">Go to checkout</a>
            </div>
            <div class="col-sm-3"></div>
        </div>
    </div>
</div>
</body>