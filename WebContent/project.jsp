<%@page import="model.JDBCService"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Projects</title>
<!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/modern-business.css" rel="stylesheet">
	<link href="css/jquery.dataTables.min.css" rel="stylesheet">	
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
			<li><a href="project.jsp">Projects</a></li>
			<li><a href="tableassets.jsp">Assets</a></li>
			<li><a href="tableattackvectors.jsp">Attacks</a></li>
			<li><a href="viewtara.jsp">TARA</a></li>
			<li><a href="viewchart.jsp">Export</a></li>
		</ul>
	</div>
	<h4 align="center" class='liketext'><img style='height: 50px; width: 50px; margin-left: auto;' src='Images/entity management.JPG'/><b>Entity Management</b></h4>
	<input type="button" id="myBtnA" value="New Project" name="New Project" onclick="openModal('myModalA', 'myBtnA', 'spanA')"/>
	<br><br><form action="controlServlet" method="post">
	<input type="hidden" name="updateP" value="">
	<table id="dataTable" class="dataTable">
		<thead>
				<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Project name</th>
					<th>Project description</th>
					<th>Team members</th>
					<th>Summary</th>
				</tr>
		</thead>
		<tbody>
			<%  res = ne.getResFromTable("projects");
				while (res.next()){
			%>
			<tr>
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getString("projectid")%>" /></td>
					<td><%=res.getString("projectid")%></td>
					<td><%=res.getString("projectname")%></td>
					<td><%=res.getString("projectdescription")%></td>
					<td><%=res.getString("teammembers")%></td>
					<td><%=res.getString("summary")%></td>
				</tr>
				<%
					}
					ne.closeAll();
				%>
		</tbody>
	</table>
	<!--<br><input class="myButton" type="submit" value="Delete" Onclick="ConfirmDelete()"/>  -->
	</form>
	<!-- The Modal -->
		<div id="myModalA" class="modalTableAssets" align="center">
			<span id="spanA" class="closeTableAssets">x</span>
			<iframe src="viewprojects.jsp"width ="600" height="600" class="frame"> </iframe>
		</div>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
		<script language="javascript" type="text/javascript" src="script.js"></script>
		<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
		<script language ="javascript" type="text/javascript" src="js/DataTableJSFiles/bootstrap.min.js"></script>
</body>
</html>
