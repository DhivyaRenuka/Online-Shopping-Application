<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%@ include file="adminHeader.jsp"%>
<%@ include file="footer.jsp"%>
<% int id=Integer.parseInt(request.getParameter("id"));
String name=request.getParameter("name");
String category=request.getParameter("category");
String price=request.getParameter("price");
String active=request.getParameter("active");
try {
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	st.executeUpdate("update  product set name='"+name+"' , category='"+category+"' , price= '"+price+"', active='"+active+"' where id='"+id+"'");
   
	System.out.println("edited successfully");
	if(active.equals("no"))
   {
	   st.executeUpdate("delete from cart where product_id='"+id+"' and address=' '");
   }
   response.sendRedirect("allProductEditProduct.jsp?msg=done");
	
%>
<%

}catch(Exception e)
{
System.out.print(e);
}%>
