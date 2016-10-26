<%-- 
    Document   : Success
    Created on : Oct 26, 2016, 7:39:19 PM
    Author     : Nick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Titan Online Banking - Success</title>
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
        <h1>Congratulations!</h1>
        <h2>Your account has been successfully created.</h2>
        <label> First Name:</label>
        <p>${firstName}</p>
        <label> Last Name:</label>
        <p>${lastName}</p>
        <label> Phone:</label>
        <p>${phone}</p>
        <label> Street Address:</label>
        <p>${address}</p>
        <label> City:</label>
        <p>${city}</p>
        <label> State:</label>
        <p>${state}</p>
        <label> ZIP Code:</label>
        <p>${zipCode}</p>
        <label> Email Address:</label>
        <p>${email}</p>
        
    </body>
</html>

