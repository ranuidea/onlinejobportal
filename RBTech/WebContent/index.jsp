<html>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		//sendAjax();
		
		$("#btnSubmit").click(function(){
	        sendAjax();
	    });
		
		function sendAjax() {

			alert($("#inputPassword").val());
			$.ajax({
				url : "/RBTech/cont/person",
				type : 'GET',
				dataType : 'json',
				data : "{\"email\":"+$("#inputEmail").val()+",\"password\":"+$("#inputPassword").val()+"}",
				contentType : 'application/json',
				mimeType : 'application/json',
				success : function(data) {
					alert(data.id + " " + data.name);
				},
				error : function(data, status, er) {
					//alert("error: " + data + " status: " + status + " er:" + er);
				}
			});
		}
	});

	
</script>

<!DOCTYPE html>

<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container-fluid">
		<!-- <h1>Hello World!</h1>
		<p>Resize the browser window to see the effect.</p> -->
		<!-- <ul class="nav nav-pills">
			<li class="active"><a href="#">Home</a></li>
			<li><a href="#">Menu 1</a></li>
			<li><a href="#">Menu 2</a></li>
			<li><a href="#">Menu 3</a></li>
		</ul> -->

		<nav role="navigation" class="navbar navbar-default">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" data-target="#navbarCollapse"
					data-toggle="collapse" class="navbar-toggle">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a href="#" class="navbar-brand">Brand</a>
			</div>
			<!-- Collection of nav links, forms, and other content for toggling -->
			<div id="navbarCollapse" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="#">Profile</a></li>
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#">Messages <b class="caret"></b></a>
						<ul role="menu" class="dropdown-menu">
							<li><a href="#">Inbox</a></li>
							<li><a href="#">Drafts</a></li>
							<li><a href="#">Sent Items</a></li>
							<li class="divider"></li>
							<li><a href="#">Trash</a></li>
						</ul></li>
				</ul>
				<!-- <form role="search" class="navbar-form navbar-left">
                <div class="form-group">
                    <input type="text" placeholder="Search" class="form-control">
                </div>
            </form> -->
				<ul class="nav navbar-nav navbar-right">
					<!-- <li><a href="#">Login</a></li> -->

					<form class="form-inline" style="margin-top: 2%; margin-left: -1%;">
						<div class="form-group">
							<label class="sr-only" for="inputEmail">Email</label> <input
								type="email" class="form-control" id="inputEmail"
								placeholder="Email">
						</div>
						<div class="form-group">
							<label class="sr-only" for="inputPassword">Password</label> <input
								type="password" class="form-control" id="inputPassword"
								placeholder="Password">
						</div>
						<div class="checkbox">
							<label><input type="checkbox"> Remember me</label>
						</div>
						<button type="submit" class="btn btn-primary" id="btnSubmit">Login</button>
					</form>


				</ul>
			</div>
		</nav>

		<div class="row">
			<div class="col-sm-8" style="background-color: none; height: 34%">
			</div>
			<div class="col-sm-4" style="background-color: #e7e7e7; margin-left: -14px;">
				<div class="bs-example">
					<form style="margin-top: 5%;">
						<div class="form-group">
							<label for="inputEmail">Email</label> <input type="email"
								class="form-control" id="inputEmail" placeholder="Email">
						</div>
						<div class="form-group">
							<label for="inputUserName">User Name</label> <input type="text"
								class="form-control" id="inputUserName" placeholder="User Name">
						</div>
						<div class="form-group">
							<label for="inputPassword">Password</label> <input
								type="password" class="form-control" id="inputPassword"
								placeholder="Password">
						</div>
						<div class="form-group">
							<label for="inputConfirmPassword">Confirm Password</label> <input
								type="password" class="form-control" id="inputConfirmPassword"
								placeholder="Confirm Password">
						</div>
						<div class="form-group">
							<label for="inputMobilePhone">Mobile Phone</label> <input
								type="password" class="form-control" id="inputMobilePhone"
								placeholder="Mobile Phone">
						</div>
						<div class="checkbox">
							<label><input type="checkbox"> I agree to the terms and the conditions</label>
						</div>
						<button type="submit" class="btn btn-primary">Sign Up</button>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>


</html>