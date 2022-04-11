<%@ page import="Project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
<%
 try{
	 Connection con=ConnectionProvider.getCon();
	 Statement st=con.createStatement();
	 String sql="create table users(name varchar(100) , email varchar(100) primary key,mobile varchar(10),security varchar(200) , answer varchar(200) ,password varchar(9) , address varchar(400),city varchar(100) , state varchar(100), country varchar(50) )";
     String sql1="create table product(id int, name varchar(500),price int,active varchar(20))";
	 String sql2="create table cart(email varchar(100),product_id varchar, quantity varchar, price varchar,total varchar, address varchar(500), city varchar, state varchar(100), country varchar(10), mobile varchar(100), orderDate varchar(100), deliveryDate varchar(100), paymentmethod varchar(100), transactionid varchar(100),status varchar(10))";
     System.out.println(sql1);
     System.out.println(sql);
     System.out.println(sql2);
     //st.execute(sql);
     //st.execute(sql1);
     st.execute(sql2);
     System.out.println("table created");
     con.close();
     
 }
 catch(Exception e)
 {
	 e.getMessage();
	 
 }
 %>