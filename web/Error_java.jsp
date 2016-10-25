<%-- 
    Document   : Error_java
    Created on : Oct 24, 2016, 4:58:54 PM
    Author     : Nick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java Error</title>
    </head>
    <body>
        <h1>Java Error!</h1>
        <p>Sorry, Java have thrown an exception.</p>
        <p>Please press the back button to continue.</p>
        
        <h1>Details</h1>
        <p>Type: {pageContext.exception["class"]}</p>
        <p>Message: {pageContext.exception.message}</p>
    </body>
</html>
