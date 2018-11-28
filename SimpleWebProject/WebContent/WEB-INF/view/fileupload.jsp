<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="css/index.css" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-image: url('img/BG1.jpg')">
	<a href="/SimpleWebProject" class="btn btn-outline-dark " id="hover"> &lArr; Back to main menu</a>
	<div class="container">
		<div class="offset-md-4" id="firstRow">
			<h1 >Upload to storage folder </h1>
			<form action="FileUpload" method="post" enctype="multipart/form-data">
				<input type="file" name="fileData"> <input type="submit"
					value="upload">
			</form>
		</div>
		
	</div>
</body>
</html>