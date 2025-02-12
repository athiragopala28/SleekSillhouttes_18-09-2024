<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style>
.navbar-brand {
	flex-grow: 1;
	font-size: 1.5rem;
	text-align: left;
}

.navbar-nav .nav-item {
	margin-right: 10px;
}

.icon-color {
	color: #000000;
}

.btn-black {
	color: #000000;
	border-color: #000000;
	background-color: #ffffff;
}

.btn-black:hover {
	color: #000000;
	background-color: #f0f0f0;
	border-color: #000000;
}

.btn-search {
	color: #000000;
	border-color: #000000;
	background-color: #ffffff;
}

.btn-search:hover {
	color: #000000;
	background-color: #f0f0f0;
	border-color: #000000;
}

.form-control {
	border-color: #4caf50;
}

footer {
	background-color: #001f3f; /* Navy blue */
	padding: 40px 0;
	color: #ffffff; /* White text color for contrast */
	border-top: 1px solid #dee2e6;
}

.footer-content {
	display: flex;
	justify-content: space-between;
	gap: 20px;
	flex-wrap: wrap;
}

.footer-section {
	flex: 1;
	min-width: 200px;
}

.footer-section h5 {
	font-weight: bold;
	margin-bottom: 15px;
}

.footer-section ul {
	list-style: none;
	padding: 0;
}

.footer-section ul li {
	margin-bottom: 10px;
}

.footer-section a {
	color: #ffffff; /* White link color */
	text-decoration: none;
}

.footer-section a:hover {
	text-decoration: underline;
}

.social-icons a {
	color: #ffffff; /* White icon color */
	font-size: 20px;
	margin-right: 10px;
}

.social-icons a:hover {
	color: #adb5bd; /* Light gray on hover */
}
</style>
<title>Sleek Silhouettes</title>
</head>
<body>

	<nav class="navbar navbar-expand-lg bg-body-tertiary">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Sleek Silhouettes</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item dropdown">
						<button class="btn btn-outline-black btn-black dropdown-toggle"
							type="button" id="womenDropdown" data-bs-toggle="dropdown"
							aria-expanded="false">Women</button>
						<ul class="dropdown-menu" aria-labelledby="womenDropdown">
							<li><a class="dropdown-item" href="#">Clothing</a></li>
							<li><a class="dropdown-item" href="#">Bags</a></li>
							<li><a class="dropdown-item" href="#">Accessories</a></li>
						</ul>
					</li>
					<li class="nav-item dropdown">
						<button class="btn btn-outline-black btn-black dropdown-toggle"
							type="button" id="discountDropdown" data-bs-toggle="dropdown"
							aria-expanded="false">Discount</button>
						<ul class="dropdown-menu" aria-labelledby="discountDropdown">
							<li><a class="dropdown-item" href="#">10% Off</a></li>
							<li><a class="dropdown-item" href="#">20% Off</a></li>
							<li><a class="dropdown-item" href="#">30% Off</a></li>
							<li><a class="dropdown-item" href="#">40% Off</a></li>
							<li><a class="dropdown-item" href="#">50% Off</a></li>
						</ul>
					</li>
					<li class="nav-item dropdown">
						<button class="btn btn-outline-black btn-black dropdown-toggle"
							type="button" id="customerCareDropdown" data-bs-toggle="dropdown"
							aria-expanded="false">Customer Care</button>
						<ul class="dropdown-menu" aria-labelledby="customerCareDropdown">
							<li><a class="dropdown-item" href="#">Contact Us</a></li>
							<li><a class="dropdown-item" href="#">FAQ</a></li>
							<li><a class="dropdown-item" href="#">Return Policy</a></li>
							<li><a class="dropdown-item" href="#">Shipping
									Information</a></li>
							<li><a class="dropdown-item" href="#">Feedback</a></li>
						</ul>
					</li>
				</ul>
				<form class="d-flex me-3" role="search">
					<input class="form-control me-2" type="search"
						placeholder="Sleek Silhouettes" aria-label="Sleek Silhouettes">
					<button class="btn btn-search" type="submit">Search</button>
				</form>
				<div class="d-flex align-items-center gap-3">
					<a href="#" class="btn btn-outline-black icon-color"><i
						class="fas fa-heart"></i></a> <a href="#"
						class="btn btn-outline-black icon-color"><i
						class="fas fa-shopping-cart"></i></a> <a href="login.jsp"><button
							type="button" class="btn btn-black">Login/Register</button></a>
				</div>
			</div>
		</div>
	</nav>

	<!-- Carousel Section -->
	<div id="carouselExampleIndicators" class="carousel slide">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="./images/corosel1.jpg" class="d-block w-100"
					height="800px" alt="Slide 1">
			</div>
			<div class="carousel-item">
				<img src="./images/carosel2.jpg" class="d-block w-100"
					height="800px" alt="Slide 2">
			</div>
			<div class="carousel-item">
				<img src="./images/carosel3.jpg" class="d-block w-100"
					height="800px" alt="Slide 3">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

	<footer>
		<div class="container">
			<div class="footer-content">
				<div class="footer-section">
					<h5>More About Shopping from Sleek Silhouettes</h5>
					<ul>
						<li><a href="#">Sleek Silhouettes</a></li>
						<li><a href="#">Join Our Team</a></li>
						<li><a href="#">Terms and Conditions</a></li>
						<li><a href="#">We Respect Your Privacy</a></li>
						<li><a href="#">Return and Refund Policy</a></li>
					</ul>
				</div>
				<div class="footer-section">
					<h5>Help</h5>
					<ul>
						<li><a href="#">Track Your Order</a></li>
						<li><a href="#">Returns</a></li>
						<li><a href="#">Cancellations</a></li>
						<li><a href="#">Payments</a></li>
						<li><a href="#">Customer Care</a></li>
					</ul>
				</div>
				<div class="footer-section">
					<h5>Shop By</h5>
					<ul>
						<li><a href="#">Women</a></li>
						<li><a href="#">Kids</a></li>
						<li><a href="#">Accessories</a></li>
					</ul>
				</div>
				<div class="footer-section">
					<h5>Contact Us</h5>
					<ul>
						<li><a href="#">support@sleeksilhouettes.com</a></li>
						<li><a href="#">+91 123 456 7890</a></li>
						<li><a href="#">1234 Fashion St, City, Country</a></li>
					</ul>
				</div>
			</div>
			<div class="text-center">
				<div class="social-icons">
					<a href="https://facebook.com" target="_blank"><i
						class="fab fa-facebook-f"></i></a> <a href="https://twitter.com"
						target="_blank"><i class="fab fa-twitter"></i></a> <a
						href="https://instagram.com" target="_blank"><i
						class="fab fa-instagram"></i></a> <a href="https://linkedin.com"
						target="_blank"><i class="fab fa-linkedin-in"></i></a>
				</div>
				<p>&copy; 2024 Sleek Silhouettes. All rights reserved.</p>
			</div>
		</div>
	</footer>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
