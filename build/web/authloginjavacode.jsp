    <%@page import="java.sql.*" %>

    <%
        String userName = request.getParameter("username");
        String pwd = request.getParameter("password");
        String role = request.getParameter("role");

        try {
            Class.forName("com.mysql.jdbc.Driver");
             Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/theshiftinghub","root","root");

            if (role.equals("Admin")) {
                PreparedStatement st = connection.prepareStatement("SELECT * FROM admintable WHERE adminid=? AND password=?");
                st.setString(1, userName);
                st.setString(2, pwd);
                ResultSet rs = st.executeQuery();

                if (rs.next()) {
                    response.sendRedirect("admindashboard.jsp");
                } else {
                    out.println("Invalid ID/Password for Admin");
                }

            } 

            else if (role.equals("Product Operator")) {
                PreparedStatement st = connection.prepareStatement("SELECT * FROM employeetable WHERE empid=? AND password=?");
                st.setString(1, userName);
                st.setString(2, pwd);
                ResultSet rs = st.executeQuery();

                if (rs.next()) {
                    response.sendRedirect("productoperatordashboard.jsp");
                } else {
                    out.println("Invalid ID/Password for Product Operator");
                }

            }

            else if (role.equals("Shifting Operator")) {
                PreparedStatement st = connection.prepareStatement("SELECT * FROM employeetable WHERE empid=? AND password=?");
                st.setString(1, userName);
                st.setString(2, pwd);
                ResultSet rs = st.executeQuery();

                if (rs.next()) {
                    response.sendRedirect("shiftoperatordashboard.jsp");
                } else {
                    out.println("Invalid ID/Password for Shifting Operator");
                }

            }

            else if (role.equals("Complain Operator")) {
                PreparedStatement st = connection.prepareStatement("SELECT * FROM employeetable WHERE empid=? AND password=?");
                st.setString(1, userName);
                st.setString(2, pwd);
                ResultSet rs = st.executeQuery();

                if (rs.next()) {
                    response.sendRedirect("complainoperatordashboard.jsp");
                } else {
                    out.println("Invalid ID/Password for Complain Operator");
                }

            }
            else {
                out.println("Invalid role selected.");
            }

            connection.close();

        }
        catch (Exception e) {
            out.println("Error: " + e.getMessage());
        }
    %>
