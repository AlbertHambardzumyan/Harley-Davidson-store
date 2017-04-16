<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>Catalog</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <style>
        .jumbotron {
            height: 90px;
            margin-top: 10px;
            margin-bottom: 40px;
            background-color: white;
        }
        .container {
            background-color: #464646;
        }
        .vertical-center {
            display: flex;
            align-items: center;
        }
        .navbar {
            color: #12535D;
            background-color: #CC3333;
        }
        .btn-white {
            background-color: #f5f5f5;
            color: lightgray;
        }
    </style>
    <script>
        $(document).ready(function () {
            $.get('/ProductServlet',
                function () {
                    $('#productList').load('/includes/catalogList.jsp');
                })
                .fail(function () {
                    alert("Product List request Failed.");
                });
        });
    </script>
</head>
<body style="background-color: #4d4d4d">

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="contactus.jsp">About us</a></li>
                <li class="active"><a href="catalog.jsp">Catalog</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="shopchart.jsp"><span class="glyphicon glyphicon-shopping-cart"></span> Shopping chart</a>
                </li>
                <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login/Register</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <div class="jumbotron vertical-center">
        <h1 style="text-align: center; color:#12535D; font-family: 'BebasNeueRegular', 'Arial Narrow', Arial, sans-serif;">
            Ride Your Dream</h1>
    </div>

    <div id="productList" class="col-md-12 col-md-offset-0" style="margin-top: 20px">
        <jsp:include page="includes/catalogList.jsp"/>
    </div>

</div>

</body>
</html>