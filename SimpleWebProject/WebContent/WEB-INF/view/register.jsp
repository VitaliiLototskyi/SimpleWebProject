<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<head></head>
<body style="background-image:url('http://yiworks.com/wp-content/uploads/2016/11/Light-Grey-Background-Hd-5-1-1024x640.jpg');">
	<a href="/SimpleWebProject" class="btn btn-outline-dark "> &lArr; Back to main menu</a>
	<div class="container">
	<form action="RegisterServlet" method="post">
		<div class="row" style="margin-top: 10%">
			<div class="offset-md-4 col-md-4">
				<h1>Welcome to Register page</h1>
				<label for="email">User name:</label> <input class="form-control"
					type="text" name="name" value="${user.name}"
					placeholder="Enter name">
			</div>
		</div>
		<!-- 		<div class="row" style ="margin-top: 1%"> -->
		<!-- 				<div class="offset-md-4 col-md-4"> -->
		<!-- 					<label for="pwd">Email:</label> <input type="email" -->
		<!-- 						class="form-control" id="pwd"> -->
		<!-- 				</div> -->
		<!-- 		</div> -->
		<div class="row" style="margin-top: 1%">
			<div class="offset-md-4 col-md-4">
				<label for="pwd">Password:</label> <input type="password"
					class="form-control" value="${user.password}"
					placeholder="Password">
			</div>
		</div>
		<div class="row" style="margin-top: 5px">
			<div class="offset-md-4 col-md-4">
				<a href="/SimpleWebProject/LoginServlet">Already have an account? Log in</a>
			</div>
		</div>
		<div class="row" style="margin-top: 5px">
			<div class="offset-md-4 col-md-4">
				<button type="submit" class="btn btn-outline-dark" value="Save user">
					Register</button>
			</div>

		</div>
	</form>
</div>
</body>





