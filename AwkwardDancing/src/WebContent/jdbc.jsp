<!--
A JSP file that encapsulates database connections.

Public methods:
- public void getConnection() throws SQLException
- public void closeConnection() throws SQLException  
-->

<%@ page import="java.sql.*"%>

<%!
	// User id, password, and server information
	private String url = "jdbc:mysql://doadmin:AVNS_K-4eR22p2qP9PXUyof7@db-mysql-sfo3-36612-do-user-13041948-0.b.db.ondigitalocean.com:25060/orders?ssl-mode=REQUIRED";
	private String uid = "doadmin";
	private String pw = "AVNS_K-4eR22p2qP9PXUyof7";

	// Connection
	private Connection con = null;
%>

<%!
	public void getConnection() throws SQLException 
	{
		try
		{	// Load driver class
			Class.forName("com.mysql.cj.jdbc.Driver");
		}
		catch (java.lang.ClassNotFoundException e)
		{
			throw new SQLException("ClassNotFoundException: " +e);
		}
	
		con = DriverManager.getConnection(url, uid, pw);
		Statement stmt = con.createStatement();
	}
   
	public void closeConnection()
	{
		try {
			if (con != null)
				con.close();
			con = null;
		}
		catch (Exception e)
		{ }
	}
%>
