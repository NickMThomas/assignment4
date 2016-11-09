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
        
        <h1>You have reached Account Activity.</h1>
        
        <c:if test="${user != null}">
            <p><i>Hello, ${user.firstName}&nbsp;${user.lastName}</i></p>
        </c:if>
        <c:if test="${user == null}">
            <p><i>Not Logged In.</i></p>
        </c:if>
    </div>
</div>

    
<c:import url="/includes/footer.jsp" />
