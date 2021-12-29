<%@ page import = "java.sql.*"%>
<%
String adminusername, adminpwd;
        adminusername=request.getParameter("adminusername");
	adminpwd=request.getParameter("adminpwd");
	Class.forName("com.mysql.jdbc.Driver");
 	Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/teachersdata","root","HemaMurali@3214");
	Statement s =c.createStatement();
	ResultSet rs=s.executeQuery("select * from admin where adminusername='"+adminusername+"' and adminpwd='"+adminpwd+"'");
        if(rs.next())
        {
        %>
         <jsp:forward page="adminlogin.html"/>
        <%
        }
        else
        {
        %>
         <jsp:forward page="home.html"/>
        <%
         }

%>