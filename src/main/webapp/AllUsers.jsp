<%@page import="com.project.bookreview.entities.User"%>
<%@page import="java.util.List"%>
<%@page import="com.project.bookreview.helper.FactoryProvider"%>
<%@page import="com.project.bookreview.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Users</title>
<%@include file="components/common_css_js.jsp" %> 
</head>
<body>

<br><center><h1>All Registered Users</h1></center><br><br>

<% 
 UserDao udao=new UserDao(FactoryProvider.getFactory());
List<User> userlist= udao.getAllUsers();
%>
<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">User Name</th>
      <th scope="col">User Email</th>
      
     
     
    </tr>
  </thead>
  <tbody>
   <% int i=0; for(User user: userlist){   
	  
	 
	   
	   %>
    <tr>
      <th scope="row"><%=++i%></th>
      <td><%= user.getUserName() %></td>
      <td><%= user.getUserEmail() %></td>
     
     
      
    </tr>
      <% } %>
  </tbody>
</table>


</body>
</html>
