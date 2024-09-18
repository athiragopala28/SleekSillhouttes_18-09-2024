<%@ page import="dao.CartDao" %>
<%@ page import="bean.Cartbean" %>
<%@ page import="java.util.List" %>

<%
    int userId = (Integer) session.getAttribute("userId");
    int productId = Integer.parseInt(request.getParameter("productId"));

    CartDao cartDao = new CartDao();
    Cartbean cartItem = null;

    // Retrieve the current cart item details
    List<Cartbean> cartItems = cartDao.getCartItemsByUserId(userId);
    for (Cartbean item : cartItems) {
        if (item.getProductId() == productId) {
            cartItem = item;
            break;
        }
    }

    if (cartItem == null) {
        out.println("Cart item not found.");
        return;
    }

    if (request.getMethod().equalsIgnoreCase("POST")) {
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        boolean success = cartDao.updateCartQuantity(userId, productId, quantity);
        if (success) {
            response.sendRedirect("Cart.jsp");
        } else {
            out.println("Failed to update cart.");
        }
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Update Cart</title>
</head>
<body>
    <h1>Update Cart Item</h1>
    <form method="post">
        <label>getId: <%= cartItem.getId() %></label><br />
        <label>ProductId: <%= cartItem.getProductId() %></label><br />
        <label>Quantity:</label>
        <input type="number" name="quantity" value="<%= cartItem.getQuantity() %>" min="1" required /><br />
        <input type="submit" value="Update" />
    </form>
    <a href="Cart.jsp">Back to Cart</a>
</body>
</html>
