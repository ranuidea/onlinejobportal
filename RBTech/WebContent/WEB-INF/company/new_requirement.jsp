<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/bootstrap-datepicker.min.css" />
<script type="text/javascript">
	 	$(document).ready(function() {
	 		
		});
	</script>
<style>
.navbar-custom {
	background-color: #003399;
	color: #ffffff;
	border-radius: 0;
}

.color-font-nabbar {
	color: white;
}

.top50 {
	margin-top: 50px;
}

.error {
	color: red;
	font-weight: bold;
}

login {
	padding-top: 50px
}

#login .form-wrap {
	width: 30%;
	margin: 0 auto;
	margin-top: 15%;
}

#login h1 {
	color: #003399;
	font-size: 18px;
	text-align: center;
	font-weight: bold;
	padding-bottom: 20px;
}

#login p {
	color: #003399;
	font-size: 18px;
	text-align: center;
	font-weight: bold;
	padding-bottom: 20px;
}

#login .form-group {
	margin-bottom: 25px;
}

#login .checkbox {
	margin-bottom: 20px;
	position: relative;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	-o-user-select: none;
	user-select: none;
}

#login .checkbox.show:before {
	content: '\e013';
	color: #1fa67b;
	font-size: 17px;
	margin: 1px 0 0 3px;
	position: absolute;
	pointer-events: none;
	font-family: 'Glyphicons Halflings';
}

#login .checkbox .character-checkbox {
	width: 25px;
	height: 25px;
	cursor: pointer;
	border-radius: 3px;
	border: 1px solid #ccc;
	vertical-align: middle;
	display: inline-block;
}

#login .checkbox .label {
	color: #6d6d6d;
	font-size: 13px;
	font-weight: normal;
}

#login .btn.btn-custom {
	font-size: 14px;
	margin-bottom: 20px;
}

#login .forget {
	font-size: 13px;
	text-align: center;
	display: block;
}

/*    --------------------------------------------------
	:: Inputs & Buttons
	-------------------------------------------------- */
.form-control {
	color: #212121;
}

.btn-custom {
	color: #fff;
	background-color: #003399;
}

.btn-custom:hover,.btn-custom:focus {
	color: #fff;
}

/*    --------------------------------------------------
    :: Footer
	-------------------------------------------------- */
#footer {
	color: #6d6d6d;
	font-size: 12px;
	text-align: center;
}

#footer p {
	margin-bottom: 0;
}

#footer a {
	color: inherit;
}
</style>

<head>
<title></title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

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
				<a class="navbar-brand color-font-nabbar" href="#">RBTech</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">

				<ul class="nav navbar-nav navbar-right">
					<li style="font-size: large; margin-top: 4%;">Welcome
						${userDetails.username}</li>
					<li style="font-size: large;"><a
						href="<c:url value='/j_spring_security_logout' />"
						class="color-font-nabbar"><span></span> Logout</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid --> </nav>

		<section id="login">
		<div class="container">
			<div class="row">
			
				
					
					<div class="col-xs-12">
						<div class="form-wrap">
							<h1>Post a new requirement</h1>
							<form role="form"
					action="<c:url value='/company/saveJobRequirement' />"
					method="post" id="login-form" autocomplete="off">
							<div class="form-group">
								<label for="email" class="sr-only">Mobile No</label> <input
									type="text" name="jobTitle" id="jobTitle"
									class="form-control" placeholder="Job Title" value=""
									required>
							</div>
							<div class="form-group">
								
								<select class="form-control" name="jobType" id="jobType" required>
                            	<option selected="selected" value="">Job Type</option>
    							<option value="Permanent">Permanent</option>
    							<option value="Contractual">Contractual</option>
    							<option value="Hourly">Hourly</option>
  							</select>
								
							</div>
							
							<div class="form-group">
								<label for="email" class="sr-only">Mobile No</label> <input
									type="text" name="requiredSkill" id="requiredSkill"
									class="form-control" placeholder="Required Skill" value=""
									required>
							</div>
							
							<div class="form-group">
								<label for="email" class="sr-only">Mobile No</label>
								<textarea class="form-control" rows="5" name="jobDescription" id="jobDescription" placeholder="Job Description" value="" required></textarea>
							</div>
							<input type="submit" id="btn-login"
								class="btn btn-custom btn-lg btn-block" value="Save">
							</form>
						</div>
					</div>
					<!-- /.col-xs-12 -->
										<!-- /.col-xs-12 -->
				
			</div>
			/////////
		</div>
		</section>
	</div>
</body>
</html>	