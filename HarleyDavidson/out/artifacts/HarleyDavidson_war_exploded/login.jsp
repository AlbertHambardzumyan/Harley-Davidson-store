<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <meta charset="UTF-8"/>

    <title>Login and Registration Form </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Login and Registration Form with HTML5 and CSS3"/>
    <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class"/>
    <link rel="stylesheet" type="text/css" href="css/demo.css"/>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
    <link rel="stylesheet" type="text/css" href="css/animate-custom.css"/>

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
                <li><a href="shopchart.jsp"><span class="glyphicon glyphicon-shopping-cart"></span> Shopping chart</a>
                </li>
                <li class="active">
                    <a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login/Register</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">


    <section>
        <div id="container_demo">

            <a class="hiddenanchor" id="toregister"></a>
            <a class="hiddenanchor" id="tologin"></a>
            <div id="wrapper">
                <div id="login" class="animate form">
                    <form action="/LoginServlet" autocomplete="on">
                        <h1>Log in</h1>
                        <p>
                            <label for="username" class="uname"> Your email</label>
                            <input id="username" name="username" required="required" type="text"
                                   placeholder="mymail@mail.com"/>
                        </p>
                        <p>
                            <label for="password" class="youpasswd"> Your password </label>
                            <input id="password" name="password" required="required" type="password"
                                   placeholder="eg. X8df!90EO"/>
                        </p>

                        <p class="login button">
                            <input type="submit" value="Login"/>
                        </p>
                        <p class="change_link" style="color:#12535D">
                            Not a member yet ?
                            <a href="#toregister" class="to_register" style="color:#CC3333">Join us</a>
                        </p>
                    </form>
                </div>

                <div id="register" class="animate form">
                    <form action="/RegisterServlet" autocomplete="on">
                        <h1> Sign up </h1>
                        <p>
                            <label for="usernamesignup" class="uname">Your username</label>
                            <input id="usernamesignup" name="usernamesignup" required="required" type="text"
                                   placeholder="mysuperusername690"/>
                        </p>
                        <p>
                            <label for="emailsignup" class="youmail"> Your email</label>
                            <input id="emailsignup" name="emailsignup" required="required" type="email"
                                   placeholder="mysupermail@mail.com"/>
                        </p>
                        <p>
                            <label for="passwordsignup" class="youpasswd">Your password </label>
                            <input id="passwordsignup" name="passwordsignup" required="required" type="password"
                                   placeholder="eg. X8df!90EO"/>
                        </p>
                        <p>
                            <label for="passwordsignup_confirm" class="youpasswd">Please confirm your password </label>
                            <input id="passwordsignup_confirm" name="passwordsignup_confirm" required="required"
                                   type="password" placeholder="eg. X8df!90EO"/>
                        </p>
                        <p class="signin button">
                            <input type="submit" value="Sign up"/>
                        </p>
                        <p class="change_link" style="color:#12535D">
                            Already a member ?
                            <a href="#tologin" class="to_register" style="color:#CC3333"> Go and log in </a>
                        </p>
                    </form>
                </div>

            </div>
        </div>
    </section>
</div>
</body>
</html>