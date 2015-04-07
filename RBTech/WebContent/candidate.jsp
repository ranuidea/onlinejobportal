<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


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
				url : "/RBTech/candidate/get",
				type : 'GET',
				dataType : 'json',
				contentType : 'application/json',
				mimeType : 'application/json',
				success : function(data) {
					alert(data);
				},
				error : function(data, status, er) {
					alert("error: " + data + " status: " + status + " er:" + er);
				}
			});
		}
	});

	
</script>
</head>
<body>

</body>
</html>