<!DOCTYPE html>
 <head> 
<meta charset="UTF-8">
</head>
<body>
<center>
 
<script>
 
 function statusChangeCallback(response) {
 console.log('statusChangeCallback');
 console.log(response);

 if (response.status === 'connected') {
 
 testAPI();
 } else if (response.status === 'not_authorized') {

 document.getElementById('status');
 } else {

 document.getElementById('status');
 }
 }
 
 function checkLoginState() {
 FB.getLoginStatus(function(response) {
 statusChangeCallback(response);
 });
 }
 window.fbAsyncInit = function() {
 FB.init({ 
 appId : '503734210943828',
 cookie : true, 
 xfbml : true, 
 version : 'v2.2' // use version 2.2
 });
 

 FB.getLoginStatus(function(response) {
 statusChangeCallback(response);
 });
 };

 (function(d, s, id) {
 var js, fjs = d.getElementsByTagName(s)[0];
 if (d.getElementById(id)) return;
 js = d.createElement(s); js.id = id;
 js.src = "//connect.facebook.net/en_US/sdk.js";
 fjs.parentNode.insertBefore(js, fjs);
 }(document, 'script', 'facebook-jssdk')); 


 function testAPI() { 
 console.log('Welcome! Fetching your information.... ');
 FB.api('/me?fields=name,email', function(response) {
 console.log('Successful login for: ' + response.name); 
 
 document.getElementById("status").innerHTML = '<p>'+ "Hey!! " + response.name+' <a href=fbloginController.jsp?user_name='+ response.name.replace(" ", "_") +'&user_email='+ response.email +'>Continue Here </a></p>'
 });
 } 
</script> 

<br><br>

<div id="status">
</div> 
 <script type="text/javascript">
</script>
</center>
</body>
</html>
