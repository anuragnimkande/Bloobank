<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>
	body{
		background-color:ghostwhite;
		background-size: 700px 700px;
		background-position: left;
		background-image: url(bbag2.png);
		
	}
	fieldset{
		background-image: url("bbag.jpg");
		background-position: center;
		background-size: cover;
		padding : 0px 20px;
		height:600px;
		width:600px;
		margin-left: 50% ;
		margin-top: 60px;
		background-color: whitesmoke ;
		border-color: plum;
		border-style: outset;
		border-width: 10px;
	}
	
	label{
		font-size: 20px;
		font-family:  Cambria ;
		color: maroon;
		display: inline-block;
		width: 150px;
		text-align:left;
		text-shadow: 1px 2px 3px black;
	}
	
	h1{
		font-size : 30px;
		font-family: Georgia;
		background-color: crimson;
		color:cornsilk;
		
	}
	input{
		width:50%;
		padding: 15px;
		display: inline-block; 
		height: 5px;
		
	}
	input:focus{
		background-color: peachpuff;
		outline: none;
		
	}
	select{
		width: 50%;
		display: inline-block;
	}
	select:focus{
		background-color: peachpuff;
	}
	.container{
		text-align: justify;
		padding : 20px;
		background-color:beige;
	}
	button{
		font-size:30px;
		font-family: 'Times New Roman';
		background-color:darkolivegreen;
		color: white;	
	}
	button.showdetails{
		font-size: 15px;
		background-color:coral;
		color:white;
		width: 300px;
	}
</style>
<title>BLOOD BAGS </title>
</head>
<body>
	<form action="./ElitesBloodBag">
<fieldset>
	<center><h1>ADD BLOOD BAGS</h1><hr></center>
		<div class="container">
	<div><label for="Blood group"><b>Blood Group</b></label>
    <select style="height:40px; width:314px" name="bgrp">
		<option>Select Blood Group</option>
		<option>A+</option>
		<option>A-</option>
		<option>B+</option>
		<option>B-</option>
		<option>AB+</option>
		<option>AB-</option>
		<option>O+</option>
		<option>O-</option>
	</select></div><br>

	<div><label for="Bags count"><b>Bags Count</b></label>
	<input type="number" placeholder="Enter number of bags" name="bcount" required></div><br>
	
    <div><label for="Center address"><b>Center Address</b></label>
    <input type="text" placeholder="Enter Address of the center" name="caddr" required></div><br>
 
     <div><label for="Date"><b>Date</b></label>
    <input type="date" placeholder="Enter Todays Date" name="date" required></div><br>
       
    <div><label for="Center contact"><b> Center contact</b></label>
    <input type="tel" placeholder="Enter Center's Contact no." maxlength="10" title="Please enter proper 10 digit contact no." pattern="[1-9]{1}[0-9]{9}" name="ccontact" required></div><br><br>
    
     <center> <button type="submit" class="submit" value="submit" name="act"> <b>SUBMIT</b></button></center><br>

  </form>
  <form method="post" action="./ViewBloodBag">
     <div><center><button type="submit"class="showdetails" value="show" name="act">View All Blood Bags Details</button></center></div>
	</form>
	       </div>
</fieldset>
</body>
</html>