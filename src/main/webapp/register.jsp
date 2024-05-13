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
<title>Registro de usuario</title>
</head>
<body style='background-color:#FFF6FA;'>
    <%@include file="/includes/navbar.jsp"%>

    <div class="container">
        <div class="card w-50 mx-auto my-5">
            <div class="card-header text-center bg-danger text-white">Registro de usuario</div>
            <div class="card-body" style='background-color:#FFDCDC;'>
                <form action="user-register" method="post">
                    <div class="form-group">
                        <label>Name</label> 
                        <input type="text" name="name" class="form-control" placeholder="Name" required style='background-color:#FFF6FA;'>
                    </div>
                    <div class="form-group">
                        <label>Last Name</label> 
                        <input type="text" name="lastname" class="form-control" placeholder="Last Name" required style='background-color:#FFF6FA;'>
                    </div>
                    <div class="form-group">
                        <label>Email</label> 
                        <input type="email" name="email" class="form-control" placeholder="Email" required style='background-color:#FFF6FA;'>
                    </div>
                    <div class="form-group">
                        <label>Password</label> 
                        <input type="password" name="password" class="form-control" placeholder="password" required style='background-color:#FFF6FA;'>
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-danger">Registrarse</button>
                    </div>
                </form>
                <p class="text-center mt-3">Do you already have an account? <a href="login.jsp">Loggin</a></p>
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
