<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%
     String uName=request.getParameter("uname");
     String fName=request.getParameter("fname");
   String date=request.getParameter("date");
    int contact=Integer.parseInt(request.getParameter("cont"));
    String email=request.getParameter("email");
    String pAddr =request.getParameter("paddr");
    String dAddr=request.getParameter("daddr");
            //step1
            Class.forName("com.mysql.jdbc.Driver");
            //step2
            Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/theshiftinghub","root","root");
            //step3
            PreparedStatement st=connection.prepareStatement("insert into shifttable(username,fullname,dos,contact,emailid,pickupaddr,deliveryaddr) values(?,?,?,?,?,?,?)");
            
            st.setString(1,uName);
            st.setString(2,fName);
            st.setString(3,date);
            st.setInt(4,contact);
            st.setString(5,email);
            st.setString(6,pAddr);
            st.setString(7,dAddr);
            
            //step4
            int i=st.executeUpdate();
            connection.close();
            if (i > 0) {
%>
        <script>
            alert('Booked successfully!');
            window.location.href = 'loginpage.jsp';
        </script>
<%
    } else {
%>
        <script>
            alert('Something went wrong!');
            history.back();
        </script>
<%
    }
 
       %>
       
      