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
	<script language ="javascript" type="text/javascript" src="js/DataTableJSFiles/bootstrap.min.js"></script>
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
			<input type="hidden" name="insertP" value="">
			<fieldset>
				<legend><h4 class="liketext">Start new ASPICE assessment</h4></legend>
				<table id="dataTable">
					<tbody>
								<tr>
									<td><input name="projectid" id="idA" readonly="readonly"
										type="hidden" /></td>
								</tr>
								<tr>
									<td><label>Project name / ID: <sup class ="mandatory">*</sup> </label></td>
									<td><textarea name="projectname" readonly="readonly" required="" id="editA" 
										cols=40 rows=1></textarea></td>
									<td><select id="ddA" required
										onchange="choosentext('editA', 'ddA', 'idA')">
										<option value="">None</option>
											<%
												res = ne.getResFromTable("projects");
												while (res.next()) {
											%>
											<option value="<%=res.getString("projectname")%>"><%=res.getString("projectid")%></option>

											<%
												}
											%>
									</select></td>
								</tr>
								
								<tr>
									<td><label>Project Description: <sup class ="mandatory">*</sup> </label></td>
									<td><textarea name="description" readonly="readonly" required="" id="editAV"
											cols=500 rows=2 ><%=res.getString("description")%>"><%=res.getString("projectid")%></textarea></td>
									
								</tr>
								<tr>
									<td><label>Lead Assessor: <sup class ="mandatory">*</sup> </label></td>
									<td><textarea name="description" readonly="readonly" required="" id="editAV"
											cols=50 rows=1 ><%=res.getString("lead")%>"><%=res.getString("projectid")%></textarea></td>
									
								</tr>
								<tr>
									<td><label>Team members: <sup class ="mandatory">*</sup> </label></td>
									<td><textarea name="description" readonly="readonly" required="" id="editAV"
											cols=50 rows=2 ><%=res.getString("teammembers")%>"><%=res.getString("projectid")%></textarea></td>
									
								</tr>
								<tr>
									<td><label>Begin: <sup class ="mandatory">*</sup> </label></td>
									<td><textarea name="description" readonly="readonly" required="" id="editAV"
											cols=50 rows=1 ><%=res.getString("begin")%>"><%=res.getString("projectid")%></textarea></td>
									
								</tr>
								<tr>
									<td><label>End: <sup class ="mandatory">*</sup> </label></td>
									<td><textarea name="description" readonly="readonly" required="" id="editAV"
											cols=50 rows=1 ><%=res.getString("end")%>"><%=res.getString("projectid")%></textarea></td>
									
								</tr>
								<tr>
									<td><label>Organization: <sup class ="mandatory">*</sup> </label></td>
									<td><textarea name="description" readonly="readonly" required="" id="editAV"
											cols=50 rows=2 ><%=res.getString("org")%>"><%=res.getString("projectid")%></textarea></td>
									
								</tr>
								<tr>
									<td><label>Summary: <sup class ="mandatory">*</sup> </label></td>
									<td><textarea name="description" readonly="readonly" required="" id="editAV"
											cols=50 rows=2 ><%=res.getString("summary")%>"><%=res.getString("projectid")%></textarea></td>
								</tr>
						</tbody>
				</table>
				<br> <div align="center"><input id ="myButton" class="myButton" type="submit" value="Add entry" /></div>
				<%
					if (JDBCService.msg.equals("available")) {
						if (ne.getTableCount("projects") > 0) {
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
		<script language="javascript" type="text/javascript" src="assessment.js"></script>
	</div>
	<%
		ne.closeAll();
	%>
</body>
</html>