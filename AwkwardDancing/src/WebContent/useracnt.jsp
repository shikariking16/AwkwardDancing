<!DOCTYPE html>
<html>
<head>
<title>Create new Account</title>
</head>
<body>

<div style="margin:0 auto;text-align:center;display:inline">

<h3>Create new Account</h3>

<%
// Print prior error login message if present
if (session.getAttribute("loginMessage") != null)
	out.println("<p>"+session.getAttribute("loginMessage").toString()+"</p>");
%>



<br>

<form name="MyForm" method=post action="userRegister.jsp">
<table style="display:inline">
	<tr>
		<td>First Name</td>
		<td><input type="text" name="first_name" /></td>
</tr>
<tr>
		<td>Last Name</td>
		<td><input type="text" name="last_name" /></td>
</tr>
<tr>
		<td>UserName</td>
		<td><input type="text" name="username" /></td>
</tr>
		<tr>
		<td>Password</td>
		<td><input type="password" name="password" /></td>
</tr>
<tr>
		<td>email</td>
		<td><input type="text" name="email" /></td>
</tr>
</table>

<br/>
<input class="submit" type="submit" name="Submit2" value="Log In">
</form>

</div>

</body>
</html>

