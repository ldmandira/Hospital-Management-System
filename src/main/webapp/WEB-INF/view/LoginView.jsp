<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="com.project.dao.LoginDao"
         pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%!
    LoginDao infoLog = new LoginDao();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login | Page</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
        body {
            color: #fff;
            background: #050505;
            font-family: 'Roboto', sans-serif;
        }

        .form-control {
            height: 41px;
            border: primary;
        }

        .form-control, .btn {
            border-radius: 3px;
        }

        .signup-form {
            width: 390px;
            background: #545454;
            margin: 30px auto;
        }

        .signup-form form {
            color: #999;
            border-radius: 3px;
            margin-bottom: 15px;
            background: #fff;
            box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
            padding: 30px;
        }

        .signup-form h2 {
            color: #ff8d00;
            font-weight: bold;
            margin-top: 0;
        }

        .signup-form input {
            background: #616161;
            border: none
        }

        .signup-form hr {
            margin: 0 -30px 20px;
        }

        .signup-form input[type="checkbox"] {
            margin-top: 3px;
        }

        .signup-form .row div:first-child {
            padding-right: 10px;
        }

        .signup-form .row div:last-child {
            padding-left: 10px;
        }

        .signup-form .btn {
            font-size: 16px;
            font-weight: bold;
            border: none;
            min-width: 140px;
        }

        .signup-form .btn:hover, .signup-form .btn:focus {
            outline: none;
        }

        .signup-form a {
            color: #fff;
            text-decoration: underline;
        }

        .signup-form a:hover {
            text-decoration: none;
        }

        .signup-form form a {
            color: #00ffe6;
            text-decoration: none;
        }

        .signup-form form a:hover {
            text-decoration: underline;
        }

        .signup-form .hint-text {
            padding-bottom: 15px;
            text-align: center;
        }
        input[type=text] {

            border: none;
            background-color: #616161;
            color: white;
        }
    </style>
</head>
<body>

<div class="signup-form">
    <form action="dashboard.html" style="background: #292929;" method="post" autocomplete="off">
        <h2>Login Page</h2>
        <p>Please fill in this form to access your account!</p>
        <hr>

        <div class="form-group" style="color: red;">
            <%
                try {
                    String status = (String) request.getAttribute("status");
                    infoLog.logActivities("loginview: " + status);
                    if (status.equals("false")) {
                        out.print("No such account exists. Please insert valid credentials");
                    }
                } catch (Exception e) {
                    infoLog.logActivities("loginview: " + e);
                }
            %>
        </div>

        <div class="form-group">
            <label for="role">Role</label>
            <select class="form-control" style="    background: #616161;
    border: none;    color: white;" name="role" id="exampleSelect1">
                <option value="doctor">Doctor</option>
                <option value="receptionist">Receptionist</option>
                <option value="administrator">Administrator</option>
            </select>
        </div>

        <div class="form-group">
            <label for="username">Username</label>
            <input type="text" name="username" style="   color: white;  background-color:  #616161 !important;
    border: none" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Username"
                   required="required">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input style="    color: white;  background-color:  #616161 !important;
    border: none" type="password" name="password" class="form-control" id="exampleInputPassword1"
                   placeholder="Password"
                   required="required">
        </div>

        <button type="reset" class="btn btn-danger">Reset</button>
        <button type="submit" style="background: #ff801b;" class="btn btn-primary">Login</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


        <div style="color:white;">adding a row gap</div>

        <div style="text-align: right;" onmouseover="myFunction()" onmouseout="demo()"> how to get login</div>


        <strong>
            <div class="alert alert-dismissible text-primary">
                <button type="button" class="close" data-dismiss="alert"></button>
                <p id="demo"></p>
            </div>
        </strong>
    </form>

    <!-- javascript code -->
    <script>
        function myFunction() {
            document.getElementById("demo").innerHTML = "Note: Your Default USERNAME is ID and PASSWORD is ADHAR NUMBER";
        }

        function demo() {
            document.getElementById("demo").innerHTML = "";
        }
    </script>

</body>
</html>
