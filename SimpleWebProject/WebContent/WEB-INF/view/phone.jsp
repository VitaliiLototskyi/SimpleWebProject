<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
		integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
		crossorigin="anonymous">
	<link href="css/index.css" rel="stylesheet">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script type="text/javascript">
	function doDelete(id) {
		if (confirm("This phone will be deleted")) {
			window.location.href = "PhoneDeleteServlet?phoneId="+id;
		}
	}
</script>
</head>
<body
	style="background-image: url('img/BG1.jpg')">
	<p>
		<a href="/SimpleWebProject" class="btn btn-outline-dark " id="hover"> &lArr; Back to main menu</a>
		<a href="/SimpleWebProject/Logout" class="btn btn-outline-dark " id="hover"> &lArr; Logout</a>
	</p>
	<a href="PhoneEditServlet" class="btn btn-outline-dark " id="hover"> &rArr; Add New Phone</a>
		<div class=" offset-3 col-md-8 " >
			<h1>Phone List</h1>
			<c:forEach items="${phones}" var="phone">
				<div class="phoneTradeMark" >
				<span>${phone.tradeMark} ${phone.name}</span>
					<table class="table_block" cellspacing="15px" cellpadding="15px">
					   <tr> 
						    <td class="leftcol"><img src="FileDownload?fileName=${phone.imagename}" 
						    width="200" height="200" alt=""></td>
						    <td valign="middle" >"Lorem ipsum dolor sit amet,
									consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
									labore et dolore magna aliqua. Ut enim ad minim veniam, quis
									nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
									consequat. Duis aute irure dolor in reprehenderit in voluptate
									velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
									occaecat cupidatat non proident, sunt in culpa qui officia
									deserunt mollit anim id est laborum."
							</td>
							<td>
								<a href="PhoneEditServlet?phoneId=${phone.id}" class="btn btn-outline-dark btn-sm" id="btnInList">Edit</a>
								<a href="#" onclick="doDelete(${phone.id})" class="btn btn-outline-dark btn-sm" id="btnInList">Delete</a>
							</td>
					   </tr>
				  </table>
				</div>
			</c:forEach>
		</div>
</body>
</html>