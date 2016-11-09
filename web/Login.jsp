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
        <form action="Login" method="post">                       
            <label>User Name:</label><br>
            <input type="text" name="userName" required><br>                
            <label>Password:</label><br>
            <input type="text" name="password" required><br>                
            <input type="submit" value="Sign In">
        </form>
    <h3>New customers <a href="New_customer.jsp">Create and Account</a> or
        you can <a href="Password_reset.jsp">reset your password!</a></h3>
    </div>
</div>
  
    
<c:import url="/includes/footer.jsp" />
