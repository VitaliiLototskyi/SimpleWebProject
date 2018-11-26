<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="css/index.css" rel="stylesheet">
<head></head>
<body style="background-image: url('img/BG1.jpg')">
	<a href="/SimpleWebProject" class="btn btn-outline-dark " id="hover"> &lArr; Back to main menu</a>
	<div class="container">
	<form action="RegisterServlet" method="post">
		<div class="row" id="firstRow">
			<div class="offset-md-4 col-md-4">
				<h1>Welcome to Register page</h1>
				<label for="email">User name:</label> <input class="form-control"
					type="text" name="name" value="${user.name}" placeholder="Enter name" required="required" >
			</div>
		</div>
		<div class="row" id="rows">
				<div class="offset-md-4 col-md-4">
					<label for="email">Email:</label> <input type="email"
						class="form-control" id="email" value="${user.email}" name="email" placeholder="Enter email" required="required">
				</div>
		</div>
		<div class="row" id="rows">
			<div class="offset-md-4 col-md-4">
				<label for="pwd">Password:</label> <input type="password" name="password" class="form-control" value="${user.password}"
					placeholder="Enter password" required="required">
			</div>
		</div>
		<div class="row" id="rows">
			<div class="offset-md-4 col-md-4">
				<a href="/SimpleWebProject/LoginServlet" >Already have an account? Log in</a>
			</div>
		</div>
		<div class="row" id="rows">
			<div class="offset-md-4 col-md-4">
				<button type="submit" class="btn btn-outline-dark" id="hover" value="Save user">
					Register</button>
			</div>

		</div>
	</form>
</div>
</body>





