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
		 var val = "<c:out value="${personalDetail.gender}"/>";
		 $("select option[value='"+val+"']").attr("selected","selected");
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
		
	});
 </script>
<style>
.navbar-custom {
	background-color: #003399;
	color: #ffffff;
	border-radius: 0;
}
.color-font-nabbar{
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
.btn-custom:hover,
.btn-custom:focus {
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

input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
    /* display: none; <- Crashes Chrome on hover */
    -webkit-appearance: none;
    margin: 0; /* <-- Apparently some margin are still there even though it's hidden */
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
						
						<li style="font-size: large; margin-top: 4%;">Welcome ${userDetails.username}</li>
						<li style="font-size: large;"><a href="<c:url value='/j_spring_security_logout' />" class="color-font-nabbar"><span></span> Logout</a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>

		<section id="login">
		<div class="container">
			<div class="row" style="margin-top: 7%">
			<form role="form" action="<c:url value='/upload/savePersonalDetails' />" method="post" id="login-form" autocomplete="off">
			<div class="col-xs-6">
        	    <div class="form-wrap">       
                    
                    	<div class="form-group">
                            <label for="email" class="sr-only">Mobile No</label>
                            <input type="text" name="firstName" id="firstName" class="form-control" placeholder="First Name" value="${personalDetail.firstName}" required>
                        </div>
                        <div class="form-group">
                            <label for="email" class="sr-only">Mobile No</label>
                            <input type="text" name="lastName" id="lastName" class="form-control" placeholder="Last Name" value="${personalDetail.lastName}" required>
                        </div>
                        <div class="form-group">
                            <label for="email" class="sr-only">Mobile No</label>
                            <input type="number" max="9999999999" name="mobileNo" id="mobileNo" class="form-control" placeholder="Mobile No" value="${personalDetail.mobileNo}" required>
                        </div>
                        <div class="form-group">
                            <label for="key" class="sr-only">Gender</label>
                            <!-- <input type="text" name="gender" id="key" class="form-control" placeholder="Gender" required> -->
                            <select class="form-control" name="gender" id="gender" value="" required>
                            	<option selected="selected" value="">Gender</option>
    							<option value="Male">Male</option>
    							<option value="Female">Female</option>
  							</select>
                        </div>
                    
        	    </div>
    		</div> <!-- /.col-xs-12 -->
    		<div class="col-xs-6">
        	    <div class="form-wrap">
        	    
                        <div class="form-group">
                            <div class="input-group input-append date" id="date-picker">
									<input type="text" class="form-control" name="dateOfBirth"
										placeholder="Time period From" value="${personalDetail.dateOfBirth}" required/> <span
										class="input-group-addon add-on"><span
										class="glyphicon glyphicon-calendar"></span></span>
								</div>
                        </div>
                        <div class="form-group">
                            <label for="key" class="sr-only">Password</label>
                            <textarea class="form-control" rows="5" name="address" id="address" placeholder="Address" value="" required>${personalDetail.address}</textarea>
                        </div>
                        
                        <input type="submit" id="btn-login" class="btn btn-custom btn-lg btn-block" value="Save & Next >>">
                        </div>
                        </div>
                    </form>
                    
        	    </div>
    		</div> <!-- /.col-xs-12 -->
			
		</section>
	</div>
</body>


</html>