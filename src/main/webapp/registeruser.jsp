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
						<h2 class="text-center">Registration Form</h2>
					<label class="d-block mb-4"> <span
						class="form-label d-block"></span> <input name="name"
						type="text" class="form-control" placeholder="Name"
						required />
					</label> <label class="d-block mb-4"> <span
						class="form-label d-block"></span> <input
						name="email" type="email" class="form-control"
						placeholder="Email" required />
					</label> <label class="d-block mb-4"> <span
						class="form-label d-block"> </span> <input
						name="contact" type="text" class="form-control"
						placeholder="Contact" required />
					</label>
					
				<label class="d-block mb-4"> <span
						class="form-label d-block"> </span> <input
						name="gender" type="radio" value="Male"
						/> <label for="Male">Male</label> 
						<input
						name="gender" type="radio" value="Female"
						/> <label for="Female">Female</label>
						<input
						name="gender" type="radio" value="others"
						/> <label for="others">Other</label>   
					</label>
					
					<label class="d-block mb-4"> <span
						class="form-label d-block"> </span> <input
						name="chk" type="checkbox" value="Reading"
						/> <label for="Reading">Reading</label> 
						<input
						name="chk" type="checkbox" value="Writing"
						/> <label for="Writing">Writing</label>
						<input
						name="chk" type="checkbox" value="Singing"
						/> <label for="Singing">Singing</label>   
					</label>
					
					<label class="d-block mb-4"> <span
						class="form-label d-block"></span> <input name="address"
						type="text" class="form-control" 
						placeholder="Address" required />
					</label>
					
					<label class="d-block mb-4"> <span
						class="form-label d-block"></span> <input name="password"
						type="password" class="form-control" minlength="6"
						placeholder="Password" required />
					</label>



					<div class="mb-3">
						<input type="submit" name="action" value="register"
							class="btn btn-primary px-3 rounded-3" onclick="">

					</div>
					<a href="loginuser.jsp">Already a Member?</a>
				</form>
			</div>
		</div>
	</div>
</body>
</html>