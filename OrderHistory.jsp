<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ORDER</title>
</head>
<style>
	
	fieldset{
		position: absolute;
		border:solid 3px;
		border-color: rgb(128, 64, 64);
		background-color: beige;
		text-align: center;
		margin-left:450px;
		margin-top: 20%;
	
	}

	button{
		font-size:20px;
		background-color:green;
		color:	white;
	}
	label{
		font-size: 19px;
		font-family: Cambria;
		color: crimson;	
	}
	input{
		font-size: 19px;
		font-family: Camrbia;
		width : 300px;
		height:30px;
		text-align: center;	
	}
</style>
<body>
	<form  action = "./OrderHistory" method="post">
	<fieldset>
		<b><label for=" MobileNo">Enter Your Mobile Number</label></b>
		<span><input type="text" placeholder="Mobile no." name="mobno" maxlength="10" title="Please enter proper 10 digit contact no." pattern="[1-9]{1}[0-9]{9}" required></span>
		<br><br><button type="submit" >Submit</button>
	</fieldset>
	</form>
   

</body>
</html>