<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Error Page</title>
</head>
<body>
<font color="red">Error: <%=request.getAttribute("message") %></font><br>
<% if(response.getStatus() == 500){ %>
<font color="red">Error: <%=response.toString() %></font><br>

<%-- include login page --%>
<%@ include file="index.jsp"%>
<%}else {%>
Hi There, error code is <%=response.getStatus() %><br>
Please go to <a href="index.jsp">home page</a>
<%} %>
<%@include file="/includes/footer.jsp"%>
           <%@include file="/includes/html/foot.html"%>
</body>
</html>