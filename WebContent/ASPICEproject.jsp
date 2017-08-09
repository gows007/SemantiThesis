<%@page import="model.JDBCService"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ASPICE Project</title>
<!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/modern-business.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
    
    <!-- <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet"> -->
   <!-- <link href="css/DataTableFiles/bootstrap.min.css" rel="stylesheet"> -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<link href="css/jquery.dataTables.min.css" rel="stylesheet">
	<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
	<script language ="javascript" type="text/javascript" src="js/bootstrap-table.min.js"></script>
	
</head>
<body>

	<%
		JDBCService ne = new JDBCService();
		ne.selectDb();

		ResultSet res = null;
	%>
	<div id="navcontainer">
		<ul id="navlist">
			<li><a href="index.html" id="current">Home</a></li>
			<li><a href="overviewASPICE.jsp" id="current">Help</a></li>
			<li><a href="ASPICEproject.jsp" id="current">Projects</a></li>
			<li><a href="assessment.jsp" id="current">ASPICE Assessment</a></li>
		</ul>
</div>
	<h4 class='liketext'><img style='height: 30px; width: 250px; margin-left: auto;' src='Images/aspice logo.jpg'/><b>&nbsp Project Management</b></h4>
	 <br><hr class="newAssessment"><br>
	 <input type="button" id="myBtnA" value="New ASPICE Project" name="New Asset" onclick="openModal('myModalA', 'myBtnA', 'spanA')"/>
	<div id="update"></div>
	<!--<div id="divSuccessMsg" style="display: none;"><h2><i> This is a success message!</i></h2></div>   -->

	<div id="content" class="table-responsive">
		
	<br><form action="controlServlet" method="post">
		<input type="hidden" name="updateP" value="">
		<table id="dataTable">
			<thead>
				<tr>
					<th>Delete</th>
					<th>Project ID</th>
					<th>Project Name</th>
					<th>Project Description</th>
					<th>Lead Assessor</th>
					<th>Team Members</th>
					<th>Begin Date</th>
					<th>End Date</th>
					<th>Organization & Department</th>
					<th>Summary</th>
					<th>Edit</th>
					<th>Copy</th>
					<!-- <th>Used:</th> -->
					<!-- <img style='height: 15px; width: 15px; margin-left: auto;' src='Images/Information.jpg' title="Self explanatory"/> -->
				</tr>
			</thead>
			<tbody>
				<%
					res = ne.getResFromTable("projects");
					while (res.next()) {
				%>
				<tr>				
					<td align="center"><input type="submit" class="btn btn-default btn-sm" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("projectid")%>" /></td>
					<td><%=res.getInt("projectid")%></td>
					<td ><%=res.getString("projectname")%></td>
					<td ><%=res.getString("description")%></td>
					<td ><%=res.getString("lead")%></td>
					<td ><%=res.getString("teammembers")%></td>
					<td><%=res.getString("begin")%></td>
					<td><%=res.getString("end")%></td>
					<td><%=res.getString("org")%></td>
					<td><%=res.getString("summary")%></td>
					<td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#myModal" contenteditable="false">Edit</button></td>
					<td><button type="button" id="btn" class="btn btn-success" data-toggle="modal" data-target="#modalCopy" contenteditable="false">Copy</button></td>
				</tr>
				<%
					}
					ne.closeAll();
				%>
			</tbody>
		</table>
				<!-- <br><input class="myButton" type="submit" value="Delete" onclick = "ConfirmDelete()"/>		 -->		
</form>
<form action="controlServlet" method="post" onsubmit="refreshParent()">
		<input type="hidden" name="editP" value="someValue">
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content"></div>
    </div>
    <div class="modal-dialog">
        <div class="modal-content"></div>
    </div>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"> <span aria-hidden="true" class="">× </span><span class="sr-only">Close</span>

                </button>
                 <h4 class="modal-title" id="myModalLabel">Edit</h4>

            </div>
            <div class="modal-body"></div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="submit" value="Save" id="btnSave" class="btn btn-primary">Save changes</button>
            </div>  
        </div>
    </div>
</div>
</form>

<form action="controlServlet" method="post" onsubmit="refreshParent()">
		<input type="hidden" name="copyP" value="someValue">
  <div class="modal fade" id="modalCopy" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content"></div>
    </div>
    <div class="modal-dialog">
        <div class="modal-content"></div>
    </div>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"> <span aria-hidden="true" class="">× </span><span class="sr-only">Close</span>

                </button>
                 <h4 class="modal-title" id="myModalLabel">Copy</h4>

            </div>
            <div class="modal-body"></div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="submit" value="Save" id="btnSave" class="btn btn-primary">Add new</button>
            </div>  
        </div>
    </div>
</div>
</form>

</div>
	<!-- The Modal -->
		<div id="myModalA" class="modalTableAssets" align="center">
			<span id="spanA" class="closeTableAssets" onclick="">x</span>
			<iframe id = "modal" src="viewprojects.jsp" width ="600" height="520" class="frame"></iframe>	
		</div>
		 <script language="javascript" type="text/javascript" src="script.js"></script>
		 <script language="javascript" type="text/javascript" src="scriptASPICE.js"></script>
</body>
</html>