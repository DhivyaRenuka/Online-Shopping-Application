<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String mobile =request.getParameter("mobile");
//String security = request.getParameter("SecurityQues");
String answer = request.getParameter("answer");
String pass = request.getParameter("pass");
int check=0;
try {
	Connection con = ConnectionProvider.getCon();
	Statement st= con.createStatement();
	ResultSet rs= st.executeQuery("select * from users where email='"+email+"' and mobile='"+mobile+"' and answer='"+answer+"'");

	while(rs.next())
	{
		check=1;
		st.executeUpdate("update  users set password='"+pass+"' where email='"+email+"'");
		System.out.println("Successfully updated the password");
		response.sendRedirect("forgotPassword.jsp?set=done");	
	}
	if(check==0)
	{
		response.sendRedirect("forgotPassword.jsp?set=invalid");
	}

	
	
	

} catch (Exception e) {

	System.out.println(e);
	
	System.out.println("Invalid");
	e.getMessage();
}
%>