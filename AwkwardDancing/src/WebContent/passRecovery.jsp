<%@ page language="java" import="java.io.*,java.sql.*"%>
<%@ include file="jdbc.jsp" %>

<%
String confirm = null;
	session = request.getSession(true);
	try
	{
		confirm = passRecovery(out,request,session);
	}
	catch(IOException e)
	{	System.err.println(e); }

	if(confirm != null){
		response.sendRedirect("acntRecovery.jsp"); 

	} else response.sendRedirect("acntRecovery.jsp"); 
%>

<%!
String passRecovery(JspWriter out,HttpServletRequest request, HttpSession session) throws IOException
{
	
	String username = request.getParameter("username");
	String email = request.getParameter("email");
	String retStr = null;

	if(username == null|| email==null)
				return null;
		if((username.length() == 0) || (email.length() == 0))
				return null;

	try{
		getConnection();
		Statement stmt = con.createStatement(); 
		stmt.execute("USE orders");
		String sql = "SELECT password FROM customer WHERE userId = ? and email = ?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, username);
		pstmt.setString(2, email);
 


		ResultSet rst = pstmt.executeQuery();
		if (rst.next()){

				retStr = rst.getString(1); // succesful recovery 	
		} 
	
	}
	catch (SQLException ex) {
	out.println(ex);
	}
	finally
		{
			//closeConnection();
		}	

	if(retStr!=null){
		session.setAttribute("loginMessage", " password : " + retStr);
		return retStr;

	} else session.setAttribute("loginMessage","oops! wrong, does not match");
	
	return retStr;
}	
%>

