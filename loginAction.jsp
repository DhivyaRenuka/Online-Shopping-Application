<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%
	
	 String email = request.getParameter("email");
	String pass = request.getParameter("pass");
	if("admin@gmail.com".equals(email) && "admin".equals(pass))
	{
		session.setAttribute("email", email);
		response.sendRedirect("admin/adminHome.jsp");
	}
	else
	{
		int z=0;
		try
		{
			Connection con = ConnectionProvider.getCon();
			Statement st= con.createStatement();
			ResultSet rs= st.executeQuery("select * from users where email='"+email+"' and password='"+pass+"'");
		
			while(rs.next())
			{
				z=1;
				session.setAttribute("email",email);
				System.out.println("sign in successfully");
				response.sendRedirect("home.jsp");
			}
			if(z==0)
			{
				response.sendRedirect("login.jsp?msg=invalid");
			}
				
			
		}
		catch(Exception e)
		{
			System.out.println(e);
		
			response.sendRedirect("login.jsp?msg=notexist");
			System.out.println("Invalid");
			e.getMessage();
		
		}
	}
	
%>