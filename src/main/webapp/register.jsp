<%@page import="val.shop.model.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
    response.sendRedirect("index.jsp");
}
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
if (cart_list != null) {
    request.setAttribute("cart_list", cart_list);
}
%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/includes/head.jsp"%>
<title>New Form</title>
</head>
<body style='background-color:#f8f9fa;'>
    <%@include file="/includes/navbar.jsp"%>

    <div class="container">
        <div class="card w-50 mx-auto my-5">
            <div class="card-header text-center" style="background-color:#4CAF50; color: white;">Register</div>
            <div class="card-body" style='background-color:#e8f5e9;'>
                <form action="new-form-action" method="post">
                    <div class="form-group">
                        <label style="color:#4CAF50;">Full Name</label>
                        <input type="text" name="full-name" class="form-control" placeholder="Enter your full name" style='background-color:#ffffff; border-color:#4CAF50;'>
                    </div>
                    <div class="form-group">
                        <label style="color:#4CAF50;">Email Address</label>
                        <input type="email" name="email" class="form-control" placeholder="Enter your email address" style='background-color:#ffffff; border-color:#4CAF50;'>
                    </div>
                    <div class="form-group">
                        <label style="color:#4CAF50;">Password</label>
                        <input type="password" name="password" class="form-control" placeholder="Enter your password" style='background-color:#ffffff; border-color:#4CAF50;'>
                    </div>
                    <div class="form-group">
                        <label style="color:#4CAF50;">Phone Number</label>
                        <input type="text" name="phone-number" class="form-control" placeholder="Enter your phone number" style='background-color:#ffffff; border-color:#4CAF50;'>
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn" style="background-color:#4CAF50; color: white;">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <br>
    <br>
    <br>
    <%@include file="/includes/footer.jsp"%>
    <%@include file="/includes/html/foot.html"%>
</body>
</html>

