<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<script>
$(document).ready(function() {
	function doAjaxPost() {
        // get the form values
        var name = $('#name').val();
        var education = $('#education').val();

        $.ajax({
        type: "POST",
        url: "/AjaxWithSpringMVC2Annotations/AddUser.htm",
        data: "name=" + name + "&education=" + education,
        success: function(response){
        // we have the response
        $('#info').html(response);
        $('#name').val('');
        $('#education').val('');
        },
        error: function(e){
        alert('Error: ' + e);
        }
        });
        }
	});

</script>

    <title>Spring MVC Form Handling</title>
</head>
<body>

<h2>Student Information</h2>
<form:form method="POST" action="/candidate/addStudent" modelAttribute="command">
   <table>
    <tr>
        <td><form:label path="name">Name</form:label></td>
        <td><form:input path="name" /></td>
    </tr>
    <tr>
        <td><form:label path="age">Age</form:label></td>
        <td><form:input path="age" /></td>
    </tr>
    <tr>
        <td><form:label path="id">id</form:label></td>
        <td><form:input path="id" /></td>
    </tr>
    <tr>
        <td><form:label path="address">address</form:label></td>
        <td><form:input path="address" /></td>
    </tr>
    <tr>
        <td><form:label path="qualification">qualification</form:label></td>
        <td><form:input path="qualification" /></td>
    </tr>
    <tr>
        <td colspan="2">
            <input type="submit" value="Submit"/>
        </td>
    </tr>
</table>  
</form:form>
</body>
</html>