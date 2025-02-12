<%@ page import="bean.Collection"%>
<%@ page import="bean.MaterialBean"%>
<%@ page import="dao.CollectionDao"%>
<%@ page import="dao.MaterialDao"%>
<%@ page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
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
/* Your CSS styles */
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
	background-color: #001f3f;
	padding: 40px 0;
	color: #ffffff;
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
	color: #ffffff;
	text-decoration: none;
}

.footer-section a:hover {
	text-decoration: underline;
}

.social-icons a {
	color: #ffffff;
	font-size: 20px;
	margin-right: 10px;
}

.social-icons a:hover {
	color: #adb5bd;
}
</style>
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
					<!-- Collection Dropdown -->
					<li class="nav-item dropdown">
						<button class="btn btn-outline-black btn-black dropdown-toggle"
							type="button" id="collectionsDropdown" data-bs-toggle="dropdown"
							aria-expanded="false">Collections</button>
						<ul class="dropdown-menu" aria-labelledby="collectionsDropdown">
							<%
								CollectionDao collectionDAO = new CollectionDao();
								List<Collection> collections = collectionDAO.getAllCollections(); // Fetch all collections
								if (collections != null && !collections.isEmpty()) {
									for (Collection collection : collections) {
							%>
							<li><a class="dropdown-item"
								href="collectionDetails.jsp?collectionId=<%=collection.getId()%>">
									<%=collection.getCollectionName()%>
							</a></li>
							<%
								}
								} else {
							%>
							<li><a class="dropdown-item" href="#">No Collections
									Available</a></li>
							<%
								}
							%>
						</ul>
					</li>

					<!-- Material Dropdown -->
					<li class="nav-item dropdown">
						<%
							MaterialDao materialDAO = new MaterialDao();
							List<MaterialBean> materials = null;
							try {
								materials = materialDAO.getAllMaterials(); // Method to get all materials
							} catch (Exception e) {
								e.printStackTrace();
							}
						%>
						<button class="btn btn-outline-black btn-black dropdown-toggle"
							type="button" id="materialsDropdown" data-bs-toggle="dropdown"
							aria-expanded="false">Materials</button>
						<ul class="dropdown-menu" aria-labelledby="materialsDropdown">
							<%
								if (materials != null && !materials.isEmpty()) {
									for (MaterialBean material : materials) {
							%>
							<li><a class="dropdown-item"
								href="materialDetails.jsp?materialId=<%=material.getMaterialId()%>"><%=material.getType()%></a></li>
							<%
								}
								} else {
							%>
							<li><a class="dropdown-item" href="#">No Materials
									Available</a></li>
							<%
								}
							%>
						</ul>
					</li>

					<!-- Customer Care -->
					<li class="nav-item dropdown">
						<button class="btn btn-outline-black btn-black dropdown-toggle"
							type="button" id="customerCareDropdown" data-bs-toggle="dropdown"
							aria-expanded="false">Customer Care</button>
						<ul class="dropdown-menu" aria-labelledby="customerCareDropdown">
							<li><a class="dropdown-item" href="feedback.jsp">Feedback</a></li>
							<li><a class="dropdown-item" href="contact.jsp">contact</a></li>

						</ul>
					</li>
				</ul>
				<form class="d-flex me-3" role="search">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-search" type="submit">Search</button>
				</form>
				<div class="d-flex align-items-center gap-3">
					<a href="viewfavorites.jsp"
						class="btn btn-outline-black icon-color"><i
						class="fas fa-heart"></i></a> <a href="Cart.jsp"
						class="btn btn-outline-black icon-color"><i
						class="fas fa-shopping-cart"></i></a> <a href="profile.jsp"
						class="btn btn-outline-black icon-color"><i
						class="fas fa-user"></i> Profile</a> <a href="logout.jsp"><button
							type="button" class="btn btn-black">LogOut</button></a>
				</div>
			</div>
		</div>
	</nav>

	<!-- Product Card Start -->
	<div class="container mt-4">
		<div class="row">
			<!-- First Product Card -->
			<div class="col-md-4">
				<div class="card card-custom">
					<img src="./images/full-shot-girl-posing-pink-dress.jpg"
						class="card-img-top" alt="Product Image" height=610px>
					<div class="card-body">
						<h5 class="card-title">Product 1</h5>
						<p class="card-text">$29.99</p>
						<div class="d-flex justify-content-center">
							<a href="#" class="btn btn-outline-danger btn-custom"><i
								class="fas fa-heart"></i></a> <a href="#"
								class="btn btn-outline-primary btn-custom"><i
								class="fas fa-shopping-cart"></i></a>
						</div>
					</div>
				</div>
			</div>

			<!-- Second Product Card -->
			<div class="col-md-4">
				<div class="card card-custom">
					<img src="./images/model-wearing-beautiful-shade-clothing.jpg"
						class="card-img-top" alt="Product Image" height=610px>
					<div class="card-body">
						<h5 class="card-title">Product 2</h5>
						<p class="card-text">$39.99</p>
						<div class="d-flex justify-content-center">
							<a href="#" class="btn btn-outline-danger btn-custom"><i
								class="fas fa-heart"></i></a> <a href="#"
								class="btn btn-outline-primary btn-custom"><i
								class="fas fa-shopping-cart"></i></a>
						</div>
					</div>
				</div>
			</div>

			<!-- Third Product Card -->
			<div class="col-md-4">
				<div class="card card-custom">
					<img src="./images/sideways-woman-posing-green-house.jpg"
						class="card-img-top" alt="Product Image" height=610px>
					<div class="card-body">
						<h5 class="card-title">Product 3</h5>
						<p class="card-text">$49.99</p>
						<div class="d-flex justify-content-center">
							<a href="#" class="btn btn-outline-danger btn-custom"><i
								class="fas fa-heart"></i></a> <a href="#"
								class="btn btn-outline-primary btn-custom"><i
								class="fas fa-shopping-cart"></i></a>
						</div>
					</div>
				</div>
			</div>
			<!-- fourth Product Card -->
			<div class="col-md-4">
				<div class="card card-custom">
					<img
						src="./images/high-fashion-look-glamor-stylish-sexy-beautiful-young-woman-model-summer-black-hipster-dress.jpg"
						class="card-img-top" alt="Product Image" height=610px>
					<div class="card-body">
						<h5 class="card-title">Product 3</h5>
						<p class="card-text">$49.99</p>
						<div class="d-flex justify-content-center">
							<a href="#" class="btn btn-outline-danger btn-custom"><i
								class="fas fa-heart"></i></a> <a href="#"
								class="btn btn-outline-primary btn-custom"><i
								class="fas fa-shopping-cart"></i></a>
						</div>
					</div>
				</div>
			</div>
			<!-- fifth Product Card -->
			<div class="col-md-4">
				<div class="card card-custom">
					<img src="./images/fashion-portrait-young-elegant-woman.jpg"
						class="card-img-top" alt="Product Image" height=610px>
					<div class="card-body">
						<h5 class="card-title">Product 3</h5>
						<p class="card-text">$49.99</p>
						<div class="d-flex justify-content-center">
							<a href="#" class="btn btn-outline-danger btn-custom"><i
								class="fas fa-heart"></i></a> <a href="#"
								class="btn btn-outline-primary btn-custom"><i
								class="fas fa-shopping-cart"></i></a>
						</div>
					</div>
				</div>
			</div>
			<!-- sixth Product Card -->
			<div class="col-md-4">
				<div class="card card-custom">
					<img src="./images/young-woman-beautiful-yellow-dress.jpg"
						class="card-img-top" alt="Product Image" height=610px>
					<div class="card-body">
						<h5 class="card-title">Product 3</h5>
						<p class="card-text">$49.99</p>
						<div class="d-flex justify-content-center">
							<a href="#" class="btn btn-outline-danger btn-custom"><i
								class="fas fa-heart"></i></a> <a href="#"
								class="btn btn-outline-primary btn-custom"><i
								class="fas fa-shopping-cart"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Product Card End -->

	<!-- Footer Section -->
	<footer class="mt-4">
		<div class="container footer-content">
			<div class="footer-section">
				<h5>About Sleek Silhouettes</h5>
				<p>Your go-to boutique for elegant and stylish clothing
					collections.</p>
			</div>
			<div class="footer-section">
				<h5>Quick Links</h5>
				<ul>
					<li><a href="index.jsp">Home</a></li>
					<li><a href="addcollections.jsp">Collections</a></li>
					<li><a href="addmaterial.jsp">Materials</a></li>
					<li><a href="contact.jsp">Contact Us</a></li>
				</ul>
			</div>
			<div class="footer-section">
				<h5>Follow Us</h5>
				<div class="social-icons">
					<a href="#"><i class="fab fa-facebook-f"></i></a> <a href="#"><i
						class="fab fa-twitter"></i></a> <a href="#"><i
						class="fab fa-instagram"></i></a>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer End -->

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
