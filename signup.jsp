<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
	<div id='container'>
		<div class='signup'>
			<form action="SignUpAction.jsp" method="post">
				<input type="text" name="name"
					placeholder="Enter Name :ex:Divya Saravanan" required /> <input
					type="text" name="email"
					placeholder="Email :divyarenu014@gmail.com" required /> <input
					type="number" name="mobile"
					placeholder="Enter Mobile :ex:9876543332" required /> <select
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
				</select> <input type="text" name="answer" placeholder="Answer:ex:audi"
					required /> <input type="password" name="pass"
					placeholder="Password :******* (Min 8 char)" required /> <input
					type="submit" value="SignUp">
			</form>

			<h2>
				<a href="login.jsp">Login</a>
			</h2>
		</div>
		<div class='whysign'>
			<%
				String msg=request.getParameter("msg");
			if("valid".equals(msg))
			{
			%>	
			<h1 style="color:green;">Successfully Updated</h1>
			<% 
			}
			%>
			<%
			if("Invalid".equals(msg))
			{
			%>
			<h1>Some thing Went Wrong! Try Again !</h1>
			<%
			}%>

			<h2>Online Shopping</h2>
			<p>The Online Shopping System is the application that allows the
				users to shop online without going to the shops to buy them.</p>
		</div>
	</div>

</body>
</html>