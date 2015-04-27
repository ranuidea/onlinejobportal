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
	background-color: #003399;
	color: #ffffff;
	border-radius: 0;
}
.color-font-nabbar{
	color: white;
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
					<a class="navbar-brand color-font-nabbar" href="#">RBTech</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#" class="color-font-nabbar">Upload Resume <span class="sr-only">(current)</span></a></li>
						<!-- <li><a href="#" class="color-font-nabbar">Companies</a></li> -->
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
						<li><a href="#" class="color-font-nabbar">How it Works</a></li>
						<li><a href="#" class="color-font-nabbar">Contact Us</a></li>
						<li><a href="#" class="color-font-nabbar">About Us</a></li>
					</ul>
					<!-- <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form> -->
					<ul class="nav navbar-nav navbar-right">
						<!-- <li><a href="#" class="color-font-nabbar">Log In</a></li> -->
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
						<li style="font-size: large; margin-top: 4%;">Welcome ${userDetails.username}</li>
						<li style="font-size: large;"><a href="<c:url value='/j_spring_security_logout' />" class="color-font-nabbar"><span></span> Logout</a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>

	</div>
</body>


</html>