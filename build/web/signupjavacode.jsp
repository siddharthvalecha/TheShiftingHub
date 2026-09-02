<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>

<%
    String userName=request.getParameter("uname");
    String pwd=request.getParameter("pwd");
    String fName=request.getParameter("fname");
    String address=request.getParameter("addr");
   double contact=Double.parseDouble(request.getParameter("cont"));
    String email =request.getParameter("email");
    String dob=request.getParameter("dob");
    String gender=request.getParameter("gender");
    String city=request.getParameter("city");
    String nationality=request.getParameter("contr");
    
      Class.forName("com.mysql.cj.jdbc.Driver");
            //step2
         Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/theshiftinghub","root","root");
            //step3
            PreparedStatement st=connection.prepareStatement("insert into usertable1 values(?,?,?,?,?,?,?,?,?,?)");
            st.setString(1,userName);
            st.setString(2,pwd);
            st.setString(3,fName);
            st.setString(4,address);
            st.setDouble(5,contact); 
            st.setString(6,email);
            st.setString(7,dob);
            st.setString(8,gender);
            st.setString(9,city);
            st.setString(10,nationality);
      
           
            
            //step4
            st.executeUpdate();
            connection.close();
            response.sendRedirect("login.jsp");
%>
