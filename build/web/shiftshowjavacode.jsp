<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.ResultSet" %>
<%
    String userName = (String) session.getAttribute("username");
    if (userName == null) {
        userName = "User";
    }

    String pickup = "", drop = "", dos = "";

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
         Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/theshiftinghub","root","root");

        PreparedStatement st = connection.prepareStatement("SELECT pickupaddr, deliveryaddr, dos FROM shifttable WHERE username = ?");
        st.setString(1, userName);

        ResultSet rs = st.executeQuery();

        if (rs.next()) {
            pickup = rs.getString("pickupaddr");
            drop = rs.getString("deliveryaddr");
            dos = rs.getString("dos");
        }

        connection.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
