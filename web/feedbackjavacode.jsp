<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%

    String fName=request.getParameter("name");
    String feedback=request.getParameter("message");
    String rating =request.getParameter("rating");
            //step1
            Class.forName("com.mysql.jdbc.Driver");
            //step2
             Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/theshiftinghub","root","root");
            //step3
            PreparedStatement st=connection.prepareStatement("insert into feedback(fullname,feedback,ratings) values(?,?,?)");
            st.setString(1,fName);
            st.setString(2,feedback);
            st.setString(3,rating);
            //step4
            int i=st.executeUpdate();
            connection.close();
            if (i > 0) {
%>
        <script>
            alert('Your feedback has been recorded\n\
                    Thanks for your valuable feedback.');
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
       
      