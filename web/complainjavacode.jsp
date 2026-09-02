<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>

<%
    String fName = request.getParameter("fname");
    String complainDesc = request.getParameter("desc"); // assuming form field is "desc"

    // Get current system date in desired format
    Date currentDate = new Date();
    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
    String doc = formatter.format(currentDate);  // formatted date string

    String status = "Pending";

    try {
        // Step 1: Load MySQL driver
        Class.forName("com.mysql.jdbc.Driver");

        // Step 2: Establish connection
        Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/theshiftinghub","root","root");

        // Step 3: Prepare statement
        PreparedStatement st = connection.prepareStatement(
            "INSERT INTO complaintable(fullname, complaindesc, dateofcomplain, status) VALUES (?, ?, ?, ?)"
        );

        st.setString(1, fName);
        st.setString(2, complainDesc);
        st.setString(3, doc);
        st.setString(4, status);

        // Step 4: Execute
        int i = st.executeUpdate();
        connection.close();

        if (i > 0) {
%>
            <script>
                alert('Your complaint has been recorded.\nSorry for the inconvenience ?');
                window.location.href = 'loginpage.jsp';
            </script>
<%
        } else {
%>
            <script>
                alert('Something went wrong while submitting your complaint!');
                history.back();
            </script>
<%
        }
    } catch (Exception e) {
%>
        <script>
            alert('Error: <%= e.getMessage() %>');
            history.back();
        </script>
<%
    }
%>
