<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head></head>
<body style="background-image: url('http://yiworks.com/wp-content/uploads/2016/11/Light-Grey-Background-Hd-5-1-1024x640.jpg');">
	<div class="container">
		<form action="PhoneEditServlet" method="post">
			<div class="row" style="margin-top: 10%">
				<div class="offset-md-4 col-md-4">
					<h1>Edit page :</h1>
					<h1>  ${phone.name} ${phone.tradeMark}</h1>
					<input type="hidden" value="${phone.id}" name="id" class="form-control">
				</div>
			</div>
			<div class="row">
				<div class="offset-md-4 col-md-4" style="margin-top: 1%">
					<input type="text" name="tradeMark" value="${phone.tradeMark}"
					placeholder="Enter tradeMark" class="form-control">
				</div>
			</div>
			<div class="row">
				<div class="offset-md-4 col-md-4" style="margin-top: 1%">
				 <input type="text" name="name"
				value="${phone.name}" placeholder="Enter Name" class="form-control">
				</div>
			</div>
			<div class="row">
				<div class="offset-md-4 col-md-4" style="margin-top: 1%">
				<input
				type="Submit" value="Save phone" class="btn btn-outline-dark">
				<a class="btn btn-outline-dark" href="/SimpleWebProject/PhoneServlet">Cancel</a>
				</div>
			</div>
			
			
			
	<%-- 		<input type="hidden" value="${phone.id}" name="id"> <input --%>
	<%-- 			type="text" name="tradeMark" value="${phone.tradeMark}" --%>
	<!-- 			placeholder="Enter tradeMark"> <input type="text" name="name" -->
	<%-- 			value="${phone.name}" placeholder="Enter Name"> <input --%>
	<!-- 			type="Submit" value="Save phone" class="btn btn-outline-dark"> -->
		</form>
	</div>
</body>
</html>