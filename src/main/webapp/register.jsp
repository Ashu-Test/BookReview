<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Register</title>
   <%@include file="components/common_css_js.jsp" %> 
   
   
</head>
<body>
 
  
 
 <div class="container">
 <center><h1> Registration Form </h1>
 <h5 id="msg"></h5>
</center> 
<hr>
 <h4>Please fill this form to create an account.</h4>
 
 
 <form  action="RegisterServlets"   method = "post" id="register">
 
 <hr>
 <div class="form-group">
    <label for="name">User Name :</label>
    <input name = "name" required type="text" class="form-control" id="username" placeholder="User Name">
  </div>
  
 
  <div class="form-group">
    <label for="email">Email : </label>
    <input name="email" required
    	 type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email">
 
  </div>
  <div class="form-group">
    <label for="password">Password : </label>
    <input  name="password" required type="password" class="form-control" id="password" placeholder="Password"   minlength="8" maxlength="12"> 
  </div>
  
  <div class="form-group">
    <label for="address">Address :</label>
    <input  name="address" required type="text" class="form-control" id="address" placeholder="Enter Address">
  </div>
  
  <div class="form-group">
  <label for="gender">Gender : </label><br>
  <div class="form-check form-check-inline">
  <input class="form-check-input" required type="radio" name="inlineRadioOptions" id="inlineRadio1" value="Male" >
  <label class="form-check-label" for="inlineRadio1">Male</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" required type="radio" name="inlineRadioOptions" id="inlineRadio2" value="Female">
  <label class="form-check-label" for="inlineRadio2">Female</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" required type="radio" name="inlineRadioOptions" id="inlineRadio3" value="Other" >
  <label class="form-check-label" for="inlineRadio3">Other</label>
</div> 

</div>
  
  <center><button type="submit" class="btn btn-primary"   >Submit</button></center>
</form>





  </div> 
  
  <script> 
  
  
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSZorXvZcTkaix6Yvo6HppcZGetbYMGWSF1Bw8HfCJo="
  crossorigin = "anonymous"
  </script>
  
 <script>
  
 
 function Redirect() {
     window.location = "register.jsp";
  }
 

            $(document).ready(function (e) {
            	
            	 
            	
            	  
                $('#register').on('submit',function (event) {
                    event.preventDefault(); // Prevent the form from submitting via the browser
                    console.log("clicked on submit");
                    
                    
                    var d = $(this).serialize(); 
                    console.log(d);
                    
                    
                    //$(".lds-ellipsis").show();
                    //$(".form").hide();
                    
                    
                    $.ajax({
                        url: "RegisterServlets",
                        type: 'POST',
                        data: d,
                        
                                success: function (data, textStatus, jqXHR) {
                                    console.log(data);
                                    console.log("sucess..")
                                   // $(".lds-ellipsis").hide();
                                    //$(".form").show();
                                      
                    				
                                     if (data.trim() == 'success')
                                    {
                                    	 swal({  
                                    		  title: "Successfully",  
                                    		  text: "Registered",  
                                    		  icon: "success",  
                                    		  button: "Done!",  
                                    		});
                                    	 setTimeout('Redirect()', 4000);
                                    	 
                                    	 
                                    } else
                                    {
                                        swal("Error!!", "Something went wrong try again...", "error");
                                    } 
                                },
                        error: function (jqXHR, textStatus, errorThrown) {
                           console.log(data);
                           console.log("error...");
                          // $(".lds-ellipsis").hide();
                           //$(".form").show();
                           
                            swal("Error!!", "Something went wrong try again...", "error");  
                        }
                    });
                });
            })
            
        </script>
 
 
 
       
                          
</body>
</html>
