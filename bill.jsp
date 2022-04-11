<%@ page import="Project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>

<html>
<head>
<link rel="stylesheet" href="css/bill.css">
<title>Bill</title>
</head>
<body>
<%
String email2=session.getAttribute("email").toString();
try
{
	int total=0;
	int sno=0;
	Connection con = ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select sum(cast(total as integer)) from cart where email='"+email2+"' and status='bill'");
	while(rs.next())
	{
		total=rs.getInt(1);
		
	}
	ResultSet rs1=st.executeQuery("select * from users u inner join cart c on u.email='"+email2+"' and c.status='bill'");

	while(rs1.next())
	{



%>
<h3>Online shopping Bill </h3>
<hr>
<div class="left-div"><h3>Name: <%=rs1.getString(1) %> </h3></div>
<div class="right-div-right"><h3>Email:<%=rs1.getString(2) %>   </h3></div>
<div class="right-div"><h3>Mobile Number: <%=rs1.getString(3) %>  </h3></div>  

<div class="left-div"><h3>Order Date: <%=rs1.getString(21) %> </h3></div>
<div class="right-div-right"><h3>Payment Method: <%=rs1.getString(23) %> </h3></div>
<div class="right-div"><h3>Expected Delivery:  <%=rs1.getString(22) %></h3></div> 

<div class="left-div"><h3>Transaction Id:  <%=rs1.getString(24) %></h3></div>
<div class="right-div-right"><h3>City: <%=rs1.getString(8) %> </h3></div> 
<div class="right-div"><h3>Address: <%=rs1.getString(7) %> </h3></div> 

<div class="left-div"><h3>State: <%=rs1.getString(9) %> </h3></div>
<div class="right-div-right"><h3>Country: <%=rs1.getString(10) %> </h3></div>  

<hr>


	
	<br>
	
<table id="customers">
<h3>Product Details</h3>
  <tr>
    <th>S.No</th>
    <th>Product Name</th>
    <th>category</th>
    <th>Price</th>
    <th>Quantity</th>
     <th>Sub Total</th>
  </tr>
  <% break;} 
	ResultSet rs2=st.executeQuery("select * from product p inner join cart c on p.id=c.product_id and c.email='"+email2+"' and c.status='bill' ");
	while(rs2.next())
	{
		sno =sno+1;
	
%>
  <tr>
    <td><%=sno %></td>
    <td><%=rs2.getString(2) %></td>
    <td><%=rs2.getString(5) %></td>
    <td><%=rs2.getString(3) %></td>
    <td><%=rs2.getString(8) %></td>
     <td><%=rs2.getString(10) %></td>
  </tr>
  <tr>
<%} %>
</table>
<h3>Total: <%=total %></h3>
<a href="continueShopping.jsp"><button class="button left-button">Continue Shopping</button></a>
<a onclick="window.print();"><button class="button right-button">Print</button></a>
<br><br><br><br>
<%
	}
	catch(Exception e)
	{
	System.out.println(e);
	}%>
</body>
</html>