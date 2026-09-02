<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.ResultSet" %>
<%
     String username = request.getParameter("username");
    String password = request.getParameter("password");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql", "root", "root");

        // Check if user exists and password matches
        PreparedStatement checkUser = connection.prepareStatement("SELECT * FROM usertable1 WHERE username = ? AND password = ?");
        checkUser.setString(1, username);
        checkUser.setString(2, password);
        ResultSet rs = checkUser.executeQuery();

        if (rs.next()) {
            // Delete the user
            PreparedStatement deleteUser = connection.prepareStatement("DELETE FROM usertable1 WHERE username = ?");
            deleteUser.setString(1, username);
            deleteUser.executeUpdate();

            connection.close();
            out.println("<script>alert('Account deleted successfully!'); window.location='login.jsp';</script>");
        } else {
            connection.close();
            out.println("<script>alert('Invalid username or password.'); window.history.back();</script>");
        }
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>