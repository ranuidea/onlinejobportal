<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body style=  "background-position:strecth; background-image:url('http://www.pageresource.com/wallpapers/wallpaper/black-and-blue-cubes.jpg');" >

<div class="container-fluid" style="background:transparent; color: white;">
<h1>Modern Job</h1>
<ul class="nav nav-pills">
			<li style="color: black;font-size: large;"><a href="http://localhost:8080/RBTech/ModernJob.jsp">
			<span class="glyphicon glyphicon-home"></span> Home </a>
			</li>
			<li class="dropdown" style="font-size: large;">
			<a href="#" data-toggle="dropdown" class="dropdown-toggle"><span class="glyphicon glyphicon-education"></span>Candidate<b class="caret"></b></a>
			<ul class="dropdown-menu">
			<li><a class="Menu2_link" href="<c:url value="/candidate/home"/>"> Add</a></li>
			<li><a class="Menu2_link" href="<c:url value="/candidate/show"/>" >Show All</a></li>
			<li><a class="Menu2_link" href="#" >Jobs By Function</a></li>
			</ul>
			</li>
			<li style="font-size: large;"><a href="#"><span class="glyphicon glyphicon-registration-mark"></span> Recruiters</a></li>
			<li style="font-size: large;"><a href="#"><span class="glyphicon glyphicon-briefcase"> Companies</span></a></li>
			<li style="font-size: large;"><a href="#"><span class="glyphicon glyphicon-signal"> CareerResources</span></a></li>
			<li style="font-size: large;"><a href="#"><span class="glyphicon glyphicon-Phone"></span> Contact Us</a></li>
			<li style="font-size: large;"><a href="#"><span class="glyphicon glyphicon-Paperclip"></span> More</a></li>
		</ul>
</div>>

</body>
</html>