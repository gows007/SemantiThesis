<%@page import="model.JDBCService"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sub Tables</title>
<!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/modern-business.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <script src="https://code.jquery.com/jquery.min.js"></script>
  
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
	</head>

<body>

	<%
		JDBCService ne = new JDBCService();
		JDBCService asi = new JDBCService();

		ne.selectDb();
		asi.selectDb();

		ResultSet res = null;
		ResultSet temp = null;
	%>
 
	<div id="navcontainer">
		<ul id="navlist">
			<li><a href="index.html" >Home</a></li>
			<li><a href="securityoverview.jsp">Security overview</a></li>
			<li><a href="tableassets.jsp">Assets</a></li>
			<li><a href="tableattackvectors.jsp">Attacks</a></li>
			<li><a href="viewtara.jsp">TARA</a></li>
			<li><a href="TARAoverview.jsp">Assessment</a></li>
			<li><a href="viewchart.jsp">Export</a></li>
		</ul>
	</div>
<h4 class='liketext'><img style='height: 50px; width: 50px; margin-left: auto;' src='Images/analyze icons.PNG'/><b>Threat and Risk Assessment</b></h4>
	<input id="myBtnTARA" class="myButton" type="button" value="New TARA entry"
			onclick="openModal('myModalTARA', 'myBtnTARA', 'mySpanTARA')"></input><br><br>
	<div id="content" class="table-responsive">

		<%
			if (JDBCService.msg.equals("available")) {
				if (ne.getTableCount("attackvectors") > 0) {
					if (ne.getTableCount("assets") > 0) {
		%>
		
		<%
			}
				}
			}
		%>
	
		<form action="controlServlet" method="post">
			<input type="hidden" name="updateTARA" value="">
			<table align="center" id="tftable" class="tftable" data-toggle="table">
				<thead>
					<tr>
						<td colspan="2" style="background-color: #ffffff;"></td>
						<td colspan="2"><input id="searchA"
							onkeyup="searchFor('searchA', 2, 2, 3)" type="text"
							placeholder="Filter.." />
						<td colspan="3" style="background-color: #ffffff;"></td>
						<td colspan="2"><input id="searchT"
							onkeyup="searchInColumn('searchT', 2, 7, 8)" type="text"
							placeholder="Filter.." /></td>
						<td colspan="4"
							style="color: white; background-color: deepskyblue;"><b>THREAT
							LEVEL</b></td>
						<td colspan="5" style="color: white; background-color: gold;"><b>SECURITY
							LEVEL</b></td>
						<td colspan="2"><input id="searchSG"
							onkeyup="searchFor('searchSG', 2, 18, 19)" type="text"
							placeholder="Filter.." /></td>
						<td colspan="3" style="background-color: #ffffff;"></td>
					</tr>
					<tr>
						<th>Delete</th>
						<th>No.:</th>
						<th>Asset ID:</th>
						<th>Assetname:</th>
						<th>CIAAG:</th>
						<th>Attack vector:</th>
						<th>Effect of attack:</th>
						<th>Threat ID:</th>
						<th>Threat:</th>
						<th style="background-color: deepskyblue;">Expertise:</th>
						<th style="background-color: deepskyblue;">Window of
							Opportunity:</th>
						<th style="background-color: deepskyblue;">Equipment, Effort:</th>
						<th style="background-color: deepskyblue;">Threat Level:</th>
						<th style="background-color: gold;">Safety:</th>
						<th style="background-color: gold;">Financial:</th>
						<th style="background-color: gold;">Operational:</th>
						<th style="background-color: gold;">Privacy:</th>
						<th style="background-color: red;">Security Level:</th>
						<th>SGID:</th>
						<th>Security Goal:</th>
						<th>Comment:</th>
						<th>Valid</th>
						<th>View</th>
					</tr>
				</thead>
				<tbody>
					<%
					
						if (true) {
							System.out.println(ne.getTableCount("tara"));
							if (ne.getTableCount("tara") > 0) {

								res = ne.getResFromTable("tara");
								
								while (res.next()) {
					%>
					<tr>
						<td align="center"><input type="submit" class="btn btn-primary" value="Delete" onclick="return confirm(' Are you sure you want to delete?');"
						name="delete_<%=res.getInt("assetid")%>" /></td>
						<!-- <td align="center"><input type="checkbox"
							name="delete_<%=res.getString("taraid")%>" /></td> -->
			
						<td><%=res.getString("taraid")%></td>
						<td><input type="hidden"
							name="assetid_<%=res.getString("taraid")%>"
							id="inputA_<%=res.getString("taraid")%>" size="4"
							readonly="readonly" value="<%=res.getString("assetid")%>" /><select
							id="selA_<%=res.getString("taraid")%>"
							onchange="choosentext('textareaA_<%=res.getString("taraid")%>', 'selA_<%=res.getString("taraid")%>', 'inputA_<%=res.getString("taraid")%>')">
								<option value="<%=res.getString("assetname")%>"><%=res.getString("assetid")%></option>
								<%
									temp = asi.getResFromTable("assets");
												while (temp.next()) {
								%>
								<option value="<%=temp.getString("assetname")%>"><%=temp.getString("assetid")%></option>
								<%
									}
								%>
						</select></td>
						<td><textarea name="assetname_<%=res.getString("taraid")%>"
								required="" id="textareaA_<%=res.getString("taraid")%>" cols=15
								rows=2 readonly="readonly" title="<%=res.getString("assetname")%>"><%=res.getString("assetname")%></textarea>
						</td>
						<td><select name="ciaag_<%=res.getString("taraid")%>"><option
									value="<%=res.getString("ciaag")%>"><%=res.getString("ciaag")%></option>
								<option value="Auth">Auth</option>
								<option value="Avail">Avail</option>
								<option value="Conf">Conf</option>
								<option value="Integ">Integ</option>
								<option value="Pol">Pol</option>
						</select></td>
						<td><input size="10" type="text"
							name="attackvector_<%=res.getString("taraid")%>" list=avlist
							value="<%=res.getString("attackvector")%>"> <datalist
								id=avlist> <% temp = asi.getResFromTable("attackvectors");
 											while (temp.next()) {%>
							<option value="<%=temp.getString("attackdescription")%>">[<%=temp.getString("avid")%>]&nbsp;<%=temp.getString("attackdescription")%></option>
							<%
								}
							%> </datalist></td>
						<td><textarea
								name="effectofattack_<%=res.getString("taraid")%>" required=""
								cols=15 rows=2 title = "<%=res.getString("effectofattack")%>"><%=res.getString("effectofattack")%></textarea></td>
						<td><textarea 
								name="threatid_<%=res.getString("taraid")%>" required="" 
								cols=15 rows=2><%=res.getString("threatid")%></textarea></td>
						<td><input size="10" 
							name="threat_<%=res.getString("taraid")%>"
							value="<%=res.getString("threat")%>" title ="<%=res.getString("threat")%>"/></td>
						<td><select name="expertise_<%=res.getString("taraid")%>"><option
									value="<%=res.getString("expertise")%>"><%=res.getString("expertise")%></option>
								<option value="Layman">Layman</option>
								<option value="Proficient">Proficient</option>
								<option value="Expert">Expert</option>
								<option value="Sev.Experts">Sev.Experts</option>
						</select></td>
						<td><select
							name="windowofopportunity_<%=res.getString("taraid")%>"><option
									value="<%=res.getString("windowofopportunity")%>"><%=res.getString("windowofopportunity")%></option>
								<option value="Critical">Critical</option>
								<option value="Low">Low</option>
								<option value="Medium">Medium</option>
								<option value="High">High</option>
						</select></td>
						<td><select
							name="equipmenteffort_<%=res.getString("taraid")%>"><option
									value="<%=res.getString("equipmenteffort")%>"><%=res.getString("equipmenteffort")%></option>
								<option value="Standard">Standard</option>
								<option value="Spec.COTS">Spec.COTS</option>
								<option value="Tailored">Tailored</option>
								<option value="Extreme">Extreme</option>
						</select></td>
						<td><%=res.getString("threatlevel")%></td>
						<td><select name="safety_<%=res.getString("taraid")%>"><option
									value="<%=res.getString("safety")%>"><%=res.getString("safety")%></option>
								<option value="No injury">No injury</option>
								<option value="Mod. Injuries">Mod. Injuries</option>
								<option value="Pot. Heavy">Pot. Heavy</option>
								<option value="Fatal Injuries">Fatal Injuries</option>
						</select></td>
						<td><select name="financial_<%=res.getString("taraid")%>"><option
									value="<%=res.getString("financial")%>"><%=res.getString("financial")%></option>
								<option value="No impact">No impact</option>
								<option value="Low">Low</option>
								<option value="Medium">Medium</option>
								<option value="High">High</option>
						</select></td>
						<td><select name="operational_<%=res.getString("taraid")%>"><option
									value="<%=res.getString("operational")%>"><%=res.getString("operational")%></option>
								<option value="No impact">No impact</option>
								<option value="Low">Low</option>
								<option value="Medium">Medium</option>
								<option value="High">High</option>
						</select></td>
						<td><select name="privacy_<%=res.getString("taraid")%>"><option
									value="<%=res.getString("privacy")%>"><%=res.getString("privacy")%></option>
								<option value="No effect">No effect</option>
								<option value="Low">Low</option>
								<option value="Medium">Medium</option>
								<option value="High">High</option>
						</select></td>
						<td><%=res.getString("securitylevel")%></td>
						<td><input type="hidden"
							name="sgid_<%=res.getString("taraid")%>"
							id="inputSG_<%=res.getString("taraid")%>" size="10"
							readonly="readonly" value="<%=res.getString("sgid")%>" /><select
							id="selSG_<%=res.getString("taraid")%>"
							onchange="choosentext('textareaSG_<%=res.getString("taraid")%>', 'selSG_<%=res.getString("taraid")%>', 'inputSG_<%=res.getString("taraid")%>')">
								<option value="<%=res.getString("securitygoal")%>"><%=res.getString("sgid")%></option>
								<%
									temp = asi.getResFromTable("securitygoals");
												while (temp.next()) {
								%>
								<option value="<%=temp.getString("description")%>"><%=temp.getString("sgid")%></option>
								<%
									}
								%>
						</select></td>
						<td><textarea
								name="securitygoal_<%=res.getString("taraid")%>" required=""
								id="textareaSG_<%=res.getString("taraid")%>" cols=15 rows=2 title ="<%=res.getString("securitygoal")%>"><%=res.getString("securitygoal")%></textarea>
						</td>
						<td><textarea name="comments_<%=res.getString("taraid")%>"
								required="" cols=15 rows=2 title = "<%=res.getString("comments")%>"><%=res.getString("comments")%></textarea></td>
						<td><select name="valid_<%=res.getString("taraid")%>"><option
									value="<%=res.getString("valid")%>"><%=res.getString("valid")%></option>
						</select></td>
						<td><button type="button" id="btn" class="btn btn-primary" data-toggle="modal" data-target="#myModal">View</button></td>
					</tr>
					<%
						}

							}
						}
					%>
				</tbody>
			</table>
			<script language="javascript" type="text/javascript" src="script.js"></script>

			<%
				if (ne.getTableCount("tara") > 0) {
			%>
			<!-- <br> <input class="myButton" type="submit" value="Delete" Onclick="ConfirmDelete()" /> --> 
			<%
				}
			%>
		</form>
		</div>
		
	<!-- Modal for View -->
	<div id="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">View</h4>
            </div>
            <div class="modal-body" id="orderDetails">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

		<!-- The Modal -->
		<div id="myModalTARA" class="modal" align="center">
			<!-- Modal content -->
			<div class="modal-content">
				<span id="mySpanTARA" class="close">×</span>
				<form action="controlServlet" method="post">
					<input type="hidden" name="insertTARA" value="">
					<fieldset>
						<legend><h2 align="center">TARA Entry </h2></legend>
						<table>
							<tbody>
								<tr>
									<td><input name="assetid" id="idA" readonly="readonly"
										type="hidden" /></td>
								</tr>
								<tr>
									<td><label>Asset name / ID: <sup class ="mandatory">*</sup> </label></td>
									<td><textarea name="assetname" readonly="readonly" required="" id="editA" 
										cols=40 rows=1></textarea></td>
									<td><select id="ddA" required
										onchange="choosentext('editA', 'ddA', 'idA')">
										<option value="">None</option>
											<%
												res = ne.getResFromTable("assets");
												while (res.next()) {
											%>
											<option value="<%=res.getString("assetname")%>"><%=res.getString("assetid")%></option>

											<%
												}
											%>
									</select></td>
								</tr>
								<tr>
									<td><label>Ciaag: </label></td>
									<td><select name="ciaag">
											<option>Auth</option>
											<option>Avail</option>
											<option>Conf</option>
											<option>Integ</option>
											<option>Pol</option>
									</select></td>
								</tr>
								<tr>
									<td><label>Attack Vector: <sup class ="mandatory">*</sup> </label></td>
									<td><textarea name="attackvector" readonly="readonly" required="" id="editAV"
											cols=40 rows=1></textarea></td>
									<td><select id="ddAV" required
										onchange="choosentext('editAV', 'ddAV', 'x')">
											<option value="">None</option>
											<%
												res = ne.getResFromTable("attackvectors");
												while (res.next()) {
											%>
											<option value="<%=res.getString("attackdescription")%>"><%=res.getString("avid")%></option>
											<%
												}
											%>
									</select></td>
								</tr>
								<tr>
									<td><label>Effect Of Attack: <sup class ="mandatory">*</sup> </label></td>
									<td><input name="effectofattack" required="" /></td>
								</tr>
								<tr>
									<td><label>Threat ID: <sup class ="mandatory">*</sup> </label></td>
									<td></td>
									<td><input name="threatid" required="" /></td>
								</tr>
								<tr>
									<td><label>Threat: <sup class ="mandatory">*</sup></label></td>
									<td><input name="threat" required="" /></td>
								</tr>
								<tr>
									<td><label>Expertise: </label></td>
									<td><select name="expertise">
											<option>Layman</option>
											<option>Proficient</option>
											<option>Expert</option>
											<option>Sev.Experts</option>
									</select></td>
								</tr>
								<tr>
									<td><label>Window Of Opportunity: </label></td>
									<td><select name="windowofopportunity">
											<option>Critical</option>
											<option>Low</option>
											<option>Medium</option>
											<option>High</option>
									</select></td>
								</tr>
								<tr>
									<td><label>Equipment, Effort: </label></td>
									<td><select name="equipmenteffort">
											<option>Standard</option>
											<option>Spec.COTS</option>
											<option>Tailored</option>
											<option>Extreme</option>
									</select></td>
								</tr>
								<tr>
									<td><label>Safety: </label></td>
									<td><select name="safety">
											<option>No injury</option>
											<option>Mod. Injuries</option>
											<option>Pot. Heavy</option>
											<option>Fatal Injuries</option>
									</select></td>
								</tr>
								<tr>
									<td><label>Financial: </label></td>
									<td><select name="financial">
											<option>No impact</option>
											<option>Low</option>
											<option>Medium</option>
											<option>High</option>
									</select></td>
								</tr>
								<tr>
									<td><label>Operational: </label></td>
									<td><select name="operational">
											<option>No impact</option>
											<option>Low</option>
											<option>Medium</option>
											<option>High</option>
									</select></td>
								</tr>
								<tr>
									<td><label>Privacy: </label></td>
									<td><select name="privacy">
											<option>No effect</option>
											<option>Low</option>
											<option>Medium</option>
											<option>High</option>
									</select></td>
								</tr>
								<tr>
									<td><label>SGID: <sup class ="mandatory">*</sup></label></td>
									<td></td>
									<td><input type="number" id="idSG" name="sgid"
										list=sgidlist required=""> <datalist id=sgidlist>
										<%
											res = ne.getResFromTable("securitygoals");
											while (res.next()) {
										%>
										<option value="<%=res.getString("sgid")%>"><%=res.getString("sgid")%></option>
										<%
											}
										%> </datalist></td>
								</tr>
								<tr>
									<td><label>Security Goal: <sup class ="mandatory">*</sup></label></td>
									<td><textarea name="securitygoal" required="" id="editSG"
											cols=40 rows=1></textarea></td>
									<td><select id="ddSG"
										onchange="choosentext('editSG', 'ddSG', 'idSG')">
											<option value="">None</option>
											<%
												res = ne.getResFromTable("securitygoals");
												while (res.next()) {
											%>
											<option value="<%=res.getString("description")%>"><%=res.getString("sgid")%></option>
											<%
												}
											%>
									</select></td>
								</tr>
								<tr>
									<td><label>Comment: <sup class ="mandatory">*</sup></label></td>
									<td><input name="comments" required="" /></td>
								</tr>
								<tr>
									<td><label>Valid?</label></td>
									<td><select name="valid">
											<option>yes</option>
											<option>no</option>
									</select></td>
								</tr>
							</tbody>
						</table>
					</fieldset>
					<br> <div align="center"><input class="myButton" type="submit" value="Add" /></div>
				</form> 
			</div>
		</div>
		<script language="javascript" type="text/javascript" src="script.js"></script>
						
	<%
		asi.closeAll();
		ne.closeAll();
	%>
	
</body>
</html>