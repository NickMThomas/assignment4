<%-- 
    Document   : New_customer
    Created on : Oct 26, 2016, 7:01:57 AM
    Author     : Nick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <html>
    <head>
        <title>Titan Online Banking - New Customer</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="styles.css">
    </head>
    <body>
        <div id="wrapper">
            <div id="mainHeader">
            </div>
            <div class="center">
                <ul>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="Login.html">Login</a></li>
                    <li><a href="Account_activity.html">Account Activity</a></li>
                    <li><a href="Transaction.html">Transactions</a></li>
                </ul>
            </div>
            <div>                
                <h3><i>${message}</i></h3>
                <form action="New_customer" method="post">
                    <input type="hidden" name="action" value="New_customer">
                    <br>
                    <label>First Name:</label>
                    <br>
                    <input type="text" name="FirstName" >
                    <br>
                    <label>Last Name:</label>
                    <br>
                    <input type="text" name="LastName" >
                    <br>
                    <label>Phone:</label>
                    <br>
                    <input type="text" name="Phone" >
                    <br>
                    <label>Street Address:</label>
                    <br>
                    <input type="text" name="Address" >
                    <br>
                    <label>City:</label>
                    <br>
                    <input type="text" name="City" >
                    <br>
                    <label>State:</label>
                    <br>
                    <input type="text" name="State" >
                    <br>
                    <label>ZIP Code:</label>
                    <br>
                    <input type="text" name="ZipCode" >
                    <br>
                    <label>Email:</label>
                    <br>
                    <input type="email" name="Email" >
                    <br>
                    <input type="submit" value="Sign Up">
                </form>
            </div>
        </div>
    </body>
</html>


