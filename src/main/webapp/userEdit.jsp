<%@page import="model.userModel"%>
<%@page import="dao.userDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>REGISTRATION-PAGEs</title>
<script>
	function confirmInsert() {
		if (alert("User Registered..")) {
			// If the user confirms, submit the form to the servlet
			document.getElementById("reg").submit();
		}
	}
</script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
<style>
body {
	padding: 2rem 0;
}
</style>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div class="row mx-0 justify-content-center">
			<div class="col-md-7 col-lg-5 px-lg-2 col-xl-4 px-xl-0 px-xxl-3">
				<form class="w-100 rounded-1 p-4 border bg-white"
					action="userController" method="post" id="reg">
					<%
					int id = Integer.parseInt(request.getParameter("id"));
					userModel um = (userModel) userDao.getDataById(id);
					String h = um.getHobby();
					
					%>
					<h2 class="text-center">Edit Form</h2>
					<input type="hidden" name="id" value="<%=um.getId()%>">
					<label class="d-block mb-4"> <span
						class="form-label d-block"></span> <input name="name" type="text"
						class="form-control" placeholder="Name" value=<%=um.getName()%>
						required />
					</label> <label class="d-block mb-4"> <span
						class="form-label d-block"></span> <input name="email"
						type="email" class="form-control" placeholder="Email"
						value="<%=um.getEmail()%>" required />
					</label> <label class="d-block mb-4"> <span
						class="form-label d-block"> </span> <input name="contact"
						type="text" class="form-control" placeholder="Contact"
						value="<%=um.getContact()%>" required />
					</label> <label class="d-block mb-4"> <span
						class="form-label d-block"> </span> <input name="gender"
						type="radio" value="Male"
						<%=(um.getGender().equals("Male") ? "checked" : "")%> />
						<label for="Male">Male</label> <input name="gender" type="radio"
						value="Female"
						<%=(um.getGender().equals("Female") ? "checked" : "")%> />
						<label for="Female">Female</label> <input name="gender"
						type="radio" value="others"
						<%=(um.getGender().equals("others") ? "checked" : "")%> />
						<label for="others">Other</label>
					</label> <label class="d-block mb-4"> <span
						class="form-label d-block"> </span> <input name="chk"
						type="checkbox" value="Reading"
						<%=(h.contains("Reading") ? "checked" : "")%> />
						<label for="Reading">Reading</label> <input name="chk"
						type="checkbox" value="Writing"
						<%=(h.contains("Writing") ? "checked" : "")%> />
						<label for="Writing">Writing</label> <input name="chk"
						type="checkbox" value="Singing"
						<%=(h.contains("Singing") ? "checked" : "")%> />
						<label for="Singing">Singing</label>
					</label> <label class="d-block mb-4"> <span
						class="form-label d-block"></span> <input name="address"
						type="text" class="form-control" placeholder="Address" value="<%=um.getAddress() %>" required />
					</label> 



					<div class="mb-3">
						<input type="submit" name="action" value="update"
							class="btn btn-primary px-3 rounded-3" onclick="">

					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>