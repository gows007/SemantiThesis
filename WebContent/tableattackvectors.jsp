<%@page import="model.JDBCService"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Attack Vectors</title>
<!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/modern-business.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<link href="css/jquery.dataTables.min.css" rel="stylesheet">
	<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
	<script language ="javascript" type="text/javascript" src="js/DataTableJSFiles/bootstrap.min.js"></script>
</head>
<body>
	<%
		JDBCService ne = new JDBCService();
		ne.selectDb();

		ResultSet res = null;
	%>
<div id="navcontainer">
		<ul id="navlist">
			<li><a href="index.html">Home</a></li>
			<li><a href="securityoverview.jsp">Security overview</a></li>
			<li><a href="tableassets.jsp">Assets</a></li>
			<li><a href="tableattackvectors.jsp">Attacks</a></li>
			<li><a href="viewtara.jsp">TARA</a></li>
			<li><a href="viewchart.jsp">Export</a></li>
		</ul>
	</div>
	<h4 class='liketext'><img style='height: 50px; width: 50px; margin-left: auto;' src='Images/attack management.PNG'/><b>Attack Management</b></h4>
	<!-- <a href="viewattacks.jsp">  -->
	<input type="button" id="myBtnA" value="New Attack vector" name="New Attack vector" onclick="openModal('myModalA', 'myBtnA', 'spanA')"/>
	<br><br><form action="controlServlet" method="post">
		<input type="hidden" name="updateAV" value="">
		<table id="dataTable">
			<thead>
				<tr>
					<th>Delete</th>
					<th>Attack Vector ID</th>
					<th>Attack description</th>
					<th>Source</th>
					<th>Comment</th>
					<th>Status</th>
				</tr>
			</thead>
			<tbody>
				<%
					res = ne.getResFromTable("attackvectors");
					while (res.next()) {
				%>
				<tr>
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getString("avid")%>" /></td>
					<td><%=res.getString("avid")%></td>
					<td><%=res.getString("attackdescription")%></td>
					<td><%=res.getString("source")%></td>
					<td><%=res.getString("comments")%></td>
					<td><select style="font-size: 12px;font-family: sans-serif;" name="status_<%=res.getString("avid")%>"><option
								value="<%=res.getString("status")%>"><%=res.getString("status")%></option>
							<option value="in scope">in scope</option>
							<option value="possibly in scope">possibly in scope</option>
							<option value="out of scope">out of scope</option>
					</select></td>
				</tr>
				<%
					}
					ne.closeAll();
				%>
			</tbody>
		</table>
		<!-- <br><input class="myButton" type="submit" value="Delete" Onclick="ConfirmDelete()"/>   -->
	</form>
	<!-- The Modal -->
		<div id="myModalA" class="modalTableAssets" align="center">
			<span id="spanA" class="closeTableAssets">x</span>
			<iframe src="viewattacks.jsp"width ="400" height="400" class="frame"> </iframe>
		</div>
		<script language="javascript" type="text/javascript" src="script.js"></script>
</body>
</html>