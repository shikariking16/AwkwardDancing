<%@ page language="java" import="java.io.*,java.sql.*"%>
<%@ include file="jdbc.jsp" %>

<%
String confirm = null;
	session = request.getSession(true);
	try
	{
		confirm = userRegister(out,request,session);
	}
	catch(IOException e)
	{	System.err.println(e); }

	if(confirm != null){
		response.sendRedirect("index.jsp"); // Successful registration, send to main
		//session.setAttribute("authenticatedUser",username); //sets login

	} else response.sendRedirect("useracnt.jsp"); //try again, blank field or something
%>

<%!
String userRegister(JspWriter out,HttpServletRequest request, HttpSession session) throws IOException
{
	String first_name = request.getParameter("first_name");
	String last_name = request.getParameter("last_name");
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String email = request.getParameter("email");

	if(username == null || password == null || first_name ==null|| last_name==null || email==null)
				return null;
		if((username.length() == 0) || (password.length() == 0) || (first_name.length() == 0) || (last_name.length() == 0) || (email.length() == 0))
				return null;

	try{
		getConnection();
		Statement stmt = con.createStatement(); 
		stmt.execute("USE orders");
		String sql = "INSERT INTO customer(firstName, lastName, userid, password, email) VALUES(?,?,?,?,?)";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, first_name);
		pstmt.setString(2, last_name);
		pstmt.setString(3, username);
		pstmt.setString(4, password);
		pstmt.setString(5, email);
 
	
	}
	catch (SQLException ex) {
	out.println(ex);
	}
	session.setAttribute("authenticatedUser",username); //logs user in
	return username;
}	
%>

