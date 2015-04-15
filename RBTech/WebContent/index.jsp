<html>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
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
</script>

<!DOCTYPE html>

<head>
<title>
Modern Job.com - Career Jobs|Jobs in India|Career tips|Job opening|Job vacancies|Job Search
 </title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body style=  "background-position:strecth; background-image:url('http://www.pageresource.com/wallpapers/wallpaper/black-and-blue-cubes.jpg');" >
	<div class="container-fluid" style="background:transparent; color: white;">
	
		<h1>Modern Job</h1>
		<p></p>
		<ul class="nav nav-pills">
			<li style="color: black;font-size: large;"><a href="http://localhost:8080/RBTech/ModernJob.jsp">
			<span class="glyphicon glyphicon-home"></span> Home </a>
			</li>
			<li class="dropdown" style="font-size: large;">
			<a href="#" data-toggle="dropdown" class="dropdown-toggle"><span class="glyphicon glyphicon-education"></span> Jobs<b class="caret"></b></a>
			<ul class="dropdown-menu">
			<li><a class="Menu2_link" href="#" >Advanced Job Search</a></li>
			<li><a class="Menu2_link" href="#" >Jobs By Location </a></li>
			<li><a class="Menu2_link" href="#" >Jobs By Function</a></li>
			</ul>
			</li>
			<li style="font-size: large;"><a href="#"><span class="glyphicon glyphicon-registration-mark"></span> Recruiters</a></li>
			<li style="font-size: large;"><a href="#"><span class="glyphicon glyphicon-briefcase"> Companies</span></a></li>
			<li style="font-size: large;"><a href="#"><span class="glyphicon glyphicon-signal"> CareerResources</span></a></li>
			<li style="font-size: large;"><a href="#"><span class="glyphicon glyphicon-Phone"></span> Contact Us</a></li>
			<li style="font-size: large;"><a href="#"><span class="glyphicon glyphicon-Paperclip"></span> More</a></li>
		</ul>
<div class="space">&nbsp; &nbsp;</div>
		<div class="row">
			<div class="col-sm-8" style="background:transparent;height: 34%">	
			    <h2 style="font-size:large; color:aqua;padding: 0 0 5px;margin: 0px;"
			    class="t22yel">Member/Registered User Benefits....</h2> 
			<table class="t11" style="color:white ">
			<tbody>
			<tr>
			<td width="100%">
			<span class="ben t12">
			<strong>customized 'Job Alert'</strong>
			</span>
			<br>"get job regular in your personal Mobile or inbox"
			</td>
			</tr>
			<tr><td height="7%" colspan="2">&nbsp;</td>
			</tr>
			<tr><td  width="100%">
			<span class="ben t12">
			<strong>Creating a multiple profiles</strong>
			<br>
			"Create customized profiles to apply to jobs in different categories"
			</span>
			</tr>
			<tr><td height="7%" colspan="2">&nbsp;</td>
			</tr>
			<tr><td  width="100%">
			<span class="ben t12">
			<strong>Equip yourself for a great career</strong>
			<br>
			"Research industries and employ our career services to be better equipped for your professional life."
			</span>
			</tr>
			
			</tbody>
			</table>
			
			</div>
			
			<div class="col-sm-4"
				style="background-color:black;">
				<div class="bs-example">
					<form>
						<div class="form-group">
							<label for="inputEmail" style="color: white;">Email</label> <input type="email"
								class="form-control" id="inputEmail" placeholder="Email">
						</div>
						<div class="form-group">
							<label for="inputPassword">Password</label> <input
								type="password" class="form-control" id="inputPassword"
								placeholder="Password">
						</div>
						<div class="checkbox">
							<label><input type="checkbox"> Remember me</label>
						</div>
						<button type="submit" class="btn btn-primary">Login
						</button>
					</form>
				</div>
			</div>
				</div>
		</div>

</body>


</html>