<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Checkerboard</title>
<link rel = "stylesheet" type = "text/css" href = "style.css">
</head>
<body>
    <!-- getting the value for the name parameter -->
    <% String req1 = request.getParameter("width"); %> 
    <% String req2 = request.getParameter("height"); %> 
    <% int width = Integer.parseInt(req1); %>
    <% int height = Integer.parseInt(req2); %>
    
    
    <!-- displaying the value -->
    <h1 class = "cool">Checkerboard: <%= req1 %>w X <%= req2 %>h</h1>
    
    <div class = "boxes">
    <% for (int i = 0; i<height; i++) {%>
	<div>
	<% for (int j = 0; j< width; j++) {%>
		<% if ((i+j) % 2 == 0) {%>
			<div class = "bluebox"></div>
		
		<% } %>
		<% if ((i+j) % 2 == 1) { %>
			<div class = "purplebox"></div>
		<% } %>
	<% } %>
	</div>
    <% } %>
    </div>
</body>
</html>