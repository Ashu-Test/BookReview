<%@page import="com.project.bookreview.entities.Rating"%>
<%@page import="com.project.bookreview.entities.Review"%>
<%@page import="java.util.List"%>
<%@page import="com.project.bookreview.helper.FactoryProvider"%>
<%@page import="com.project.bookreview.dao.ReviewDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>All Reviews </title>
<%@include file="components/common_css_js.jsp" %> 

</head>
<body>

<br><center><h1>All Books</h1></center><br><br>

<% 
ReviewDao rdao=new ReviewDao(FactoryProvider.getFactory());//hnn
List<Review> reviewlist= rdao.getAllReviews();

%>

<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Book </th>
      <th scope="col">Author </th>
      <th scope="col">Publisher </th>
      <th scope="col">Average Rating</th>
     
    </tr>
  </thead>
  <tbody>
   <% int i=0; for(Review rev:reviewlist){   
	  
	    
       float sum=0;
       float avg=0;
       List<Rating> ratingList=rdao.getRatingOnReviewById(rev.getReviewId());
             for(Rating rating:ratingList){ 
              sum=sum+rating.getUserRating();
             }
        if (ratingList.size() != 0)     
             avg=sum/ratingList.size() ;
    
	  
	   %>
    <tr>
      <th scope="row"><%=++i%></th>
      <td><%= rev.getBookName() %></td>
      <td><%= rev.getAuthorName() %></td>
      <td><%= rev.getPublisher().getPublisherFname()+" "+rev.getPublisher().getPublisherLname()%></td>
       <td><%= avg %></td>
      
    </tr>
      <% } %>
  </tbody>
</table>

</body>
</html>
