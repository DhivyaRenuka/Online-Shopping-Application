<%@ page import="Project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<% String id=request.getParameter("id");
String name=request.getParameter("name");
String category=request.getParameter("category");
String price=request.getParameter("price");
String active=request.getParameter("active");
try
{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("insert into product(id,name,price,active,category) values(?,?,?,?,?)");
	ps.setString(1,id);
	ps.setString(2, name);
	ps.setString(3, price);
	ps.setString(4, active);
	ps.setString(5, category);
	ps.executeUpdate();
	System.out.println("Item added");
	response.sendRedirect("addNewProduct.jsp?msg=done");
	

	
}catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("addNewProduct.jsp?msg=error");
}

%>
%>