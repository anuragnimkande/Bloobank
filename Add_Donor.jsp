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
  margin-top:10px;
}

select{
	border: 1px solid rgb(255, 0, 0);
	margin-top: 10px;
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


<fieldset name="Add_Donor">
	
	<form action="./AddDonor" name="donor" onclick="return validateForm()" >
	
	<center><h1 style="color:red;font:40px 'Geneva' ;">ELITES BLOODBANK</h1></center>
  <div class="imgcontainer">
    <img src="blood_images/blood.png" alt="Avatar" class="avatar">
  </div>
	<center><h3 style="color:rgb(128, 0, 0);font:30px 'Geneva' ;">ADD DONOR</h3></center>
  <div class="container">
		  
	<table>
	<div class="formdesign" id="name">
	<label>Name: </label>
    <input type="text" name="fname" placeholder="Name" ><span class="fromerror"><b></b></span><br>
    </div>
    
    <div class="formdesign" id="phone"required>
	<label>Phone: </label>
    <input type="text" name="fphone" maxlength="10" title="Please enter proper 10 digit contact no." pattern="[1-9]{1}[0-9]{9}" placeholder="Phone" ><span class="fromerror"><b></b></span><br>
    </div>
    
    <div class="formdesign" id="address">
	<label>Address: </label>
    <input type="text" name="faddress" placeholder="Address" ><span class="fromerror"><b></b></span><br>
    </div>
    
    <div class="formdesign" id="email">
	<label>Email: </label>
    <input type="email" name="femail" value="@gmail.com" placeholder="Email" ><span class="fromerror"><b></b></span><br>
    </div>
    
    <div class="formdesign" id="state">
	<label>Select State: </label>
    <select id="state_grpx" style="width:167px;height:25px;" name="state">
    <option value="State">Select State</option>
    <option value="Maharashtra">Maharashtra</option>
	<option value="Rajasthan">Rajasthan</option>
 	<option value="Madhya Pradesh">Madhya Pradesh</option>
  	<option value="Gujarat">Gujarat</option>
	</select><span class="fromerror"><b></b></span><br>
    </div>
    
    <div class="formdesign" id="bld">
    <label for="bld_g"><b>BloodGroup: </b></label>
    <select id="blood_grp" style="width:167px;height:25px;" name="blood">
    <option value="Blood">Select Blood Group</option>
    <option value="A+">A+</option>
    <option value="A-">A-</option>
	<option value="B+">B+</option>
	<option value="B-">B-</option>
 	<option value="O+">O+</option>
 	<option value="O-">O-</option>
  	<option value="AB+">AB+</option>
	<option value="AB-">AB-</option>
	</select><span class="fromerror"><b></b></span><br>
	</div>
    
	</table>
    
    <button name="act" value="submit" id="but">submit</button>
    
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
    
    var name=document.forms['donor']["fname"].value;
    if(name.length<5){
        seterror("name","Length of name shoulb be 4 to 15");
        returnval=false;
    
    }

    if(name.length==0){
        seterror("name","Enter your name");
        returnval=false;
    }
    
    var address=document.forms['donor']["faddress"].value;
    if(address.length<2){
        seterror("address","Length of Address is too short");
        returnval=false;
    
    }
    
    var email=document.forms['donor']["femail"].value;
    if(email == '@gmail.com'){
    seterror("email","Enter Valid Email..");
    returnval=false;
    }
    
    var email=document.forms['donor']["femail"].value;
    if(email.length>20){
    seterror("email","enter valid email");
    returnval=false;
    }
    var phone=document.forms['donor']["fphone"].value;
    if(phone.length!=10){
    seterror("phone","enter valid phone number upto 10 digits");
    returnval=false;
    }
    
    var state = document.getElementById("state_grpx").value;
    if(state == 'State'){
    seterror("state","Please select state..");
    returnval=false;
    }
    
    var bld = document.getElementById("blood_grp").value;
    if(bld == 'Blood'){
    seterror("bld","Please select Blood Group..");
    returnval=false;
    }

return returnval;
}

</script>

</body>
</html>