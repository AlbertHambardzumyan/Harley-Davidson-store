<!DOCTYPE html>
<html lang="en">
<head>
    <title>Home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <style>
        body {
            overflow-x: hidden;
            overflow-y: hidden;
        }
        .navbar {
            color: #12535D;
            background-color: #CC3333;
            margin-bottom: 0;
        }
        .image {
            position: relative;
            width: 100%; /* for IE 6 */
            height: 100%;
        }
        h1 {
            position: absolute;
            top: 190px;
            left: 30px;
            width: 100%;
        }
        h1 span.sp {
            color: white;
            font: bold 34px/65px Helvetica, Sans-Serif;
            letter-spacing: -1px;
            background: rgb(0, 0, 0); /* fallback color */
            background: rgba(0, 0, 0, 0.7);
            padding: 10px;
            display: inline-block;
        }
        h2 {
            position: absolute;
            top: 280px;
            left: 40px;
            width: 100%;
        }
        h2 span.spn {
            color: white;
            font: bold 20px/38px Helvetica, Sans-Serif;
            letter-spacing: -1px;
            background: rgb(0, 0, 0); /* fallback color */
            background: rgba(0, 0, 0, 0.7);
            padding: 10px;
            display: inline-block;
        }
    </style>
</head>
<body style="background-color:black">

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <li class="active"><a href="index.jsp">Home</a></li>
                <li><a href="contactus.jsp">About us</a></li>
                <li><a href="catalog.jsp">Catalog</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="shopchart.jsp"><span class="glyphicon glyphicon-shopping-cart"></span> Shopping chart</a>
                </li>
                <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login/Register</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container-fluid" style="background-color:white; padding:0">
    <div>
        <img src="img/aaaa.jpg" class="image" alt="main pic">

        <a href="#" style=""><h1><span class="sp">Harley-Davidson</span></h1><h2><span class="spn">Find your dream</span>
        </h2></a>
    </div>
</div>

</body>
</html>