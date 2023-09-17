<%@page import="dao.userDao"%>
<%@page import="java.util.List"%>
<%@page import="model.userModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">
		<h2>User Data</h2>

		<table class="table table-hover">
			<%
			userModel um = null;
			if (session.getAttribute("data") != null) {
				um = (userModel) session.getAttribute("data");
			} else {
				response.sendRedirect("loginuser.jsp");
			}
			%>
			<%
			List<userModel> list = userDao.getalldata();
			%>
			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Email</th>
					<th>Contact</th>
					<th>Gender</th>
					<th>Hobbies</th>
					<th>Address</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<%
					for (userModel um1 : list) {
					%>
					<td><%=um1.getId()%></td>
					<td><%=um1.getName()%></td>
					<td><%=um1.getEmail()%></td>
					<td><%=um1.getContact()%></td>
					<td><%=um1.getGender()%></td>
					<td><%=um1.getHobby()%></td>
					<td><%=um1.getAddress()%></td>
					<td><a href="userEdit.jsp?id=<%=um1.getId()%>">Edit</a></td>
					<td><a href="userDelete.jsp?id=<%=um1.getId()%>"
						id="dele">Delete</a></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	</div>
	<script type="text/javascript">
var del = document.getElementById('dele');
     
del.addEventListener('click',function(event){
	
	event.preventDefalut();
	var confirmdel = confirm('Are you sure you want to Delete data?');
	if(confirmdel){
		alert('Data Deleted Succefully !');
	}else{
		alert('Not Deleted');
	}
});
</script>
</body>
</html>
