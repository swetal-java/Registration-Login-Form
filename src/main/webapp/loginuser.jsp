<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOGIN-PAGE</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
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

</head>
<body>
	<div class="container">
		<div class="row mx-0 justify-content-center">
			<div class="col-md-7 col-lg-5 px-lg-2 col-xl-4 px-xl-0 px-xxl-3">
				<form class="w-100 rounded-1 p-4 border bg-white" action="userController"
					id="log" method="post">
					
					<h2 class="text-center">Login Form</h2>
					<span class="form-label d-block"></span> <input
						name="email" type="email" class="form-control"
						placeholder="Email" required /> <label
						class="d-block mb-4"> <span class="form-label d-block"></span>
						<input name="password" type="password" class="form-control"
						minlength="6" placeholder="Password" required />
					</label>



					<div class="mb-3">
						<input type="submit" name="action" value="login" 
							class="btn btn-primary px-3 rounded-3">

					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>