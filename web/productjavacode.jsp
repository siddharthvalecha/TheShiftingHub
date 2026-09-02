<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%
String fullName=request.getParameter("fname");
String prodName=request.getParameter("pname");
    String descr=request.getParameter("descr");
    int price=Integer.parseInt(request.getParameter("price"));
    String dop=request.getParameter("dop");
    int eprice=Integer.parseInt(request.getParameter("eprice"));
            //step1
            Class.forName("com.mysql.cj.jdbc.Driver");
            //step2
            Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/theshiftinghub","root","root");
            //step3
            PreparedStatement st=connection.prepareStatement("insert into producttable(fullname,prodname, description, price, dop, sellingprice) values(?,?,?,?,?,?)");
            st.setString(1,fullName);
            st.setString(2,prodName);
            st.setString(3,descr);
            st.setInt(4,price);
            st.setString(5,dop);
            st.setInt(6,eprice);
            
            //step4
            int i=st.executeUpdate();
            connection.close();
            if (i > 0) {
%>
        <script>
            alert('Product successfully added!');
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
       
      