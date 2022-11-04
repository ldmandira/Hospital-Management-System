<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Hopewell Hospital | Dashboard</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <style>
        body { font: 400 1em/1.5 "Neuton"; background: #090d00; color: rgba(255,255,255,.25); text-align: center; margin: 0 }

    p {
        text-transform: uppercase;
        letter-spacing: .5em;
        display: inline-block;
        border: 4px double rgba(255, 255, 255, .25);
        border-width: 4px 0;
        padding: 1.5em 0em;
        position: absolute;
        top: 18%;
        left: 50%;
        width: 40em;
        margin: 0 0 0 -20em;
    }

    span {

        font: 700 4em/1 "Oswald", sans-serif;
        letter-spacing: 0;
        padding: .25em 0 .325em;
        display: block;
        margin: 0 auto;
        text-shadow: 0 0 80px rgba(255,255,255,.5);

        /* Clip Background Image */

        background: url(https://i.ibb.co/RDTnNrT/animated-text-fill.png) repeat-y;
        -webkit-background-clip: text;
        background-clip: text;

        /* Animate Background Image */

        -webkit-text-fill-color: transparent;
        -webkit-animation: aitf 80s linear infinite;

        /* Activate hardware acceleration for smoother animations */

        -webkit-transform: translate3d(0,0,0);
        -webkit-backface-visibility: hidden;


    }

    /* Animate Background Image */

    @-webkit-keyframes aitf {
        0% { background-position: 0% 50%; }
        100% { background-position: 100% 50%; }
    }</style>
</head>
<body >


<%--<br/><br/><br/><br/><br/>--%>
<%--<span class="display-1">--%>
<%--    <span style="color:red;">R</span>--%>
<%--    <span style="color:red;">E</span>--%>
<%--    <span style="color:red;">D</span>--%>
<%--    <span style="color:grey;">S</span>--%>
<%--    <span style="color:grey;">T</span>--%>
<%--    <span style="color:grey;">A</span>--%>
<%--    <span style="color:grey;">R</span>--%>
<%--</span>--%>
<%--<h1> HOSPITAL MANAGEMENT SYSTEM</h1>--%>
<%--<br/><br/><br/>--%>
<p>
    Better Care and Better Understanding.
    <span>
   Hopewell Hospital
  </span>
    &mdash; HOSPITAL MANAGEMENT SYSTEM &mdash;
</p>
<br>

<form action="login.html" method="post">
    <button type="submit" class="btn btn-primary" style="    background: #d06600;
    border: none;">&nbsp;&nbsp; Login into System &nbsp;&nbsp;</button>
</form>

<script>
    var xhr = new XMLHttpRequest();
    xhr.open("POST", "login.html", true);
    xhr.setRequestHeader('Content-Type', 'application/json');
    xhr.send(JSON.stringify({
        value: 'value'
    }));
    document.onload(sd => {
        xhr.onload = function () {
            console.log("HELLO")
            console.log(this.responseText);
            var data = JSON.parse(this.responseText);
            console.log(sd);
        }
    });

    function redirectNew() {
    }

</script>
</body>
</html>
