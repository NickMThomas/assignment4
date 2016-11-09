<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html" />
<div id="wrapper">
    <div id="mainHeader">
    </div>
    <div class="center">
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="Login.jsp">Login</a></li>
            <li><a href="Account_activity.jsp">Account Activity</a></li>
            <li><a href="Transaction.jsp">Transactions</a></li>
        </ul>
    </div>
<h1>Congratulations!</h1>
<h2>Your account has been successfully created.</h2>
<label> First Name:</label>
<p>${user.firstName}</p>
<label> Last Name:</label>
<p>${user.lastName}</p>
<label> Phone:</label>
<p>${user.phone}</p>
<label> Street Address:</label>
<p>${user.address}</p>
<label> City:</label>
<p>${user.city}</p>
<label> State:</label>
<p>${user.state}</p>
<label> ZIP Code:</label>
<p>${user.zipCode}</p>
<label> Email Address:</label>
<p>${user.email}</p>

<label> User Name:</label>
<p>${user.userName}</p>
<label> Temporary Password:</label>
<p>${user.password}</p>
    
<c:import url="/includes/footer.jsp" />

