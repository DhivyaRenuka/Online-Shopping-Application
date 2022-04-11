<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="Project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String mobile =request.getParameter("mobile");
	String security = request.getParameter("SecurityQues");
	String answer = request.getParameter("answer");
	String pass = request.getParameter("pass");
	String address = "";
	String city = "";
	String state = "";
	String Country = "";
	try {
		Connection con = ConnectionProvider.getCon();
		PreparedStatement ps = con.prepareStatement("insert into users(name,email,mobile,security,answer,password,address,city,state,country) values(?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1, name);
		ps.setString(2, email);
		ps.setString(3, mobile);
		ps.setString(4, security);
		ps.setString(5, answer);
		ps.setString(6, pass);
		ps.setString(7, address);
		ps.setString(8, city);
		ps.setString(9, state);
		ps.setString(10, Country);
		ps.executeUpdate();
		//System.out.println("Successfully registered");
		response.sendRedirect("signup.jsp?msg=valid");

	} catch (Exception e) {

		System.out.println(e);
		response.sendRedirect("signup.jsp?msg=invalid");
		System.out.println("Invalid");
		e.getMessage();
	}
%>