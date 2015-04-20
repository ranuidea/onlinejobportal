<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script type="text/javascript">
	/* $(document).ready(function() {
		sendAjax();
	});

	function sendAjax() {

		$.ajax({
			url : "/RBTech/cont/person",
			type : 'GET',
			dataType : 'json',
			data : "{\"name\":\"hmkcode\",\"id\":2}",
			contentType : 'application/json',
			mimeType : 'application/json',
			success : function(data) {
				alert(data.id + " " + data.name);
			},
			error : function(data, status, er) {
				alert("error: " + data + " status: " + status + " er:" + er);
			}
		});
	}
 */</script>
<style>
.navbar-custom {
	background-color: #ecf0f1;
	color: #ffffff;
	border-radius: 0;
}
.top50 { margin-top:50px; }

.error {
        color: red; font-weight: bold;
    }
</style>

<head>
<title></title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-fluid"
		style="background: transparent; color: white;">

		<nav class="navbar navbar-fixed-top navbar-custom">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">RBTech</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Candidates <span
							class="sr-only">(current)</span></a></li>
					<li><a href="#">Companies</a></li>
					<!-- <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li> -->
					<li><a href="#">How it Works</a></li>
					<li><a href="#">Contact Us</a></li>
					<li><a href="#">About Us</a></li>
				</ul>
				<!-- <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form> -->
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">Log In</a></li>
					<!-- <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </li> -->
					<li><a href="#">Sign Up</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid --> </nav>


		<div class="row top50">
			<!-- <div class="col-sm-4"></div> -->
			<div class="col-sm-4">
				<h3>${msg}</h3>
				<h2 style="color: #428bca;">Contact Us</h2>
				<form:form method="POST" action="/contactSave" modelAttribute="command" class="form-horizontal">

					<div class="form-group">
						<%-- <form:label path="name" class="control-label col-sm-2">Name</form:label> --%>
						<div class="col-sm-10">
							<form:input path="name" class="form-control" placeholder="Name" />
							<form:errors path="name" cssClass="error" />
						</div>
					</div>

					<div class="form-group">
						<%-- <form:label path="email" class="control-label col-sm-2">Email</form:label> --%>
						<div class="col-sm-10">
							<form:input path="email" class="form-control" placeholder="Email" />
							<form:errors path="email" cssClass="error" />
						</div>
					</div>

					<div class="form-group">
						<%-- <form:label path="mobileNo" class="control-label col-sm-2">Mobile</form:label> --%>
						<div class="col-sm-10">
							<form:input path="mobileNo" class="form-control"
								placeholder="Mobile No" />
							<form:errors path="mobileNo" cssClass="error" />
						</div>
					</div>

					<div class="form-group">
						<%-- <form:label path="comment" class="control-label col-sm-2">Comment</form:label> --%>
						<div class="col-sm-10">
							<form:textarea path="comment" class="form-control"
								placeholder="Comment" rows="5" cols="30" />
							<form:errors path="comment" cssClass="error" />
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-10">
							<input type="submit" value="Submit" class="btn btn-primary" />
						</div>
					</div>

				</form:form>
			</div>
			<div class="col-sm-4"></div>
		</div>

	</div>
</body>

</html>