<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<script type="text/javascript">
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
				<a class="navbar-brand color-font-nabbar" href="<c:url value="/"/>">RBTech</a>
			</div>

						<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid --> </nav>


	<section id="login">
    <div class="container">
		<div class="row">
    	    <div class="col-xs-12">
        	    <div class="form-wrap">
        	    
        	    <% 
					String errorString = (String)request.getAttribute("error");
					if(errorString != null && errorString.trim().equals("true")){
						out.println("<p style='color: red;'>Incorrect login name or password.</p>");
					}
				%>
        	    
        	    
                <h1>Lets get Started!</h1>
                    <form:form role="form" action="/user/companyRegister" method="post" id="login-form" autocomplete="off">
                    	<div class="form-group">
                            <label for="firstName" class="sr-only">Email</label>
                            <input type="text" name="companyName" id="companyName" class="form-control" placeholder="Company Name" required>
                        </div>
                        <div class="form-group">
                            <label for="lastName" class="sr-only">Email</label>
                            <input type="text" name="contactPerson" id="contactPerson" class="form-control" placeholder="Contact Person" required>
                        </div>
                        <div class="form-group">
                            <label for="lastName" class="sr-only">Email</label>
                            <input type="text" name="phoneNo" id="phoneNo" class="form-control" placeholder="Phone Number" required>
                        </div>
                        <div class="form-group">
                            <label for="userName" class="sr-only">Email</label>
                            <input type="email" name="userName" id="email" class="form-control" placeholder="somebody@example.com" required>
                        </div>
                        <div class="form-group">
                            <label for="key" class="sr-only">Password</label>
                            <input type="password" name="password" id="key" class="form-control" placeholder="Password" required>
                        </div>
                        <!-- <div class="checkbox">
                            <span class="character-checkbox" onclick="showPassword()"></span>
                            <span class="label">Show password</span>
                        </div> -->
                        <input type="submit" id="btn-login" class="btn btn-custom btn-lg btn-block" value="Register">
                    </form:form>
                    <!-- <a href="javascript:;" class="forget" data-toggle="modal" data-target=".forget-modal">Forgot your password?</a> -->
                    <hr>
        	    </div>
    		</div> <!-- /.col-xs-12 -->
    	</div>
</div>
</section>


<div class="modal fade forget-modal" tabindex="-1" role="dialog" aria-labelledby="myForgetModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">×</span>
					<span class="sr-only">Close</span>
				</button>
				<h4 class="modal-title">Recovery password</h4>
			</div>
			<div class="modal-body">
				<p>Type your email account</p>
				<input type="email" name="recovery-email" id="recovery-email" class="form-control" autocomplete="off">
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
				<button type="button" class="btn btn-custom">Recovery</button>
			</div>
		</div> <!-- /.modal-content -->
	</div> <!-- /.modal-dialog -->
</div> <!-- /.modal -->

<footer id="footer">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <p>Page © - 2014</p>
                <p>Powered by <strong><a href="#" target="_blank">RB Tech</a></strong></p>
            </div>
        </div>
    </div>
</footer>

	</div>
</body>

</html>