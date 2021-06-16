
<%@page import="java.util.List"%>
<%@page import="com.learn.ecommerce.dao.CategoryDao"%>
<%@page import="com.learn.ecommerce.helper.FactoryProvider"%>
<%@page import="com.learn.ecommerce.entities.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.learn.ecommerce.entities.User"%>
<%
    User user11 = (User) session.getAttribute("current-user");


%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>



        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

        <%--<%@include file="components/common_css_js.jsp" %>--%>
<!--        
bootstrap css
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

jquery
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>

bootstrap js
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
sweetlaert-  2.0->
 <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9/dist/sweetalert2.all.min.js"></script>
 ontaweosme-->


        
        
        
        
        <link href="css/nav-Back.css" rel="stylesheet" type="text/css"/>
        <script src="js/nav-Back.js" type="text/javascript"></script>


    </head>  



    <body class="hero-anime" >	










        <div class="navigation-wrap bg-light start-header start-style">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <nav class="navbar navbar-expand-md navbar-light">
          
                            <!--https://www.vocal4local.life/static/images/logo.png-->
                            <!--<img src="img/vvv.png" alt=""/>-->
                            <a style="background-color: transparent!important;" class="navbar-brand" href="Home.jsp" target="_blank"><img src="img/vvv.png"   alt=""></a>	

                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>

                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul class="navbar-nav ml-auto py-4 py-md-0">
                                    <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4 active">
                                        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Home</a>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="#About">About</a>
                                            <a class="dropdown-item" href="#Contact">Contact</a>
                                            <a class="dropdown-item" target="_blank" href="register.jsp">Join us</a>
                                        </div>
                                    </li>

                                    <%
                                        CategoryDao cdao2 = new CategoryDao(FactoryProvider.getFactory());
                                        List<Category> clist2 = cdao2.getCategories();
                                    %>

                                    <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
                                        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Categories</a>
                                        <div class="dropdown-menu">

                                            <a href="Home.jsp?category=all" class="dropdown-item"> All Products </a>


                                            <%                  for (Category category : clist2) {

                                            %> 

                                            <a href="Home.jsp?category=<%=category.getCategoryId()%>" class="dropdown-item"><%=category.getCategoryTitle()%></a>


                                            <%
                                                    // out.println(category.getCategoryTitle()+"<br>");
                                                }


                                            %> 


                                        </div>

                                    </li>
                                    
                                     <%        if (user11 == null) {
                                  
                         %>
                    
                         
                                 <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
                                        <a class="nav-link" href="login.jsp">Login</a>
                                    </li>
                                    <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
                                        <a class="nav-link" href="register.jsp">Register</a>
                                    </li>

                            <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
                                        <!--<a class="nav-link" href="#">Journal</a>-->
                                        <a class="nav-link" href="#!"  data-toggle="modal" data-target="#heart" ><i style="font-size: 20px;" class="far fa-heart"></i><span class="ml-1 heart-items" ></span> </a>

                                    </li>
                            <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
                                        <!--<a class="nav-link" href="#">Journal</a>-->
                                        <a class="nav-link" href="#!"  data-toggle="modal" data-target="#cart" ><i style="font-size: 20px;" class="fa fa-cart-plus"></i><span class="ml-1 cart-items" >( 0 )</span> </a>

                                    </li>
                         
                         <%
                           } else {
                    
                     %>
                       <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
                                        <!--<a class="nav-link" href="#">Journal</a>-->
                                        <a class="nav-link" href="#!"  data-toggle="modal" data-target="#heart" ><i style="font-size: 20px;" class="far fa-heart"></i><span class="ml-1 heart-items" ></span> </a>

                                    </li>
                       <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
                                        <!--<a class="nav-link" href="#">Journal</a>-->
                                        <a class="nav-link" href="#!"  data-toggle="modal" data-target="#cart" ><i style="font-size: 20px;" class="fa fa-cart-plus"></i><span class="ml-1 cart-items" >( 0 )</span> </a>

                                    </li>
                         
                         
                         <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
                                        <a class="nav-link"  href="<%=user11.getUserType().equals("admin") ? "admin.jsp" : "#!" %>"><%=user11.getUserName()%></a>
                                    </li>
                                      <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
                                        <a class="nav-link" href="MyOrders.jsp?uid=<%= user11.getUserId() %>">My Orders</a>
                                    </li>
                                    <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
                                        <a class="nav-link" href="LogoutServlet">Logout</a>
                                    </li>

                         
                         <%
                    

                          }
                %>




<!--                                    <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
                                        <a class="nav-link" href="login.jsp">Login</a>
                                    </li>
                                    <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
                                        <a class="nav-link" href="register.jsp">Register</a>
                                    </li>-->

                                 

                                </ul>
                            </div>

                        </nav>		
                    </div>
                </div>
            </div>
        </div>

        <!--        
                <div class="section full-height">
                    <div class="absolute-center">
                        <div class="section">
        
        
                               
                            
                            
                            
                            
                            
                            
                            
                                                        <div class="container">
                                                                    <div class="row">
                                                                            <div class="col-12">
                                                            <h1><span>B</span><span>o</span><span>o</span><span>t</span><span>s</span><span>t</span><span>r</span><span>a</span><span>p</span> <span>4</span><br>
                                                            <span>m</span><span>e</span><span>n</span><span>u</span></h1>
                                                            <p>scroll for nav animation</p>	
                                                                            </div>	
                                                                    </div>		
                                                            </div>		 
        
        
                        </div>
        
        
                                                <div class="section mt-5">
                                                        <div class="container">
                                                                <div class="row">
                                                                        <div class="col-12">
                                                                                <div id="switch">
                                                                                        <div id="circle"></div>
                                                                                </div>
                                                                        </div>	
                                                                </div>		
                                                        </div>			
                                                </div> 
        
        
                    </div>
                </div>
                <div class="my-5 py-5">
                </div>-->



        <!-- 	<a href="https://front.codes/" class="logo" target="_blank">
                        <img src="https://assets.codepen.io/1462889/fcy.png" alt="">
                </a> -->

    </body>












