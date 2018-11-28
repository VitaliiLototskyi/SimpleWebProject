<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="css/index.css" rel="stylesheet">
<!DOCTYPE html>
<html>
<head></head>
<body style="background-image: url('img/BG1.jpg')">
	<div class="container">
		<form action="PhoneEditServlet" method="post">
			<div class="row" id="firstRow">
				<div class="offset-md-4 col-md-4">
					<h1>Edit page :</h1>
					<h1>  ${phone.name} ${phone.tradeMark}</h1>
					<input type="hidden" value="${phone.id}" name="id" class="form-control">
				</div>
			</div>
			<div class="row">
				<div class="offset-md-4 col-md-4" id="rows">
					<input type="text" name="tradeMark" value="${phone.tradeMark}"
					placeholder="Enter tradeMark" class="form-control" required="required">
				</div>
			</div>
			<div class="row">
				<div class="offset-md-4 col-md-4" id="rows">
				 <input type="text" name="name"
				value="${phone.name}" placeholder="Enter Name" class="form-control" required="required">
				</div>
			</div>
			<div class="row">
				<div class="offset-md-4 col-md-4" id="rows">
				Select File from the storage folder
				 <input type="file" name="imagename"
					value="${phone.imagename}" class="form-control btn btn-outline-dark" id="hover">
				</div>
			</div>
			<div class="row">
				<div class="offset-md-4 col-md-4" id="rows">
				<input
				type="Submit" value="Save phone" class="btn btn-outline-dark" id="hover">
				<a class="btn btn-outline-dark" href="/SimpleWebProject/PhoneServlet" id="hover">Cancel</a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>