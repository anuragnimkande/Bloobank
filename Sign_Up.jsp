
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

input[type=text], input[type=password] ,input[type=email],input[type=number]{
  width: 30%;
  height:25px;
  padding: 12px 10px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid rgb(255, 0, 0);
  box-sizing: border-box;
  margin-right: 20%;
}

label{
	margin-left: 24%;
	width: 100px;
	font-size: 14px;
	display: inline-block;
	font-family: Verdana;
	color: rgb(255, 0, 0);
	font-weight: bold;
}


fieldset{
	align-self: center;
	width: 40%;
	margin-top: 30pxpx;
	margin-left: 400px;
	border: 3px solid red;
	background-color: rgb(255, 217, 217) ;
}

button {
  background-color: rgb(255, 128, 128);
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 260px;
  font-family: 'Arial';
  font-size: 15px;
  margin-left: 25%;
}
button:hover {
  opacity: 0.8;
}

span{
	color:red;
	font-size: 13px;
	margin-left: 40%;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
  margin-left: 1%;
}

button a{
	text-decoration:none;
	color:white;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 20%;
  border-radius: 20%;
}

.container {
  padding: 16px;
  align-items: left;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>


</head>
<body>


<fieldset name="SignupPageForm">
	
	<form action="./SignupPage" name="signup" onclick="return validateForm()" method="post">
	
	<center><h1 style="color:red;font:40px 'Geneva' ;">ELITES BLOODBANK</h1></center>
	
  <div class="imgcontainer">
    <img src="blood_images/blood.png" alt="Avatar" class="avatar">
  </div>

  <div class="container">
	<center><h3 style="color:rgb(128, 0, 0);font:30px 'Geneva' ;">REGISTER</h3></center>
	<table>
	<div class="formdesign" id="name">
	<label>Name: </label>
    <input type="text" name="fname" placeholder="Name" required><span class="fromerror"><b></b></span><br>
    </div>
    
    <div class="formdesign" id="email">
	<label>Email: </label>
    <input type="email" name="femail" placeholder="Email" required><span class="fromerror"><b></b></span><br>
    </div>
    
    <div class="formdesign" id="address">
	<label>Address: </label>
    <input type="text" name="faddress" placeholder="Address" required><span class="fromerror"><b></b></span><br>
    </div>
    
    <div class="formdesign" id="phone"required>
	<label>Phone: </label>
    <input type="text" name="fphone" maxlength="10" title="Please enter proper 10 digit contact no." pattern="[1-9]{1}[0-9]{9}" placeholder="Phone" required><span class="fromerror"><b></b></span><br>
    </div>
    
    <div class="formdesign" id="user"required>
	<label>Username: </label>
    <input type="text" name="fuser" placeholder="Username" required><span class="fromerror"><b></b></span><br>
    </div>
    
    <div class="formdesign" id="pass" required>
	<label>Password: </label>
    <input type="password" name="fpass" placeholder="Password" required><span class="fromerror"><b></b></span><br>
    </div>
    
    <div class="formdesign" id="cpass">
	<label>Confirm: </label>
    <input type="text" name="fcpass" placeholder="Confirm Password" required><br><br>
    <span class="fromerror"><b></b></span>
    </div>
	</table>
    
    <button name="act" value="submit">submit</button>
    
  </div>
</form>

<div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn" value="cancel" name="act"><a href="Login_Page.jsp">Cancel</a></button>
  </div>
	
</fieldset>

<script>
function clearErrors(){

    errors=document.getElementsByClassName('fromerror');
    for(let item of errors)
    {
        item.innerHTML="";
    }
}
function seterror(id,error){
    //sets error inside tag of id
    element=document.getElementById(id);
    element.getElementsByClassName('fromerror')[0].innerHTML=error;
}

function validateForm(){
    var returnval=true;
    clearErrors();
    
    var name=document.forms['signup']["fname"].value;
    if(name.length<5){
        seterror("name","Length of name shoulb be 4 to 15");
        returnval=false;
    
    }

    if(name.length==0){
        seterror("name","Enter your name");
        returnval=false;
    }
    
    var address=document.forms['signup']["faddress"].value;
    if(address.length<2){
        seterror("address","Length of Address is too short");
        returnval=false;
    
    }
    
    var email=document.forms['signup']["femail"].value;
    if(email.length>20){
    seterror("email","enter valid email");
    returnval=false;
    }
   
    
    var user=document.forms['signup']["fuser"].value;
    if(user.length<6){
    
    seterror("user","Username must be atleast 6 characters");
    returnval=false;
    }
    
    var pass=document.forms['signup']["fpass"].value;
    if(pass.length<6){
    
    seterror("pass","Password must be atleast 6 charecters");
    returnval=false;
    }
    var cpass=document.forms['signup']["fcpass"].value;
    if(cpass!=pass){
    
    seterror("cpass","Password and confirm password should be matched");
    returnval=false;
    }

return returnval;
}

</script>

</body>
</html>