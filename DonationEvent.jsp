<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DONATION EVENTS</title>
</head>
<style>
	body{
		background-image: url("blood_images/donationform1.jpg");
		background-repeat: no-repeat;
		background-size: 1300px 750px;
	}
	fieldset{
		height:500px; 
		width:750px;
		margin-left: 425px;
		margin-top: 105px;
		background-color : rgb(255, 217, 217); 
		border-color: black;
		border: 10px;
		border-radius: 10px;
		border-style: solid;
			}
	label{
		font-size: 22px;
		display : inline-block;
		width: 200px;
		font-family: Cambria;
		text-align: left;	
		color:snow;
	}
	h1{
	size: 40px;
	color: darkred;
	text-align: center;
	}
	input{
		display: inline-block;
		width:250px;
		height: 25px; 
		margin-left: 50px;
		font-family: Cambria;
		font-size: 16px;
		color:white;	
		background-color: maroon;	
	}
	input:focus{
		background-color: black;
		outline: none;	
	}
	.container{
		align-items:center; 
		text-align: center;
		padding : 50px;
		background-color: darkslategrey;	
	}
	button{
		font-size:25px;
		background-color:green;
		color:	white;
	}
	button.view
	{
	    font-size:20px;
		background-color:black;
		color:	pink;
		width: 200px;
		text-align:center;
		margin-left:1200px;
		margin-top:0px;
		position: absolute;
		right: 0;
		top:0;
		border-radius:20px;	
	}
	
</style>
<body>

<form method="post" action="./ViewEvents">
        <br><br><button  class="view" type="submit"><b>View All Events</b></button>
</form>
<fieldset>
	<form action="./DonationEvent" method="post">

	<marquee><h1>FILL BLOOD DONATION EVENT INFORMATION</h1><hr></marquee>
		<div class="container">
	
	<div><label for="Event Name"><b>Event Name</b></label>
    <input type="text" placeholder="Enter Name of event" name="ename" required></div><br>
	
    <div><label for="Event Place"><b>Event Place</b></label>
    <input type="text" placeholder="Enter Place where event organized" name="place" required></div><br>
 
     <div><label for="Date"><b>Date</b></label>
    <input type="date" placeholder="Enter Event Date" name="edate" required></div><br>
       
    <div><label for="Event Time"><b> Enter Time of Event</b></label>
    <input type="time" placeholder="Enter Time of the event" name="time" required></div><br><br>
    
     <label for="Enquiry Contact"><b>Enquiry Contact</b></label>
    <input type="tel" placeholder="Enter Contact no. for Enquiries" name="econtact" required>
    
    <br><br><button type="submit"><b>SUBMIT</b></button>
     </div>
       </form>
     </fieldset>
   

</body>
</html>