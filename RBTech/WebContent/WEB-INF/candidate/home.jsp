<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<script>
$(document).ready(function() {
		});

</script>

<style>
    .error {
        color: red; font-weight: bold;
    }
</style>
    <title>Spring MVC Form Handling</title>
</head>
<body style=  "background-position:strecth; background-image:url('http://www.pageresource.com/wallpapers/wallpaper/black-and-blue-cubes.jpg');" >

<div class="container-fluid" style="background:transparent; color: white;">

<ul class="nav nav-pills">
			<li style="color: black;font-size: large;"><a href="http://localhost:8080/RBTech/ModernJob.jsp">
			<span class="glyphicon glyphicon-home"></span> Home </a>
			</li>
			<li class="dropdown" style="font-size: large;">
			<a href="#" data-toggle="dropdown" class="dropdown-toggle"><span class="glyphicon glyphicon-education"></span>Candidate<b class="caret"></b></a>
			<ul class="dropdown-menu">
			<li><a class="Menu2_link" href="<c:url value="/candidate/home"/>" >Add</a></li>
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

<div class="row">
<div class="col-sm-4"></div>
<div class="col-sm-4">
<h2>Candidate Registration</h2>
<form:form method="POST" action="/candidate/addStudent" modelAttribute="command" class="form-horizontal">
   
   
   
    <div class="form-group">
        <form:label path="id" class="control-label col-sm-2">ID</form:label>
        <div class="col-sm-10">
        <form:input path="id" class="form-control" placeholder="ID"/>
        </div>
    </div>
    
    
    <div class="form-group">
        <form:label path="name" class="control-label col-sm-2">Name</form:label>
        <div class="col-sm-10">
        <form:input path="name" class="form-control" placeholder="Name"/>
        <form:errors path="name" cssClass="error"/>
        </div>
        </div>
    
    
    
    <div class="form-group">
        <form:label path="age" class="control-label col-sm-2">Age</form:label>
        <div class="col-sm-10">
        <form:input path="age" class="form-control"/>
        <form:errors path="age" cssClass="error"/>
        </div>
        </div>
    
    
    
    <div class="form-group">
        <form:label path="address" class="control-label col-sm-2">Address</form:label>
        <div class="col-sm-10">
        <form:input path="address" class="form-control" placeholder="Address"/>
        <form:errors path="address" cssClass="error"/>
        </div>
        </div>
    
    
    
    <div class="form-group">
        <form:label path="qualification" class="control-label col-sm-2">qualification</form:label>
        <div class="col-sm-10">
        <form:input path="qualification" class="form-control" placeholder="Qualification"/>
        <form:errors path="qualification" cssClass="error"/>
        </div>
        </div>
    
    
    <div class="form-group">  
    <div class="col-sm-offset-2 col-sm-10">  
            <input type="submit" value="Submit" class="btn btn-primary"/>
            </div>
            </div>
        
    

</form:form>
</div>
<div class="col-sm-4"></div>
</div>
</div>
</body>
</html>