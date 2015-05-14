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
		 
			$('#date-picker')
	        .datepicker({
	            format: 'mm/dd/yyyy',
	            pickerPosition: "bottom-left",
	            autoclose: true,
	        })
	        .on('changeDate', function(e) {
	            // Revalidate the date field
	        	       $('.datepicker').hide();
	        });
			
			$('#date-picker2')
	        .datepicker({
	            format: 'mm/dd/yyyy',
	            pickerPosition: "bottom-left",
	            autoclose: true,
	        })
	        .on('changeDate', function(e) {
	            // Revalidate the date field
	        	       $('.datepicker').hide();
	        });
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

login {
	padding-top: 50px
}

#login .form-wrap {
	width: 70%;
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
				<ul class="nav navbar-nav">
					<li class="active"><a href="#" class="color-font-nabbar">Candidates
							<span class="sr-only">(current)</span>
					</a></li>
					<li><a href="#" class="color-font-nabbar">Companies</a></li>
					<li><a href="#" class="color-font-nabbar">How it Works</a></li>
					<li><a href="#" class="color-font-nabbar">Contact Us</a></li>
					<li><a href="#" class="color-font-nabbar">About Us</a></li>
				</ul>

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
			<div class="row" style="margin-top: 7%">
				<form role="form"
					action="<c:url value='/upload/saveEducationalDetails' />"
					method="post" id="login-form" autocomplete="off">
					<div class="col-xs-6">
						<div class="form-wrap">

							<div class="form-group">
								<label for="email" class="sr-only">Mobile No</label> <input
									type="text" name="degreeInstitute" id="degreeInstitute"
									class="form-control" placeholder="Degree Institute" value=""
									required>
							</div>
							<div class="form-group" style="padding-bottom: 30px;">
								<div class="col-xs-6">
								<select class="form-control" name="batchFrom" id="batchFrom">
                            	<option selected="selected">Batch To</option>
    							<option>1980</option>
    							<option>1981</option>
    							<option>1982</option>
    							<option>1983</option>
    							<option>1984</option>
    							<option>1985</option>
    							<option>1986</option>
    							<option>1987</option>
    							<option>1988</option>
    							<option>1989</option>
    							<option>1990</option>
    							<option>1991</option>
    							<option>1992</option>
    							<option>1993</option>
    							<option>1994</option>
    							<option>1995</option>
    							<option>1996</option>
    							<option>1997</option>
    							<option>1998</option>
    							<option>1999</option>
    							<option>2000</option>
    							<option>2001</option>
    							<option>2002</option>
    							<option>2003</option>
    							<option>2004</option>
    							<option>2005</option>
    							<option>2006</option>
    							<option>2007</option>
    							<option>2008</option>
    							<option>2009</option>
    							<option>2010</option>
    							<option>2011</option>
    							<option>2012</option>
    							<option>2013</option>
  							</select>
								</div>
								<div class="col-xs-6">
							<select class="form-control" name="batchTo" id="batchFrom">
                            	<option selected="selected">Batch To</option>
    							<option>1980</option>
    							<option>1981</option>
    							<option>1982</option>
    							<option>1983</option>
    							<option>1984</option>
    							<option>1985</option>
    							<option>1986</option>
    							<option>1987</option>
    							<option>1988</option>
    							<option>1989</option>
    							<option>1990</option>
    							<option>1991</option>
    							<option>1992</option>
    							<option>1993</option>
    							<option>1994</option>
    							<option>1995</option>
    							<option>1996</option>
    							<option>1997</option>
    							<option>1998</option>
    							<option>1999</option>
    							<option>2000</option>
    							<option>2001</option>
    							<option>2002</option>
    							<option>2003</option>
    							<option>2004</option>
    							<option>2005</option>
    							<option>2006</option>
    							<option>2007</option>
    							<option>2008</option>
    							<option>2009</option>
    							<option>2010</option>
    							<option>2011</option>
    							<option>2012</option>
    							<option>2013</option>
  							</select>
								</div>
							</div>
							
							<div class="form-group">
								<label for="email" class="sr-only">Mobile No</label> <input
									type="text" name="aissce" id="aissce"
									class="form-control" placeholder="AISSCE (12th) Board" value=""
									required>
							</div>
							
							<div class="form-group">
								<label for="email" class="sr-only">Mobile No</label> <input
									type="text" name="aisse" id="aisse"
									class="form-control" placeholder="AISSE (10th) Board" value=""
									required>
							</div>
							<a class="btn btn-custom btn-lg btn-block" href="<c:url value='/upload/educational' />"><< back</a>
						</div>
					</div>
					<!-- /.col-xs-12 -->
					<div class="col-xs-6">
						<div class="form-wrap">
							<div class="form-group">
								<select class="form-control" name="degreeCourseType" id="degreeCourseType">
                            	<option selected="selected">Select Course Type</option>
    							<option>Full Time</option>
    							<option>Part Time</option>
    							<option>Distance Learning Program</option>
    							<option>Executive Program</option>
  							</select>
							</div>
							<div class="form-group">
								<select class="form-control" name="degree" id="degree">
                            	<option selected="selected">Select Degree</option>
    							<option>MBA / PGDM</option>
    							<option>BBA</option>
    							<option>CA</option>
    							<option>CS</option>
    							<option>LLB / LLM</option>
    							<option>B Tech / BE</option>
    							<option>BCA</option>
    							<option>MCA</option>
    							<option>MBBS</option>
    							<option>BSc</option>
    							<option>Bcom</option>
    							<option>BA</option>
    							<option>Bcom</option>
    							<option>PhD</option>
    							<option>MSc / MS / M Tech</option>
    							<option>MA</option>
    							<option>M Com</option>
    							<option>Integrated Master Program</option>
    							<option>Other</option>
  							</select>
							</div>
							<div class="form-group">
								<label for="email" class="sr-only">Mobile No</label> <input
									type="text" onkeypress='return event.charCode >= 48 && event.charCode <= 57' name="aisscePercentage" id="aisscePercentage"
									class="form-control" placeholder="AISSCE Percentage" value=""
									required>
							</div>
							
							<div class="form-group">
								<label for="email" class="sr-only">Mobile No</label> <input
									type="text" onkeypress='return event.charCode >= 48 && event.charCode <= 57' name="aissePercentage" id="aissePercentage"
									class="form-control" placeholder="AISSE Percentage" value=""
									required>
							</div>
							
							<input type="submit" id="btn-login"
								class="btn btn-custom btn-lg btn-block" value="Save & Next >>">

						</div>
					</div>
					<!-- /.col-xs-12 -->
				</form>
			</div>
			/////////
		</div>
		</section>
	</div>
</body>
</html>