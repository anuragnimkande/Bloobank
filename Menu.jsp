<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu</title>
<style>

body{
	background-size:cover;
}

li a{
	text-decoration:none;
	display:block;
	color: white;
	font-size: 17px;
	font-weight: bold;
	margin-right: 25px;
	margin-top: 10px;
	padding:5px
}

.view{

	color: white;
	background-color: red;
	font-size: 15px;
	height:16px;
	width:120px;
	font-weight: bold;
	margin-right: 25px;
	margin-top: 13px;
	padding:5px;
	border: none;
}


ul{
	list-style-type:none;
}

li{
	display:inline-block;
	float:left;
	list-style: none;
}

.navbar{
	background-color: rgb(255, 0, 0);
	width:100%;
	font-family:calibri;
	padding-left: 15px;
	padding-right: 15px;
}

.navdiv{
	display: flex;
	align-items: center;
	justify-content: space-between;
}

.logo{
	font-size: 40px;
	color: white;
	font-weight: 500;
	margin-left:10px;
}

.sub{
	background-color: black;
	border-left:10px;
	border-radius: 10px;
	padding: 10px;
	width: 120px;
	color: white;
	font-weight: bold;
	font-size: 18px;
	text-decoration: none;
}

.sub:hover{
	color:red;
	background-color:white;
}

.image_slide{
	width: 70%;
	height: 550px;
	position: absolute;
	left: 50%;
	top: 57%;
	background-image: url('blood_images/donate.jpg');
	transform: translate(-50%, -50%);
	background-size: 100% 100%;
	box-shadow:1px 2px 10px 5px black;
	animation:slider 15s infinite alternate;
}

.image_slide:hover{
	box-shadow:1px 2px 10px 5px brown;
}

.last{
	width:100%;
	margin-top: 45%;
	text-align: left;
	padding: 10px;
	background-color: gray;
	color: white;
	margin-bottom: 10px;
	height:30px;
}

p1{
	margin-left:10px;
	font-family:monospace;
	
}

@keyframes slider{
	0%{background-image: url('blood_images/heart_1.png');}
	20%{background-image: url('blood_images/blood.png');}
	40%{background-image: url('blood_images/hands.jpg');}
	60%{background-image: url('blood_images/save.jpg');}
	80%{background-image: url('blood_images/quote.jpg');}
}

p2{
	float:right;
	margin-right:15px;
	font-family:monospace;
}

.logo:hover{
	text-shadow:2px 5px 10px brown;
}

li a:hover{
	text-shadow:1px 5px 5px brown;
	text-border:2px black;
}

.view:hover{
	text-shadow:1px 5px 5px brown;
	text-border:2px black;
}
</style>
</head>

<body>
	
	<form action="./Menu_Page">
	<nav class="navbar">
	<div class="navdiv">
	<div class="logo"><p>ELITES BLOODBANK</p></div>
	<ul>
		<li><a href ="User_Menu.html">Home</a></li>
		<li><a href ="EliteBloodBags.jsp">Add Blood Bags</a></li>
		<li><button class="view" name="act" value="bloodbag">Blood Bags</li>
		<li><a href ="DonationEvent.jsp">Add Donation Event</a></li>
		<li><button class="view" name="act" value="event">Events</li>
		<li><a href ="Add_Donor.jsp">Add Donors</a></li>
		<li><button class="view" name="act" value="view_donor">Donors</li>
		<button class="sub" value="logout" name="act">Log Out</button>
	</ul>
	</div>
	</nav>

	<div class="image_slide"></div>

	<div class="last">
		<p1>Contact Us: +91-XXXXXXXXX</p1>
		<p2>Visit Us: XYZ Gadge Nagar,Amravati</p2>
	</div>
	
	</form>

</body>
</html>