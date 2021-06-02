<%-- 
    Document   : Login
    Created on : 28 May, 2021, 3:15:14 PM
    Author     : ashut
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <meta name="google-signin-client_id" content="914526410843-na9a6mfu5f4nakmakc4ag4hcrio7u1ad.apps.googleusercontent.com">

        <title>Login Page</title>
        <script src="https://apis.google.com/js/platform.js" async defer></script>

  <%@include file="components/common_css_js.jsp" %>   
    <link href="css/loginCSS.css" rel="stylesheet" type="text/css"/>
        <script src="js/loginJS.js" type="text/javascript"></script>
    </head>
    <body>
      <div id="container">
  <div id="left">
    <h1 id="welcome">Welcome</h1>
    <p id="lorem">
      Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br>
      Vivamus sodales eros non arcu pellentesque convallis.<br>
      Nunc dignissim lectus in malesuada porta.<br>
      Proin ac erat sed urna congue suscipit.<br>
      Morbi aliquet eget nisl id ornare.
    </p>
  </div>
  <div id="right">
    <h1 id="login">LogIn</h1><br>
    
    <form action="LoginServlet">
    <input  name="email" type="email" id="email" class="client-info">
    <label for="email">Email</label>
    <input name="password" type="password" id="password" class="client-info">
    <label for="password">Password</label>
    <input type="submit" id="submit" class="client-info" value="Submit">
  
    </form>
      
      <%@include file="fblogin.jsp" %> 
    
    <div class ="social">
    <div id = "left">
    
    <fb:login-button 
  scope="public_profile,email"
  onlogin="checkLoginState();">
</fb:login-button>
</div>
 <div id = "right">

    <button class="g-signin2"  data-onsuccess="onSignIn"></button>
    </div>
    
    </div>
      
      
      <!--<button class="social" id="facebook">connect with facebook</button>
    <button class="social g-signin2"  data-onsuccess="onSignIn"></button>-->
     <!--<h1><div class="g-signin2" data-onsuccess="onSignIn"></div>-->
            
            <!--<a href="#" onclick="signOut();">Sign out</a>-->
            
     </div>
</div>

    </body>
</html>
