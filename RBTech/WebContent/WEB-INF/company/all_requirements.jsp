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
$(document).ready(function(){
	$(function() {
      $('a.cred').click(function() {
            var jobId = this.id.replace(/id/, ''); // Extract ID
            //alert(id);
            if (confirm('Are you sure you want to delete this?')) {
            $.ajax({
            	type: "POST",
            	   url: '${pageContext.request.contextPath}/company/deleteJobRequirement',
            	   data: jobId,
            	   contentType: "application/json; charset=utf-8",
            	   error: function() {
            	      alert("failure");
            	      return false;
            	   },
            	   success: function(data) {
            	      window.location.href = "${pageContext.request.contextPath}"+data;
            	   }
            	});
      }
      });
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
						<li class="active"><a href="<c:url value='/company/new_requirement' />" class="color-font-nabbar">Post Requirement <span class="sr-only">(current)</span></a></li>
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
	<div class="container" style="margin-top: 7%;">
		<table class="table table-striped">
			<thead>
        <tr>
            <th>Job ID</th>
            <th>Job Title</th>
            <th>Job Type</th>
            <th>Skill</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
    	<c:forEach var="listValue" items="${listRequirement}">
				<tr>
            		<td>${listValue.jobId}</td>
            		<td>${listValue.jobTitle}</td>
            		<td>${listValue.jobType}</td>
            		<td>${listValue.requiredSkill}</td>
            		<td><a id="${listValue.jobId}" href="#" class="cred">Delete</a></td>
        		</tr>
			</c:forEach>
        
    </tbody>
		</table>
	</div>
</body>


</html>