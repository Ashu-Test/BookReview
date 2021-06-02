<%@page import="com.project.bookreview.entities.User"%>
<%@page import="com.project.bookreview.helper.FactoryProvider"%>
<%@page import="com.project.bookreview.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fb login</title>
</head>
<body>
<% String user_name=(String)request.getParameter("user_name");
String user_email=(String)request.getParameter("user_email"); 
UserDao userDao=  new UserDao(FactoryProvider.getFactory());

  if(userDao.ifUserExists(user_email)){
        // System.out.println("User Already exists");
         out.println("User Already exists");
        
         // redirect to rating page
  }
  else{
         System.out.println("User Already not exists");   
         User user=new User(user_name,user_email,"default","default","default");
         
         int uid=userDao.saveUser(user);
         if(uid<0)
             System.out.println("Cant save the google signed in user");  //redirect to error page
         else{
              System.out.println("Saved the google signed in user userID in Db:-"+uid);
              
             out.println("Successfully logged in"+user_email);
              //redirect to rating page
         } 
         
  }
%>



 
</body>
</html>
