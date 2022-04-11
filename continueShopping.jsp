<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<%@ include file="footer.jsp"%>
<%@ page import="Project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%
String email3=session.getAttribute("email").toString();
String status="processing";
try
{
	Connection con = ConnectionProvider.getCon();
    PreparedStatement ps = con.prepareStatement("update cart set status=? where email=? and status='bill'");
	ps.setString(1, status);
	ps.setString(2, email3);
	ps.executeUpdate();
	response.sendRedirect("home.jsp");
	
}
catch(Exception e)
{
	System.out.println(e);
}
%>
