<!DOCTYPE html>

<html>
<head>
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
		integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
		crossorigin="anonymous">
	<link href="css/index.css" rel="stylesheet">	
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
	<meta charset="UTF-8">
</head>
<body style="background-image: url('img/BG1.jpg')">
	<nav class="navbar navbar-expand-lg navbar-light bg-dark" id="navbar">
		<a class="navbar-brand" href="/SimpleWebProject/PhoneServlet"> 
			<img class="icon"src="https://cnet2.cbsistatic.com/img/l039Lfb4qNoGK4fAyJidYF2I3jE=/1148x646/2018/02/21/6d79ffa8-c0ad-4477-90e0-d9c831692b5b/05-samsung-galaxy-s9-and-s9-plus.jpg" alt="">
		</a>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">
				<li class="nav-item active" id="navItem1"><a class="nav-link" href="http://localhost:8080/SimpleWebProject/PhoneServlet" ><font id="hover"
						color="white">Phone List</font> <span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item"><a class="nav-link" href="/SimpleWebProject/FileUpload"><font color="white" id="hover">File upload</font></a></li>
				<li class="nav-item"><a class="nav-link" href="/SimpleWebProject/AboutUsServlet"><font color="white" id="hover">About us</font></a></li>
			</ul>
		</div>
		<a class="nav-link" href="/SimpleWebProject/RegisterServlet" id="navItem1" >
			<font color="white" id="hover">Register</font>
		</a>
		 <a class="nav-link" href="/SimpleWebProject/LoginServlet"><font color="white" id="hover">Login</font></a>
		 
	</nav>
	<script type="text/javascript">
		$('.carousel').carousel({
		  interval: 2000
		})
	</script>
	<div class="offset-md-2 col-md-8"><p id="thinkDifferent">Think Different</p></div>
	<div class="offset-md-2 col-md-8" id="divCarousel">
		<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
			</ol>
			<div class="carousel-inner" >
				<div class="carousel-item active">
					<img 
						src="img/phone1.jpg"
						alt="First slide">
				</div>
				<div class="carousel-item">
					<img 
						src="img/pic2.jpg"
						alt="Second slide">
				</div>
				<div class="carousel-item">
					<img 
						src="img/pic3.jpg"
						alt="Third slide">
				</div>
				<div class="carousel-item">
					<img 
						src="img/pic4.jpg"
						alt="Third slide">
				</div>
				<div class="carousel-item">
					<img 
						src="img/pic5.jpg"
						alt="Third slide">
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
				    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				    <span class="sr-only">Previous</span>
		  	</a>
		    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="sr-only">Next</span>
		    </a>
		 </div>
	 </div>
</body>
</html>