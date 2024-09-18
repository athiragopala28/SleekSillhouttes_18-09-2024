<%@ page import="bean.ContactBean"%>
<%@ page import="dao.ContactDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

.card-custom {
	border: 1px solid #dee2e6;
	border-radius: .375rem;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
</style>
</head>
<body>
	<div class="container mt-4">
		<%
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String message = request.getParameter("message");

			if (name != null && email != null && message != null) {
				ContactBean contact = new ContactBean();
				contact.setName(name);
				contact.setEmail(email);
				contact.setMessage(message);

				ContactDao contactDAO = new ContactDao();
				boolean success = contactDAO.saveContact(contact);

				if (success) {
					out.print("<script>");
					out.print("alert('Your contact information has been submitted successfully!');");
					out.print("window.location.href = 'userdashboard.jsp';");
					out.print("</script>");
				} else {
					out.print("<script>");
					out.print("alert('There was an error processing your request. Please try again later.');");
					out.print("window.location.href = 'userdashboard.jsp';");
					out.print("</script>");
				}
			} else {
				out.print("<script>");
				out.print("alert('All fields are required.');");
				out.print("window.location.href = 'userdashboard.jsp';");
				out.print("</script>");
			}
		%>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"></script>
</body>
</html>
