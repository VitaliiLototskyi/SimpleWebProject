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
	<div class="container">
		<div class="offset-md-4 col-md-5" id="firstRow">
			<h1>Oops!
			Looks like user with this email already exist!</h1>
		</div>
		<div class="offset-md-6 col-md-5" id="btnExist">
			<a href="/SimpleWebProject/RegisterServlet" class="btn btn-outline-dark" id="hover">Try again</a>
		</div>
	</div>
</body>
</html>