<!DOCTYPE html>
<html>
<head>
<title>forgot ???</title>
</head>
<body>

<div style="margin:0 auto;text-align:center;display:inline">

<h3>Forgot Password? </h3>

<%
// Print prior error login message if present
if (session.getAttribute("loginMessage") != null)
	out.println("<p>"+session.getAttribute("loginMessage").toString()+"</p>");
%>



<br>

<form name="MyForm" method=post action="passRecovery.jsp">
<table style="display:inline">
	<tr>
		<td>username</td>
		<td><input type="text" name="username" /></td>
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

