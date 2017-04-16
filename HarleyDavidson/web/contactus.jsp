<!DOCTYPE html>
<html lang="en">
<head>
    <title>About Us</title>
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
            top: 90px;
            left: 30px;
            font: bold 54px/75px Helvetica, Sans-Serif;
            color: white;
        }
        h2 {
            position: absolute;
            top: 250px;
            left: 40px;
            color: white;
            font: bold 20px/38px Helvetica, Sans-Serif;
        }
    </style>
</head>
<body style="background-color:black">

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <li><a href="index.jsp">Home</a></li>
                <li class="active"><a href="contactus.jsp">About us</a></li>
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

<div class="container-fluid" style="background-color:white; padding:0;  ">
    <div>
        <img src="img/aaaa.jpg" class="image" alt="main pic">

        <h1><span class="sp">ABOUT HARLEY-DAVIDSON</span></h1>
        <h2>
            <span class="spn">Fulfilling dreams of personal freedom is more than a phrase. <br>
                It is our purpose and our passion. We bring a commitment of <br>
                exceptional customer experiences to everything we do &#9866 from <br>
                the innovation of our products to the precision of our<br>
                manufacturing &#9866 culminating with our strong supplier<br>
                and dealer networks. We are Harley-Davidson.
            </span>
        </h2>
    </div>
</div>

</body>
</html>