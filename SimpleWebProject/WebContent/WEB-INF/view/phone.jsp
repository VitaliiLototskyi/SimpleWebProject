<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
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
	style="background-image: url('http://yiworks.com/wp-content/uploads/2016/11/Light-Grey-Background-Hd-5-1-1024x640.jpg')">
	<p>
		<a href="/SimpleWebProject" class="btn btn-outline-dark "> &lArr; Back to main menu</a>
	</p>
	<a href="PhoneEditServlet" class="btn btn-outline-dark "> &rArr; Add New Phone</a>
<!-- 	<table border="1"> -->
<!-- 		<thead> -->
<!-- 			<tr> -->
<!-- 				<th>ID</th> -->
<!-- 				<th>Name</th> -->
<!-- 				<th>TradeMark</th> -->
<!-- 				<th>&nbsp;</th> -->
<!-- 			</tr> -->
<!-- 		</thead> -->
<!-- 		<tbody> -->
			
<%-- 			<c:forEach items="${phones}" var="phone"> --%>
<!-- 				<tr> -->
<%-- 					<td>${phone.id}</td> --%>
<%-- 					<td>${phone.tradeMark}</td> --%>
<%-- 					<td>${phone.name}</td> --%>
<%-- 					<td><a href="PhoneEditServlet?phoneId=${phone.id}">Edit</a> <a --%>
<%-- 						href="#" onclick="doDelete(${phone.id})">Delete</a></td> --%>
<!-- 				</tr> -->
<%-- 			</c:forEach> --%>
<!-- 		</tbody> -->

<!-- 	</table> -->
		<div class=" offset-3 col-md-8 " >
			<h1>Phone List</h1>
			<c:forEach items="${phones}" var="phone">
				<div class="phoneTradeMark" >
				<span>${phone.tradeMark}${phone.name}</span>
					<table width="80%" cellspacing="15px" cellpadding="15px" style="border: 1px solid grey; margin-top: 1%; margin-bottom: 1%">
					
					   <tr> 
						    <td class="leftcol"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8YtJGqJe4CKjUEX1miQ4JLKNJVtYkn7ls9-r_hefdvQHOFgC0OA" 
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
								<a href="PhoneEditServlet?phoneId=${phone.id}" class="btn btn-outline-dark btn-sm" style="width: 60px; margin-bottom: 5px">Edit</a>
								<a href="#" onclick="doDelete(${phone.id})" class="btn btn-outline-dark btn-sm" style="width: 60px">Delete</a>
							</td>
							
					   </tr>
				  </table>
				</div>
				<div class="phoneSpecs">
				
				</div>
			</c:forEach>
		</div>



</body>
</html>