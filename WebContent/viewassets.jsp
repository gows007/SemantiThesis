<%@page import="model.JDBCService"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Assets</title>
<link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/modern-business.css" rel="stylesheet">

    <!-- Custom Fonts 
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">-->
    
    <!-- <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet"> -->
   <!-- <link href="css/DataTableFiles/bootstrap.min.css" rel="stylesheet"> -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<link href="css/jquery.dataTables.min.css" rel="stylesheet">
	<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
	<script language ="javascript" type="text/javascript" src="js/tables/bootstrap.min.js"></script>
</head>
 <body>
	<%
		JDBCService ne = new JDBCService();
		ne.selectDb();

		if (JDBCService.msg.equals("")) {
			ne.createTables();
		}
	%>

	<div id="content">
		
		<br><form name = "form1" action="controlServlet" method="post" onsubmit="refreshParent()">
			<input type="hidden" name="insertA" value="">
			<fieldset>
				<legend> <h4 class="liketext">Create new asset</h4></legend>
				<table id="dataTable">
					<tbody>
						<tr>
							<td><label>Asset name: <sup class ="mandatory">*</sup></label></td>
							<td><textarea id="pname" name="assetname" required="" cols=40 rows=1></textarea></td>
						</tr>
						<tr>
							<td><label>Description: <sup class ="mandatory">*</sup></label></td>
							<td><textarea name="description" required="" cols=40 rows=1></textarea></td>
						</tr>
						<tr>
							<td><label>Source: <sup class ="mandatory">*</sup></label></td>
							<td><input name="source" type="text" required=""
								maxlength="50" /></td>
						</tr>
						<tr>
							<td><label>Source of Scope definition: <sup class ="mandatory">*</sup></label></td>
							<td><input name="sosdefinition" type="text" required=""
								maxlength="50" /></td>
						</tr>
						<tr>
							<td><label>Status:</label></td>
							<td>
								<ul style="display: inline;position: relative;">
									<li style="list-style-type: none;"><select name="status"><option>in
												scope</option>
											<option>possibly in scope</option>
											<option>out of scope</option>
									</select></li>
								</ul>
							</td>
						</tr>
					</tbody>
				</table>
				<br> <div align="center"><input id ="myButton" class="myButton" type="submit" value="Add entry" /></div>
				<%
					if (JDBCService.msg.equals("available")) {
						if (ne.getTableCount("assets") > 0) {
				%>
				<!-- <input class="myButton" type="button"
					value="Show entries" onclick="navigation()"></input>  -->
				<%
					}
					}
				%>

			</fieldset>
		</form>
		<script language="javascript" type="text/javascript" src="script.js"></script>

	</div>
	<%
		ne.closeAll();
	%>
</body>
</html>