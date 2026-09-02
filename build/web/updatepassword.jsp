<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.ResultSet" %>


<%
    String userName=request.getParameter("uname");
    String oldPwd=request.getParameter("opwd");
    String newPwd=request.getParameter("npwd");
    
    
      Class.forName("com.mysql.jdbc.Driver");
            //step2
            Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root");
            //step3
            PreparedStatement st=connection.prepareStatement("select * from usertable1 where username=? and password=? ");
            st.setString(1,userName);
            st.setString(2,oldPwd);
            ResultSet rs=st.executeQuery();
            if(rs.next())
            {
            String fullName = rs.getString("fullname"); //  get fullname from DB
        session.setAttribute("fullname", fullName); // store in 
        
         PreparedStatement st1=connection.prepareStatement("update usertable1 set password=? where username=? ");
         st1.setString(1,newPwd);
         st1.setString(2,userName);
         st1.executeUpdate();
           response.sendRedirect("loginpage.jsp?msg=updated");
        } else {
            out.println("<script>alert('Invalid ID or Password'); window.history.back();</script>");
        }
             
            connection.close();
          
%>
