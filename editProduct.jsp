<%@ page import="Project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%@ include file="adminHeader.jsp"%>
<%@ include file="footer.jsp"%>
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Add New Product</title>
<style>
.back
{
  color: white;
  margin-left: 2.5%
}
</style>
</head>
<body>
<%
String id=request.getParameter("id");
try{
	Connection con = ConnectionProvider.getCon();
	Statement st= con.createStatement();
	ResultSet rs= st.executeQuery("select * from product where id='"+id+"'");
	while(rs.next())
	{
	
%>
 <h2><a class="back" href="allProductEditProduct.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></h2>


<form action="newAllProductEditProduct.jsp?id=<%= rs.getString(1) %>"><div class="left-div">
 <h3>Enter Name</h3>
<input class="input-style" type="text" name="name" value="<%=rs.getString(2) %>" required>
<hr>
</div>

<div class="right-div">
<h3>Enter Category</h3>
 <input class="input-style" type="text" name="category" value="<%=rs.getString(5) %>" required/>
<hr>
</div>

<div class="left-div">
<h3>Enter Price</h3>
 <input class="input-style" type="text" name="price" value="<%=rs.getString(3) %>" required/>
<hr>
</div>

<div class="right-div">
<h3>Active</h3>
 <input class="input-style" type="text" name="active" value="<%=rs.getString(4) %>" required/>
 <hr>
</div>
 <button class="button"> Save  <i class='far fa-arrow-alt-circle-right'></i></button>
<%}
	}catch(Exception e)
	{
	System.out.println(e);
	}
	
	%>

</form>

</body>
<br><br><br>
</body>
</html>