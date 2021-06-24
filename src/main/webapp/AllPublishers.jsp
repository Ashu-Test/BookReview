<%@page import="com.project.bookreview.entities.Publisher"%>
<%@page import="java.util.List"%>
<%@page import="com.project.bookreview.helper.*"%>
<%@page import="com.project.bookreview.dao.PublisherDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Publishers</title>

<%@include file="components/common_css_js.jsp" %> 
</head>
<body>

<br><center><h1>All Registered Publishers</h1></center><br><br>

<% 
PublisherDao pdao=new PublisherDao(FactoryProvider.getFactory());
List<Publisher> publisherlist= pdao.getAllPublishers();
%>
<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Publisher Name</th>
      <th scope="col">Publisher Email</th>
      <th scope="col">No.Of Books Published </th>
      <th scope="col">Contact No.</th>
     
    </tr>
  </thead>
  <tbody>
   <% int i=0; for(Publisher pub:publisherlist){   
	  
	 
	   
	   %>
    <tr>
      <th scope="row"><%=++i%></th>
      <td><%= pub.getPublisherFname()+" "+ pub.getPublisherLname() %></td>
      <td><%= pub.getPublisherEmail() %></td>
      <td><%= userPublisherReviewCount.getPublisherReviewCount(pub.getPublisherId()) %></td>
      <td><%= pub.getPublisherContact() %></td>
      
    </tr>
      <% } %>
  </tbody>
</table>


</body>
</html>
