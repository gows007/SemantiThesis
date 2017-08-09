<%@page import="java.sql.ResultSet"%>
<%@page import="model.JDBCService"%>
<%@page import="view.utils.AssessmentRenderHelper"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<title>ASPICE Assessment</title>
<!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/ASPICE.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/modern-business.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
    
   <!--  <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">  -->
   <!-- <link href="css/DataTableFiles/bootstrap.min.css" rel="stylesheet"> -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="src/jquery.table2excel.js"></script>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<link href="css/jquery.dataTables.min.css" rel="stylesheet">
	<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
	<script language ="javascript" type="text/javascript" src="js/bootstrap.min.js"></script>
	 <!--  <script language="javascript" type="text/javascript" src="scriptASPICE.js"></script>-->
	 <script language="javascript" type="text/javascript" src="assessment.js"></script>
	 <script language ="javascript" type="text/javascript" src="css/ASPICE.js"></script>
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	
	<!-- styles for table to excel download -->
	 <!-- <script language="javascript" type="text/javascript" src="//code.jquery.com/jquery-1.12.4.js"></script>
 <script language="javascript" type="text/javascript" src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
 <script language="javascript" type="text/javascript" src="https://cdn.datatables.net/buttons/1.3.1/js/dataTables.buttons.min.js"></script>
 <script language="javascript" type="text/javascript" src="//cdn.datatables.net/buttons/1.3.1/js/buttons.flash.min.js"></script>
 <script language="javascript" type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
 <script language="javascript" type="text/javascript" src="//cdn.rawgit.com/bpampuch/pdfmake/0.1.27/build/pdfmake.min.js"></script>
 <script language="javascript" type="text/javascript" src="//cdn.rawgit.com/bpampuch/pdfmake/0.1.27/build/vfs_fonts.js"></script>
 <script language="javascript" type="text/javascript" src="//cdn.datatables.net/buttons/1.3.1/js/buttons.html5.min.js"></script>
 <script language="javascript" type="text/javascript" src="//cdn.datatables.net/buttons/1.3.1/js/buttons.print.min.js"></script>
	 <script language="javascript" type="text/javascript" src="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css"></script>
 <script language="javascript" type="text/javascript" src="https://cdn.datatables.net/buttons/1.3.1/css/buttons.dataTables.min.css"></script>
 -->
</head>
<body >
<%
		JDBCService ne = new JDBCService();
		ne.selectDb();

		ResultSet res = null;
		res = ne.getResFromTable("aspice");
		String projectid = request.getParameter("projectid");
		
		
	%>



	<div id="navcontainer">
		<ul id="navlist">
			<li><a href="index.html" >Home</a></li>
			<li><a href="overviewASPICE.jsp" id="current">Help</a></li>
			<li><a href="ASPICEproject.jsp" >Projects</a></li>
			<li><a href="assessment.jsp" >ASPICE Assessment</a></li>
			
		</ul>
	</div>
	<h4 class='liketext'><img style='height: 50px; width: 50px; margin-left: auto;' src='Images/assessment.png'><b>&nbsp ASPICE Assessment</b></h4><br/>
	 <hr class="newAssessment"></br></br>
	 
	 <input type="button" id="myBtnA" value="New Assessment" name="New Assessment" style="margin-left:1cm;" onclick="window.location='newassessment.jsp';"/>
	 <!--  <br><br><font style="margin-left:1cm;" >Select a project ID below to display relevant information</font><br/><br/>-->
	</br></br> <ul class="filterProjectdropdown">
	  <li style="list-style-type: none;">
	   <select id="filter-projectid" title="Select a project ID">
			<option value="">All</option>
				<%
												
					res = ne.getProjIDsfromAspice();
					while (res.next()) {
				%>
			<option value=<%=res.getInt("projectid")%>><%=res.getInt("projectid")%></option>

											<%
												}
											%>
		</select>
	</li>
