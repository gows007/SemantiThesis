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
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 
  
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
		<script language="javascript" type="text/javascript" src="script.js"></script>	
		<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
		<script language ="javascript" type="text/javascript" src="js/tables/bootstrap.min.js"></script>
			 <script language="javascript" type="text/javascript" src="assessment.js"></script>
			 
			<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $("#datepicker").datepicker();
    $("#datepickerend").datepicker();
  } );
  </script>
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
		<br><form action="controlServlet" method="post" onsubmit="refreshParent()">
			<input type="hidden" name="insertP" value="">
			<fieldset>
				<legend> <h4 class="liketext">Create new project</h4></legend>
				<table id="dataTable" class="bluetable">
					<tbody>
						<tr>
							<td><label>Project Name: <sup class ="mandatory">*</sup></label></td>
							<td><textarea name="projectname" required="" cols=30 rows=1></textarea></td>
						</tr>
						<tr>
							<td><label>Project Description: <sup class ="mandatory">*</sup></label></td>
							<td><textarea name="description" required="" cols=50 rows=2></textarea></td>
						</tr>
						<tr>
							<td><label>Lead: <sup class ="mandatory">*</sup></label></td>
							<td><input name="lead" type="text" required=""
								maxlength="50" /></td>
						</tr>
						<tr>
							<td><label>Team Members: <sup class ="mandatory">*</sup></label></td>
							<td><input name="teammembers" type="text" required=""
								maxlength="100" /></td>
						</tr>
						<tr>
							<td><label>Begin: <sup class ="mandatory">*</sup></label></td>
							<td><input id="datepicker" name="begin" type="text" required=""
								maxlength="50" /></td>
						</tr>
						<tr>
							<td><label>End: <sup class ="mandatory">*</sup></label></td>
							<td><input id="datepickerend" name="end" type="text" required=""
								maxlength="50" /></td>
						</tr>
						<tr>
							<td><label>Organization,Department: <sup class ="mandatory">*</sup></label></td>
							<td><input name="org" type="text" required=""
								maxlength="100" /></td>
						</tr>
						<tr>
							<td><label>Summary: </label></td>
							<td><textarea name="summary" required="" maxlength="500" cols=50 rows=3></textarea></td>
						</tr>
					</tbody>
				</table>
				<br><div align="center"><input class="myButton" type="submit" value="Add entry" /></div>
				<%
					if (JDBCService.msg.equals("available")) {
						if (ne.getTableCount("projects") > 0) {
				%>
				<%
					}
					}
				%>

			</fieldset>
		</form>
		
		
	</div>
	<%
		ne.closeAll();
	%>
</body>
</html>