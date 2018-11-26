<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="css/index.css" rel="stylesheet">	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-image: url('img/BG1.jpg')">
	<a href="/SimpleWebProject" class="btn btn-outline-dark " id="hover"> &lArr; Back to main menu</a>
	<div class="container">
		<form action="LoginServlet" method="post">
			<div class="row" id="firstRow">
				<div class="offset-md-4 col-md-4">
					<h1>Login page</h1>
					<label for="email">Enter email:</label> <input class="form-control"
						type="text" name="email" value="${user.email}"
						placeholder="Enter email" required="required">
				</div>
			</div>
			<div class="row" id="rows">
				<div class="offset-md-4 col-md-4">
					<label for="pwd">Password:</label> <input type="password"
						class="form-control" value="${user.password}" name="password"
						placeholder="Password" required="required">
				</div>
			</div>
			<div class="row" id="rows">
				<div class="offset-md-4 col-md-4">
					<a href="/SimpleWebProject/RegisterServlet">Haven't account yet?</a>
				</div>
			</div>
			<div class="row" id="rows">
				<div class="offset-md-4 col-md-4">
					<button type="submit" class="btn btn-outline-dark" value="Login user" id="hover">
						Log-in</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>