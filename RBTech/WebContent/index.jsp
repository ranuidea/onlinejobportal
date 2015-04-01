<html>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		sendAjax();
	});

	function sendAjax() {

		$.ajax({
			url : "/RBTech/rest/cont/person",
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
<title>Bootstrap Example</title>
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

	<div class="container-fluid">
		<h1>Hello World!</h1>
		<p>Resize the browser window to see the effect.</p>
		<ul class="nav nav-pills">
			<li class="active"><a href="#">Home</a></li>
			<li><a href="#">Menu 1</a></li>
			<li><a href="#">Menu 2</a></li>
			<li><a href="#">Menu 3</a></li>
		</ul>

		<div class="row">
			<div class="col-sm-4" style="background-color: lavender;">.col-sm-4</div>
			<div class="col-sm-8" style="background-color: lavenderblush;">.col-sm-8</div>
		</div>
	</div>

</body>


</html>