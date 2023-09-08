<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 30%;
  height:30px;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
  
}

fieldset{
	align-self: center;
	width: 40%;
	margin-top: 50px;
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
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 30%;
  border-radius: 20%;
}

.container {
  padding: 16px;
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

<script src="sweetalert.min.js"></script>

</head>
<body>


<fieldset name="loginform">
	
	<form action="./LoginPage" method="post">

		<center><h1 style="color:red;font:40px 'Geneva' ;">ELITES BLOODBANK</h1></center>
	
  <div class="imgcontainer">
    <img src="blood_images/blood.png" alt="Avatar" class="avatar">
  </div>

  <div class="container">
	  <center>
    <label for="uname"><b>Username : </b></label>
    <input type="text" placeholder="Enter Username" name="uname" required><br>

    <label for="psw"><b>Password : </b></label>
    <input type="password" placeholder="Enter Password" name="psw" required><br>
        
    <button type="submit" value="submit" name="act">Login</button><br>
    </center>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me<br>
      <center><a href = "Sign_Up.jsp">Create New Account</a><br></center>
    </label>
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn" value="cancel" name="act" ><a href="User_Menu.html">Cancel
    </a></button>
  </div>
</form>
	
</fieldset>

</body>
</html>
