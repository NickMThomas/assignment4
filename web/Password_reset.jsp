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
        
        <h1>You have reached the Password Reset page.</h1>
        <c:if test="${user != null}">
            <p><i>Currently your password is " ${user.password} ".</i></p>
            <p>You can change the your password by entering a new value in the field
           below.</p>
        </c:if>
        <c:if test="${user == null}">
        <p>You do not have a current user account.  Please hit the back arrow and choose "Create an Account".</p>
        </c:if>
        
        
        
        <form action="Password_rest" method="post">
            <input type="hidden" name="action" value="Password_reset">
            <label>Password:</label><br>
            <input type="text" name="password" required><br>                
            <input type="submit" value="Change Password">
        </form>
        
    </div>
</div>
    
<c:import url="/includes/footer.jsp" />
