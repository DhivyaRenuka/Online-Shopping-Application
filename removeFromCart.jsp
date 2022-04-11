<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%
 String email=session.getAttribute("email").toString();
String id=request.getParameter("id");
try
{
	Connection con = ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("delete from cart where email='"+email+"' and product_id='"+id+"' and address is NULL");
	response.sendRedirect("myCart.jsp?msg=remove");
}catch(Exception e)
{
	System.out.println(e);
}
%>