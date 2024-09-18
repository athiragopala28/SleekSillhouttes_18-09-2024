<%@ page import="dao.CartDao" %>
<%@ page import="bean.Cartbean" %>
<%@ page import="dbconnection.DBConnection" %>
<%@ page import="java.util.List" %>

<%
    // Check if userId is present in the session
    Integer userId = (Integer) session.getAttribute("userId");
    if (userId == null) {
        // Redirect to login page if user is not logged in
        response.sendRedirect("login.jsp");
        return;
    }

    CartDao cartDao = new CartDao();
    List<Cartbean> cartItems = cartDao.getCartItemsByUserId(userId);
%>

<!DOCTYPE html>
<html>
<head>
    <title>Cart</title>
</head>
<body>
    <h1>Your Cart</h1>
    <table border="1">
        <thead>
            <tr>
                <th>Product Name</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Total</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <% if (cartItems != null && !cartItems.isEmpty()) { %>
                <% for (Cartbean item : cartItems) { %>
                    <tr>
                        <td><%= item.getId() %></td>
                        <td><%= item.getProductId() %></td>
                        <td><%= item.getQuantity() %></td>
                        <td><%= item.getUserId() * item.getQuantity() %></td>
                        <td>
                            <a href="UpdateCart.jsp?productId=<%= item.getProductId() %>">Update</a>
                            <a href="DeleteCart.jsp?productId=<%= item.getProductId() %>">Remove</a>
                        </td>
                    </tr>
                <% } %>
            <% } else { %>
                <tr>
                    <td colspan="5">Your cart is empty.</td>
                </tr>
            <% } %>
        </tbody>
    </table>
    <a href="userdashboard.jsp">Back to Dashboard</a>
</body>
</html>
