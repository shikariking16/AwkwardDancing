<!DOCTYPE html>
<html>
<head>
        <title>Awkward Dancing Vinyl Main Page</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<link rel="stylesheet" href="css/main-menu.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>

<body>

	<nav class="navbar2 navbar-custom my-nav-font">
		<div class="container-fluid">
		  <div class="navbar-header">
			
		  </div>
		  <ul class="navbar navbar-nav">
			<li><a href="login.jsp">Login</a></li>
			<li><a href="logout.jsp">Logout</a></li>
			<li><a href="customer.jsp">Customer Info</a></li>
			<li><a href="useracnt.jsp">Create Account</a></li>
			<li><a href="acntRecovery.jsp">Forgot Password</a></li>
			<li><a href="admin.jsp">Administrators</a></h2></li>
		
			
		  </ul>
		</div>
	  </nav>

<div>
	<ul>
	
		<li><a href="listprod.jsp">Begin Shopping</a></li>
		<li><a href="index.jsp" class = "main-center">Awkward Dancing Vinyl</a></li>
		<li><a href="listorder.jsp" >List All Orders</a></li>
	
		
	</ul>

	<hr size="10" width="90%" color="black">
	<img src="https://images.the500hiddensecrets.com/2020-02/182-toronto-tiny_record_store.jpg?auto=format&fit=max&h=1080&ixlib=php-1.1.0&q=65&w=1920&s=455c9506df5397f87b101f0c386fedc6" alt="Italian Trulli" style="width:700px;height:500px;" class = "center">
	<hr size="10" width="90%" color="black">
</div>

<%
	String userName = (String) session.getAttribute("authenticatedUser");
	if (userName != null)
		out.println("<h3 align=\"center\">Signed in as: "+userName+"</h3>");
%>
</body>
</head>


