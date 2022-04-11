<%@ page errorPage="error.jsp" %>

<html>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
    <!--Header-->
    <br>
    <div class="topnav sticky">
   <% String email=session.getAttribute("email").toString(); %>
            <center><h2>Online shopping Application</h2></center>
            <a href="addNewProduct.jsp">Add New Product <i class='fas fa-plus-square'></i></a>
            <a href="allProductEditProduct.jsp">All Products & Edit Products <i class='fab fa-elementor'></i></a>          
            <a href="../logout.jsp">Logout <i class='fas fa-share-square'></i></a>
          </div>
           <br>
           <!--table-->
