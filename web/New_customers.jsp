<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html" />
    <body>
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
            <div>                
                <h3><i>${message}</i></h3>
                <form action="New_customer" method="post">
                    <input type="hidden" name="action" value="New_customer">
                    <br>
                    <label>First Name:</label>
                    <br>
                    <input type="text" name="FirstName" value="${user.firstName}">
                    <br>
                    <label>Last Name:</label>
                    <br>
                    <input type="text" name="LastName" value="${user.lastName}">
                    <br>
                    <label>Phone:</label>
                    <br>
                    <input type="text" name="Phone" value="${user.phone}">
                    <br>
                    <label>Street Address:</label>
                    <br>
                    <input type="text" name="Address" value="${user.address}">
                    <br>
                    <label>City:</label>
                    <br>
                    <input type="text" name="City" value="${user.city}">
                    <br>
                    <label>State:</label>
                    <br>
                    <input type="text" name="State" value="${user.state}">
                    <br>
                    <label>ZIP Code:</label>
                    <br>
                    <input type="text" name="ZipCode" value="${user.zip}">
                    <br>
                    <label>Email:</label>
                    <br>
                    <input type="email" name="Email" value="${user.email}">
                    <br>
                    <input type="submit" value="Sign Up">
                </form>
            </div>
        </div>
<c:import url="/includes/footer.jsp" />


