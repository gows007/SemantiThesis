<%@page import="model.JDBCService"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Security Goals</title>
<!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/modern-business.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<!-- <link rel="stylesheet" type="text/css" href="style.css"> -->
</head>
<body>
	<%
		JDBCService ne = new JDBCService();
		ne.selectDb();

		ResultSet res = null;
	%>
	<form action="controlServlet" method="post">
		<input type="hidden" name="updateSG" value="">
		<table id="tftable">
			<thead>
				<tr>
					<th>Delete</th>
					<th>SGID:</th>
					<th>Description:</th>
					<th>Security Level:</th>
				</tr>
			</thead>
			<tbody>
				<%
					res = ne.getResFromTable("securitygoals");
					while (res.next()) {
				%>
				<tr>
					<td align="center"><input type="checkbox"
						name="delete_<%=res.getInt("sgid")%>" /></td>
					<td><%=res.getInt("sgid")%></td>
					<td><%=res.getString("description")%></td>
					<td><%=res.getString("securitylevel")%></td>
				</tr>
				<%
					}
					ne.closeAll();
				%>
			</tbody>
		</table>
		<br> <input class="myButton" type="submit" value="Apply" />
	</form>
</body>
</html>