</ul>
	<input type="button" style="margin-left:1cm;" name="theButton" value="Show Project details" class="filter-by-projectid" data-username="{{result['projectid']}}"  />
	
	<div id="content" class="table-responsive">
		
	<br>
		<form action="controlServlet" method="post">
		 <input type="hidden" name="updateAssessment" value="">
		<table id="example" width="96%" align="center" cellpadding="2" cellspacing="0" border="0" class="display" >
				<tbody>
				
				<tr class="header expand">
					<th colspan="11"  bgcolor="#d8c9c9" >&nbsp SYS.2 System Requirement Analysis <span class="sign"></span></th>
				</tr>
				<tr>
					<th colspan="11"  bgcolor="#e6e6fg" >&nbsp Level 1 : Performed process<span class="sign"></span></th>
				</tr>
				
				<tr>
					
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<th>Delete</th>
					<!--  <th>Edit</th>-->
				</tr>
				
				<%
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SYS.2 System Requirements Analysis") && res.getString("level").equalsIgnoreCase("Level 1 (Performed Process)")){
%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>	
					
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
			<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 2 : Managed process<span class="sign"></span></th>
					<tr>
					
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<th>Delete</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SYS.2 System Requirements Analysis") && res.getString("level").equalsIgnoreCase("Level 2 (Managed process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 3 (Established process)<span class="sign"></span></th>
					<tr>
					
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<th>Delete</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SYS.2 System Requirements Analysis") && res.getString("level").equalsIgnoreCase("Level 3 (Established process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 4 (Predictable process)<span class="sign"></span></th>
					<tr>
					
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<th>Delete</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SYS.2 System Requirements Analysis") && res.getString("level").equalsIgnoreCase("Level 4 (Predictable process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 5 (Optimizing process)<span class="sign"></span></th>
					<tr>
					
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<th>Delete</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SYS.2 System Requirements Analysis") && res.getString("level").equalsIgnoreCase("Level 5 (Optimizing process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				<tr class="header expand">
					<th colspan="11"  bgcolor="#d8c9c9" >&nbsp SYS.3 System Architectural Design <span class="sign"></span></th>
				</tr>
				<th colspan="11"  bgcolor="#e6e6fg" >&nbsp Level 1 (Performed Process)<span class="sign"></span></th>
				
				<tr>
					<tr>
					
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<th>Delete</th>
					<!--  <th>Edit</th>-->
				</tr>
				
				<%
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SYS.3 System Architectural Design") && res.getString("level").equalsIgnoreCase("Level 1 (Performed Process)")){
				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 2 : Managed process<span class="sign"></span></th>
					<tr>
					
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<th>Delete</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SYS.3 System Architectural Design") && res.getString("level").equalsIgnoreCase("Level 2 (Managed process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 3 (Established process)<span class="sign"></span></th>
					<tr>
					
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<th>Delete</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SYS.3 System Architectural Design") && res.getString("level").equalsIgnoreCase("Level 3 (Established process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 4 (Predictable process)<span class="sign"></span></th>
					<tr>
					
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<th>Delete</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SYS.3 System Architectural Design") && res.getString("level").equalsIgnoreCase("Level 4 (Predictable process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 5 (Optimizing process)<span class="sign"></span></th>
					<tr>
					
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<th>Delete</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SYS.3 System Architectural Design") && res.getString("level").equalsIgnoreCase("Level 5 (Optimizing process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				
				
				<tr class="header expand">
					<th colspan="11"  bgcolor="#d8c9c9" >&nbsp SYS.4 System Integration and Integration Test <span class="sign"></span></th>
				</tr>
				<th colspan="11"  bgcolor="#e6e6fg" >&nbsp Level 1 (Performed Process)<span class="sign"></span></th>
				
				<tr>
					<tr>
					
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<th>Delete</th>
					<!--  <th>Edit</th>-->
				</tr>
				
				<%
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SYS.4 System Integration and Integration Test") && res.getString("level").equalsIgnoreCase("Level 1 (Performed Process)")){
				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 2 : Managed process<span class="sign"></span></th>
					<tr>
					
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<th>Delete</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SYS.4 System Integration and Integration Test") && res.getString("level").equalsIgnoreCase("Level 2 (Managed process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 3 (Established process)<span class="sign"></span></th>
					<tr>
					
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<th>Delete</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SYS.4 System Integration and Integration Test") && res.getString("level").equalsIgnoreCase("Level 3 (Established process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 4 (Predictable process)<span class="sign"></span></th>
					<tr>
					
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<th>Delete</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SYS.4 System Integration and Integration Test") && res.getString("level").equalsIgnoreCase("Level 4 (Predictable process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 5 (Optimizing process)<span class="sign"></span></th>
					<tr>
					
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<th>Delete</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SYS.4 System Integration and Integration Test") && res.getString("level").equalsIgnoreCase("Level 5 (Optimizing process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				
				<tr class="header expand">
					<th colspan="11"  bgcolor="#d8c9c9" >&nbsp SYS.5 System Qualification Test <span class="sign"></span></th>
				</tr>
				<th colspan="11"  bgcolor="#e6e6fg" >&nbsp Level 1 (Performed Process)<span class="sign"></span></th>
				
				<tr>
					<tr>
					
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<th>Delete</th>
					<!--  <th>Edit</th>-->
				</tr>
				
				<%
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SYS.5 System Qualification Test") && res.getString("level").equalsIgnoreCase("Level 1 (Performed Process)")){
				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 2 : Managed process<span class="sign"></span></th>
					<tr>
					
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<th>Delete</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SYS.5 System Qualification Test") && res.getString("level").equalsIgnoreCase("Level 2 (Managed process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 3 (Established process)<span class="sign"></span></th>
					<tr>
					
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<th>Delete</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SYS.5 System Qualification Test") && res.getString("level").equalsIgnoreCase("Level 3 (Established process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 4 (Predictable process)<span class="sign"></span></th>
					<tr>
					
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<th>Delete</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SYS.5 System Qualification Test") && res.getString("level").equalsIgnoreCase("Level 4 (Predictable process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 5 (Optimizing process)<span class="sign"></span></th>
					<tr>
					
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<th>Delete</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SYS.5 System Qualification Test") && res.getString("level").equalsIgnoreCase("Level 5 (Optimizing process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				
				
				<tr class="header expand">
					<th colspan="11"  bgcolor="#d8c9c9" >&nbsp SWE.1 Software Requirement Analysis <span class="sign"></span></th>
				</tr>
				<th colspan="11"  bgcolor="#e6e6fg" >&nbsp Level 1 (Performed Process)<span class="sign"></span></th>
				
				<tr>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				
				<%
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SWE.1 Software Requirement Analysis") && res.getString("level").equalsIgnoreCase("Level 1 (Performed Process)")){
				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 2 : Managed process<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SWE.1 Software Requirement Analysis") && res.getString("level").equalsIgnoreCase("Level 2 (Managed process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 3 (Established process)<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SWE.1 Software Requirement Analysis") && res.getString("level").equalsIgnoreCase("Level 3 (Established process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 4 (Predictable process)<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SWE.1 Software Requirement Analysis") && res.getString("level").equalsIgnoreCase("Level 4 (Predictable process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 5 (Optimizing process)<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SWE.1 Software Requirement Analysis") && res.getString("level").equalsIgnoreCase("Level 5 (Optimizing process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				
				<tr class="header expand">
					<th colspan="11"  bgcolor="#d8c9c9" >&nbsp SWE.2 Software Architectural Design <span class="sign"></span></th>
				</tr>
				<th colspan="11"  bgcolor="#e6e6fg" >&nbsp Level 1 (Performed Process)<span class="sign"></span></th>
				
				<tr>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				
				<%
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SWE.2 Software Architectural Design") && res.getString("level").equalsIgnoreCase("Level 1 (Performed Process)")){
				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 2 : Managed process<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SWE.2 Software Architectural Design") && res.getString("level").equalsIgnoreCase("Level 2 (Managed process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 3 (Established process)<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SWE.2 Software Architectural Design") && res.getString("level").equalsIgnoreCase("Level 3 (Established process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 4 (Predictable process)<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SWE.2 Software Architectural Design") && res.getString("level").equalsIgnoreCase("Level 4 (Predictable process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 5 (Optimizing process)<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SWE.2 Software Architectural Design") && res.getString("level").equalsIgnoreCase("Level 5 (Optimizing process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				
				<tr class="header expand">
					<th colspan="11"  bgcolor="#d8c9c9" >&nbsp SWE.3 Software Detailed Design and Unit Construction <span class="sign"></span></th>
				</tr>
				<th colspan="11"  bgcolor="#e6e6fg" >&nbsp Level 1 (Performed Process)<span class="sign"></span></th>
				
				<tr>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				
				<%
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SWE.3 Software Detailed Design and Unit Construction") && res.getString("level").equalsIgnoreCase("Level 1 (Performed Process)")){
				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 2 : Managed process<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SWE.3 Software Detailed Design and Unit Construction") && res.getString("level").equalsIgnoreCase("Level 2 (Managed process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 3 (Established process)<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SWE.3 Software Detailed Design and Unit Construction") && res.getString("level").equalsIgnoreCase("Level 3 (Established process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 4 (Predictable process)<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SWE.3 Software Detailed Design and Unit Construction") && res.getString("level").equalsIgnoreCase("Level 4 (Predictable process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 5 (Optimizing process)<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SWE.3 Software Detailed Design and Unit Construction") && res.getString("level").equalsIgnoreCase("Level 5 (Optimizing process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				
				<tr class="header expand">
					<th colspan="11"  bgcolor="#d8c9c9" >&nbsp SWE.4 Software Unit Verification <span class="sign"></span></th>
				</tr>
				<th colspan="11"  bgcolor="#e6e6fg" >&nbsp Level 1 (Performed Process)<span class="sign"></span></th>
				
				<tr>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				
				<%
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SWE.4 Software Unit Verification") && res.getString("level").equalsIgnoreCase("Level 1 (Performed Process)")){
				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 2 : Managed process<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SWE.4 Software Unit Verification") && res.getString("level").equalsIgnoreCase("Level 2 (Managed process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 3 (Established process)<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SWE.4 Software Unit Verification") && res.getString("level").equalsIgnoreCase("Level 3 (Established process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 4 (Predictable process)<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SWE.4 Software Unit Verification") && res.getString("level").equalsIgnoreCase("Level 4 (Predictable process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 5 (Optimizing process)<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SWE.4 Software Unit Verification") && res.getString("level").equalsIgnoreCase("Level 5 (Optimizing process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				
				<tr class="header expand">
					<th colspan="11"  bgcolor="#d8c9c9" >&nbsp SWE.5 Software Integration and Integration Test <span class="sign"></span></th>
				</tr>
				<th colspan="11"  bgcolor="#e6e6fg" >&nbsp Level 1 (Performed Process)<span class="sign"></span></th>
				
				<tr>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				
				<%
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SWE.5 Software Integration and Integration Test") && res.getString("level").equalsIgnoreCase("Level 1 (Performed Process)")){
				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 2 : Managed process<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SWE.5 Software Integration and Integration Test") && res.getString("level").equalsIgnoreCase("Level 2 (Managed process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 3 (Established process)<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SWE.5 Software Integration and Integration Test") && res.getString("level").equalsIgnoreCase("Level 3 (Established process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 4 (Predictable process)<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SWE.5 Software Integration and Integration Test") && res.getString("level").equalsIgnoreCase("Level 4 (Predictable process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 5 (Optimizing process)<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SWE.5 Software Integration and Integration Test") && res.getString("level").equalsIgnoreCase("Level 5 (Optimizing process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				
				<tr class="header expand">
					<th colspan="11"  bgcolor="#d8c9c9" >&nbsp SWE.6 Software Qualification Test <span class="sign"></span></th>
				</tr>
				<th colspan="11"  bgcolor="#e6e6fg" >&nbsp Level 1 (Performed Process)<span class="sign"></span></th>
				
				<tr>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				
				<%
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SWE.6 Software Qualification Test") && res.getString("level").equalsIgnoreCase("Level 1 (Performed Process)")){
				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 2 : Managed process<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SWE.6 Software Qualification Test") && res.getString("level").equalsIgnoreCase("Level 2 (Managed process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 3 (Established process)<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SWE.6 Software Qualification Test") && res.getString("level").equalsIgnoreCase("Level 3 (Established process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 4 (Predictable process)<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SWE.6 Software Qualification Test") && res.getString("level").equalsIgnoreCase("Level 4 (Predictable process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 5 (Optimizing process)<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SWE.6 Software Qualification Test") && res.getString("level").equalsIgnoreCase("Level 5 (Optimizing process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				
				<tr class="header expand">
					<th colspan="11"  bgcolor="#d8c9c9" >&nbsp SUP.1 Quality Assurance <span class="sign"></span></th>
				</tr>
				<th colspan="11"  bgcolor="#e6e6fg" >&nbsp Level 1 (Performed Process)<span class="sign"></span></th>
				
				<tr>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				
				<%
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SUP.1 Quality Assurance") && res.getString("level").equalsIgnoreCase("Level 1 (Performed Process)")){
				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 2 : Managed process<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SUP.1 Quality Assurance") && res.getString("level").equalsIgnoreCase("Level 2 (Managed process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 3 (Established process)<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SUP.1 Quality Assurance") && res.getString("level").equalsIgnoreCase("Level 3 (Established process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 4 (Predictable process)<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SUP.1 Quality Assurance") && res.getString("level").equalsIgnoreCase("Level 4 (Predictable process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 5 (Optimizing process)<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SUP.1 Quality Assurance") && res.getString("level").equalsIgnoreCase("Level 5 (Optimizing process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				
				<tr class="header expand">
					<th colspan="11"  bgcolor="#d8c9c9" >&nbsp SUP.8 Configuration Management <span class="sign"></span></th>
				</tr>
				<th colspan="11"  bgcolor="#e6e6fg" >&nbsp Level 1 (Performed Process)<span class="sign"></span></th>
				
				<tr>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				
				<%
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SUP.8 Configuration Management") && res.getString("level").equalsIgnoreCase("Level 1 (Performed Process)")){
				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 2 : Managed process<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SUP.8 Configuration Management") && res.getString("level").equalsIgnoreCase("Level 2 (Managed process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 3 (Established process)<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SUP.8 Configuration Management") && res.getString("level").equalsIgnoreCase("Level 3 (Established process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 4 (Predictable process)<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SUP.8 Configuration Management") && res.getString("level").equalsIgnoreCase("Level 4 (Predictable process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 5 (Optimizing process)<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SUP.8 Configuration Management") && res.getString("level").equalsIgnoreCase("Level 5 (Optimizing process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				
				<tr class="header expand">
					<th colspan="11"  bgcolor="#d8c9c9" >&nbsp SUP.9 Problem Resolution Management <span class="sign"></span></th>
				</tr>
				<th colspan="11"  bgcolor="#e6e6fg" >&nbsp Level 1 (Performed Process)<span class="sign"></span></th>
				
				<tr>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				
				<%
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SUP.9 Problem Resolution Management") && res.getString("level").equalsIgnoreCase("Level 1 (Performed Process)")){
				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 2 : Managed process<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SUP.9 Problem Resolution Management") && res.getString("level").equalsIgnoreCase("Level 2 (Managed process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 3 (Established process)<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SUP.9 Problem Resolution Management") && res.getString("level").equalsIgnoreCase("Level 3 (Established process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 4 (Predictable process)<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SUP.9 Problem Resolution Management") && res.getString("level").equalsIgnoreCase("Level 4 (Predictable process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 5 (Optimizing process)<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SUP.9 Problem Resolution Management") && res.getString("level").equalsIgnoreCase("Level 5 (Optimizing process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				
				<tr class="header expand">
					<th colspan="11"  bgcolor="#d8c9c9" >&nbsp SUP.10 Change Request Management <span class="sign"></span></th>
				</tr>
				<th colspan="11"  bgcolor="#e6e6fg" >&nbsp Level 1 (Performed Process)<span class="sign"></span></th>
				
				<tr>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				
				<%
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SUP.10 Change Request Management") && res.getString("level").equalsIgnoreCase("Level 1 (Performed Process)")){
				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 2 : Managed process<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SUP.10 Change Request Management") && res.getString("level").equalsIgnoreCase("Level 2 (Managed process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 3 (Established process)<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SUP.10 Change Request Management") && res.getString("level").equalsIgnoreCase("Level 3 (Established process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 4 (Predictable process)<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SUP.10 Change Request Management") && res.getString("level").equalsIgnoreCase("Level 4 (Predictable process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 5 (Optimizing process)<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("SUP.10 Change Request Management") && res.getString("level").equalsIgnoreCase("Level 5 (Optimizing process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				
				
				<tr class="header expand">
					<th colspan="11"  bgcolor="#d8c9c9" >&nbsp MAN.3 Project Management <span class="sign"></span></th>
				</tr>
				<th colspan="11"  bgcolor="#e6e6fg" >&nbsp Level 1 (Performed Process)<span class="sign"></span></th>
				
				<tr>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				
				<%
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("MAN.3 Project Management") && res.getString("level").equalsIgnoreCase("Level 1 (Performed Process)")){
				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 2 : Managed process<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("MAN.3 Project Management") && res.getString("level").equalsIgnoreCase("Level 2 (Managed process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 3 (Established process)<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("MAN.3 Project Management") && res.getString("level").equalsIgnoreCase("Level 3 (Established process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 4 (Predictable process)<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("MAN.3 Project Management") && res.getString("level").equalsIgnoreCase("Level 4 (Predictable process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				<th colspan="11"  bgcolor="#e6e6fg" > &nbsp Level 5 (Optimizing process)<span class="sign"></span></th>
					<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Description</th>
					<th>Level</th>
					<th>Notes</th>
					<th>Status</th>
					<th>Observation ID</th>
					<th>Type</th>
					<th>Ratings</th>
					<th>ENG</th>
					<th>Base Practice</th>
					<!--  <th>Edit</th>-->
				</tr>
				<%
					//res = ne.getResFromTable("aspice");
					res = (projectid == null || projectid=="")?ne.getResFromTable("aspice"):ne.geTupleByProjID(Integer.parseInt(projectid));
					while (res.next()) {
						if(res.getString("ENG").equalsIgnoreCase("MAN.3 Project Management") && res.getString("level").equalsIgnoreCase("Level 5 (Optimizing process)")){

				%>
				<tr name="deepak" class=<%=AssessmentRenderHelper.getColorforRating(res.getString("rating")) %>>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("level")%></td>
					<td ><%=res.getString("notes")%></td>
					<td><%=res.getString("status")%></td>
					<td><%=res.getString("odservationID")%></td>
					<td><%=res.getString("type")%></td>
					<td><%=res.getString("rating")%></td>
					<td><%=res.getString("ENG")%></td>
					<td><%=res.getString("base")%></td>
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!--  <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>-->
					<!-- <td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td> -->
				</tr>
				<%
					}
							}		
				%>
				
				
				
				<%
				
					ne.closeAll();
				%>
				</tbody>
			</table>
			</form>
			<br><br>
			 <button style="margin-left:1cm;" id="btnExport" > Export </button>     
			
	</div>
	
	<!--  <script language="javascript" type="text/javascript" src="script.js"></script>-->
			
	<!-- The Edit Modal -->
		
		 
	<div>	 
		 <form action="controlServlet" method="post" onsubmit="refreshParent()">
		<input type="hidden" name="editAssessment" value="someValue">
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content"></div>
			</div>
			<div class="modal-dialog">
				<div class="modal-content"></div>
			</div>
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true" class="">× </span><span class="sr-only">Close</span>

						</button>
						<h4 class="modal-title" id="myModalLabel">Edit</h4>

					</div>
					<div class="modal-body"></div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="submit" value="Save" id="btnSave"
							class="btn btn-primary">Save changes</button>
					</div>
				</div>
			</div>
		</div>
	</form>
	</div>
	
</body>
</html>