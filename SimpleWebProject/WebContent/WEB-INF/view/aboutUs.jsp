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
	<a href="/SimpleWebProject" class="btn btn-outline-dark" id="hover">
		&lArr; Back to main menu</a>
	<div class="row">
		<div class="offset-md-2 col-md-8 " id="aboutText">
			<h1>Small steps, Big results. It is all about us!</h1>
		</div>
		<div class="offset-md-2 col-md-8">
			<img alt="office" id="office"
				src="https://www.edmonton.ca/programs_services/documents/Images/community_construct_800x450.jpg">
		</div>
		<div class="offset-md-2 col-md-8" id="aboutText">
			<p>Nullam fringilla metus elit, luctus bibendum mauris fringilla
				in. In ut volutpat lectus. Pellentesque tincidunt sollicitudin diam.
				Praesent varius justo id sem mattis, in lobortis nibh vehicula.
				Proin sollicitudin in felis eu vehicula. Curabitur elementum dolor
				ante, non scelerisque risus lacinia finibus. Duis quis interdum
				neque. Sed pulvinar blandit consequat. Morbi sed congue nulla.</p>
			<p>Fusce sed hendrerit ante, faucibus vestibulum lorem. Cras non
				pretium velit, eget posuere elit. Phasellus quis odio lobortis ex
				facilisis varius in quis magna. Proin viverra, metus eget maximus
				viverra, nunc odio dictum quam, interdum eleifend quam ex vitae
				nulla. Class aptent taciti sociosqu ad litora torquent per conubia
				nostra, per inceptos himenaeos. Morbi eget lectus ullamcorper,
				eleifend orci sit amet, sagittis quam. Vivamus euismod ipsum ac
				tortor laoreet placerat. Nulla accumsan quam in nulla tincidunt
				ultricies. Maecenas tristique nibh a dapibus euismod. In facilisis,
				justo vel semper faucibus, urna turpis gravida tellus, quis sagittis
				odio augue quis metus. Aliquam consequat non odio vel egestas. Etiam
				nibh eros, efficitur ullamcorper tellus non, porttitor scelerisque
				ex. Nulla facilisi. Maecenas vitae nisl tincidunt, facilisis neque
				a, ultrices leo. Vestibulum ac feugiat dui.</p>
		</div>
	</div>
	<div class="row">
		<div class="col"></div>
		<div class="col" id="divPic">
			<img class="ceoPic" alt="1" src="img/ceo/business-cat.jpg"
				width="200" height="200">
			<p id="paragraph">Morty Smith</p>
			<p>Senior Software Engineer</p>
			<p>Morty leads our engineering team and is responsible for
				WebProject`s underlying technology. His focus and passion is on data
				acquisition and backend architecture / infrastructure.</p>
			<p>
				<strong>Morty`S FAVORITE APPS:</strong><br> Spotify, Yahoo
				Sports, Uber
			</p>
		</div>
		<div class="col" id="divPic">
			<img class="ceoPic" alt="2" src="img/ceo/doggo.jpg" width="200"
				height="200">
			<p id="paragraph">Rick Sanchez</p>
			<p>Founder / CEO</p>
			<p>Rick leads the daily operations at WebProject, including
				product development and global sales. Rick is passionate about
				people, sports, and really efficient processes.</p>
			<p>
				<strong>Rick`s FAVORITE APPS:</strong><br> Day One, CSR
				Classics, Any.DO
			</p>
		</div>
		<div class="col" id="divPic">
			<img class="ceoPic" alt="3" src="img/ceo/Serious_Business_Cat.jpg"
				width="200" height="200">
			<p id="paragraph">Salem Saberhagen</p>
			<p>Chief Analytics Officer</p>
			<p>Salem leads the vision and strategy of WebProject data and
				data science team. His focus is on unlocking the potential of
				WebProject Insights to drive value for our customers.</p>
			<p>
				<strong>Salem`s FAVORITE APPS:</strong><br> Spotify, Flipboard,
				Uber
			</p>
		</div>
		<div class="col"></div>
	</div>
	<div class="row">
		<div class="col">
			<h2 id="center">Location</h2>
		</div>
	</div>
	<div class="row">
		<div class="col"></div>
		<div class="col">
			<p id="desc">
				WebProject, Inc. is headquartered<br> in Lviv, Ukraine.
			</p>
			<p></p>
			<p>
				Ukraine (Headquaters)<br> Fedkovycha St 60<br> Lviv, 00000 Ukraine
			</p>
			<p></p>
			<p></p>
			<p>Boston<br> 132 Lincoln St<br> 3rd Floor Boston,<br> MA 02111</p>

		</div>
		<div class="col">
			<iframe id="maps"
				src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d1286.7561418692342!2d23.99577846408532!3d49.83283117030794!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1suk!2sua!4v1543355200975"
				width="700" height="400" frameborder="0" style="border: 0"
				allowfullscreen></iframe>
		</div>
		<div class="col"></div>
	</div>
</body>
</html>