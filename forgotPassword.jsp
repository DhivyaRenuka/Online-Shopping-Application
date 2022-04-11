<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="forgetPasswordAction.jsp" method="post">
     <input
					type="text" name="email"
					placeholder="Enter Email" required />
					
					<input
					type="number" name="mobile"
					placeholder="Enter Mobile :ex:9876543332" required /> 
					<select
					name="SecurityQues">
					<option value="What is the first School ?">What is the
						first School ?</option>
					<option value="What is the name of the first pet?">What is
						the name of the first pet?</option>
					<option value="What is the first car name?">What is the
						first car name?</option>
					<option value="What is name of the favourite picnic spot?">
					What
						is name of the favourite picnic spot?</option>
				</select> 
				<input type="text" name="answer" placeholder="Answer:ex:audi"
					required />
					<input type="password" name="pass"
					placeholder="New Password (Min 8 char)" required /> 
					<input
					type="submit" value="Save">
  
  </form>
     </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
  <%
  
  String msg=request.getParameter("set");
  if("done".equals(msg))
  {
  %>
   
<h1 style="color:green;">Password Changed Successfully!</h1>
<%}
  if("invalid".equals(msg))
  {
  %>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
    <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>
</body>
</html>