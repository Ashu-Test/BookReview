
<%@page import="com.project.bookreview.dao.ReviewDao"%>
<%@page import="com.project.bookreview.dao.ReviewDao"%>
<%@page import="java.util.List"%>
<%@page import="com.project.bookreview.entities.Review"%>
<%@page import="com.project.bookreview.helper.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>  
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Home</title>
<!--        <script src="js/script.js" type="text/javascript"></script>-->
        <link rel="SHORTCUT ICON" href="favicon.ico" type="image/x-icon" />
        <!--<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>-->

        
        <link href="https://fonts.googleapis.com/css?family=Kanit:200,400" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">


  <%@include file="components/common_css_js.jsp" %> 

<link href="css/homeCSS.css" rel="stylesheet" type="text/css"/>

            
    <script src="https://kit.fontawesome.com/e057dff8c2.js" crossorigin="anonymous"></script>
      
    </head>
    <body class="hero-anime" style="background-color: #fcfcfc!important;">
    
        
        
        <div style="margin-top:130px!important;" class="row m-5">
          
            <% 
               
         List<Review> list=new ReviewDao(FactoryProvider.getFactory()).getAllReviews();



            %>   
              
          <div id="cats" style="margin-left:0px!important;" class="col-md-2">
            <!--<div style="margin-left:0px!important;" class="col-md-2">-->


                <div class="list-group">

                    <a href="Home.jsp?category=all" class="list-group-item list-group-item-action active"> All Products </a>



               


              
                </div> 

            <!--</div>-->
            </div>
   
                <!--show products-->
                <div class="col-md-10">

                <div class="row">
                    
                <%  for (Review revs : list) {     %>        
             
          
               <div class="col-md-3 m-0 p-0 float-left">
  
                   <!--style="margin-top: 100px!important;"-->
<div  class='CCcontainer'>
      
      <!--style="margin: 20px!important;"-->
    <div  class='CCcard m-2'>
      <div class='card-content'>
    
        <div class='img'>
   <img  class=" m-2 p-2" style="max-height: 320px; max-width: 95%;width: auto;" src="img/<%= revs.getBookImage() %>" alt="Card image cap">

          <!--<img src='https://tctechcrunch2011.files.wordpress.com/2014/11/solo2-wireless-red-quarter.jpg?w=738'>-->
        </div>
      </div>
                 
      <div class='card-description'>
          <div style="color: #212121" class='title'>
         <%=revs.getBookName() %> by <%=revs.getAuthorName() %>
        </div>
     
      </div>
        
  
      <div class= 'card-myfooter'>

     
          <div><p><%=  revs.getBookIntro()     %>
                  <a  style="text-decoration:none;color:black;" id="pLink" href="Review.jsp?rid=<%=revs.getReviewId() %>">Check this..</a></p></div>
                  

          
          
          
      </div>
          
          
    </div>
      
      




  </div>

     
                  </div>           
                       <%
                                }
                                
                           if(list.size()==0){
                                     out.println("<h1>No items </h1>");
                                 }
                            %>  
                            
                            
                            
        </div>    
        </div>
        </div>
        
        
       
              
                            
        
        
        
        
        
           <div id="About" class="container-fluid" style=" position: relative;margin: 0px!important;padding:0px!important">
             <%--<%@include file="footer.jsp" %>--%> 
            
        </div>
        
   
    </body>
</html>
