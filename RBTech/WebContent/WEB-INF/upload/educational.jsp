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
	 		var val = "<c:out value="${educationalDetail.batchFrom}"/>";
			 $("#batchFrom option[value='"+val+"']").attr("selected","selected");
			 var val2 = "<c:out value="${educationalDetail.batchTo}"/>";
			 $("#batchTo option[value='"+val2+"']").attr("selected","selected");
			 var val3 = "<c:out value="${educationalDetail.degreeCourseType}"/>";
			 $("#degreeCourseType option[value='"+val3+"']").attr("selected","selected");
			 var val4 = "<c:out value="${educationalDetail.degree}"/>";
			 $("#degree option[value='"+val4+"']").attr("selected","selected");
			 
			 $(".allownumericwithdecimal").on("keypress keyup blur",function (event) {
		            //this.value = this.value.replace(/[^0-9\.]/g,'');
		     $(this).val($(this).val().replace(/[^0-9\.]/g,''));
		            if ((event.which != 46 || $(this).val().indexOf('.') != -1) && (event.which < 48 || event.which > 57)) {
		                event.preventDefault();
		            }
		        });
			 
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
									class="form-control" placeholder="Degree Institute" value="${educationalDetail.degreeInstitute}"
									required>
							</div>
							<div class="form-group" style="padding-bottom: 30px;">
								<div class="col-xs-6">
								<select class="form-control" name="batchFrom" id="batchFrom">
                            	<option selected="selected">Batch From</option>
    							<option value="1980">1980</option>
    							<option value="1981">1981</option>
    							<option value="1982">1982</option>
    							<option value="1983">1983</option>
    							<option value="1984">1984</option>
    							<option value="1985">1985</option>
    							<option value="1986">1986</option>
    							<option value="1987">1987</option>
    							<option value="1988">1988</option>
    							<option value="1989">1989</option>
    							<option value="1990">1990</option>
    							<option value="1991">1991</option>
    							<option value="1992">1992</option>
    							<option value="1993">1993</option>
    							<option value="1994">1994</option>
    							<option value="1995">1995</option>
    							<option value="1996">1996</option>
    							<option value="1997">1997</option>
    							<option value="1998">1998</option>
    							<option value="1999">1999</option>
    							<option value="2000">2000</option>
    							<option value="2001">2001</option>
    							<option value="2002">2002</option>
    							<option value="2003">2003</option>
    							<option value="2004">2004</option>
    							<option value="2005">2005</option>
    							<option value="2006">2006</option>
    							<option value="2007">2007</option>
    							<option value="2008">2008</option>
    							<option value="2009">2009</option>
    							<option value="2010">2010</option>
    							<option value="2011">2011</option>
    							<option value="2012">2012</option>
    							<option value="2013">2013</option>
  							</select>
								</div>
								<div class="col-xs-6">
							<select class="form-control" name="batchTo" id="batchTo">
                            	<option selected="selected">Batch To</option>
    							<option value="1980">1980</option>
    							<option value="1981">1981</option>
    							<option value="1982">1982</option>
    							<option value="1983">1983</option>
    							<option value="1984">1984</option>
    							<option value="1985">1985</option>
    							<option value="1986">1986</option>
    							<option value="1987">1987</option>
    							<option value="1988">1988</option>
    							<option value="1989">1989</option>
    							<option value="1990">1990</option>
    							<option value="1991">1991</option>
    							<option value="1992">1992</option>
    							<option value="1993">1993</option>
    							<option value="1994">1994</option>
    							<option value="1995">1995</option>
    							<option value="1996">1996</option>
    							<option value="1997">1997</option>
    							<option value="1998">1998</option>
    							<option value="1999">1999</option>
    							<option value="2000">2000</option>
    							<option value="2001">2001</option>
    							<option value="2002">2002</option>
    							<option value="2003">2003</option>
    							<option value="2004">2004</option>
    							<option value="2005">2005</option>
    							<option value="2006">2006</option>
    							<option value="2007">2007</option>
    							<option value="2008">2008</option>
    							<option value="2009">2009</option>
    							<option value="2010">2010</option>
    							<option value="2011">2011</option>
    							<option value="2012">2012</option>
    							<option value="2013">2013</option>
  							</select>
								</div>
							</div>
							
							<div class="form-group">
								<label for="email" class="sr-only">Mobile No</label> <input
									type="text" name="aissce" id="aissce"
									class="form-control" placeholder="AISSCE (12th) Board" value="${educationalDetail.aissce}"
									required>
							</div>
							
							<div class="form-group">
								<label for="email" class="sr-only">Mobile No</label> <input
									type="text" name="aisse" id="aisse"
									class="form-control" placeholder="AISSE (10th) Board" value="${educationalDetail.aisse}"
									required>
							</div>
							<a class="btn btn-custom btn-lg btn-block" href="<c:url value='/upload/personal' />"><< back</a>
						</div>
					</div>
					<!-- /.col-xs-12 -->
					<div class="col-xs-6">
						<div class="form-wrap">
							<div class="form-group">
								<select class="form-control" name="degreeCourseType" id="degreeCourseType">
                            	<option selected="selected">Select Course Type</option>
    							<option value="Full Time">Full Time</option>
    							<option value="Part Time">Part Time</option>
    							<option value="Distance Learning Program">Distance Learning Program</option>
    							<option value="Executive Program">Executive Program</option>
  							</select>
							</div>
							<div class="form-group">
								<select class="form-control" name="degree" id="degree">
                            	<option selected="selected">Select Degree</option>
    							<option value="MBA / PGDM">MBA / PGDM</option>
    							<option value="BBA">BBA</option>
    							<option value="CA">CA</option>
    							<option value="CS">CS</option>
    							<option value="LLB / LLM">LLB / LLM</option>
    							<option value="B Tech / BE">B Tech / BE</option>
    							<option value="BCA">BCA</option>
    							<option value="MCA">MCA</option>
    							<option value="MBBS">MBBS</option>
    							<option value="BSc">BSc</option>
    							<option value="Bcom">Bcom</option>
    							<option value="BA">BA</option>
    							<option value="Bcom">Bcom</option>
    							<option value="PhD">PhD</option>
    							<option value="MSc / MS / M Tech">MSc / MS / M Tech</option>
    							<option value="MA">MA</option>
    							<option value="M Com">M Com</option>
    							<option value="Integrated Master Program">Integrated Master Program</option>
    							<option value="Other">Other</option>
  							</select>
							</div>
							<div class="form-group">
								<label for="email" class="sr-only">Mobile No</label> <input
									type="text" name="aisscePercentage" id="aisscePercentage"
									class="form-control allownumericwithdecimal" placeholder="AISSCE Percentage" value="${educationalDetail.aisscePercentage}"
									required>
							</div>
							
							<div class="form-group">
								<label for="email" class="sr-only">Mobile No</label> <input
									type="text" onkeypress='return event.charCode >= 48 && event.charCode <= 57' name="aissePercentage" id="aissePercentage"
									class="form-control allownumericwithdecimal" placeholder="AISSE Percentage" value="${educationalDetail.aissePercentage}"
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