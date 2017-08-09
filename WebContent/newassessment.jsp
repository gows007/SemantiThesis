<%@page import="model.JDBCService"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ASPICE overview</title>
<!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    

    <!-- Custom CSS -->
    <link href="css/modern-business.css" rel="stylesheet">
     <script language ="javascript" type="text/javascript" src="css/ASPICE.css"></script>
    
 <!-- Bootstrap scripts -->   
 <script language="javascript" type="text/javascript" src="scriptASPICE.js"></script>
</head>
 <body onload="tree();">
<%
		JDBCService ne = new JDBCService();
		ne.selectDb();

		if (JDBCService.msg.equals("")) {
			ne.createTables();
		}
	%>
 <div id="navcontainer">
		<ul id="navlist">
			<li><a href="index.html" id="current">Home</a></li>
			<li><a href="overviewASPICE.jsp" id="current">Help</a></li>
			<li><a href="ASPICEproject.jsp" id="current">Projects</a></li>
			<li><a href="assessment.jsp" id="current">ASPICE Assessment</a></li>
			
		</ul>
</div>		
<div id="content">
		<!--  <div data-role="page" id="pageone">-->
  
    <h4 align="center" class='liketext'><img style='height: 30px; width: 250px; margin-left: auto;' src='Images/aspice logo.jpg'/>Assessment</h4>
<br><hr class="newAssessment">
<div style="horizontal-align: left" class="scrolledView">
 <ul class='tree'>
  <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/pyramid.PNG'/>&nbsp Automotive SPICE</a>
    <ul>
    
      <li><a href="#" onclick="document.in.ENG.value='SYS.2 System Requirements Analysis';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level1.jpg'/>&nbsp&nbsp SYS.2 System Requirements Analysis</a>
        <ul>
          <li><a href="#" onclick="document.in.level.value='Level 1 (Performed Process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 1 (Performed Process)</a>
          		<ul>
					<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 1.1 Process Performance</a>
					<ul>
					<li><a href="#" onclick="$('#target').toggle();"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 1.1.1 Achieve the process outcomes</a>
					<ul>
					<li><a href="#" onclick="document.in.BP1.value='BP1: Specify system Requirements';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP1: Specify system Requirements</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP2: Structure system requirements';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP2: Structure system requirements</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP3: Analyze system requirements';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP3: Analyze system requirements</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP4: Analyze the impact on the operating environment';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP4: Analyze the impact on the operating environment</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP5: Develop verification criteria';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP5: Develop verification criteria</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP6: Establish bidirectional traceability';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP6: Establish bidirectional traceability</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP7: Ensure consistency';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP7: Ensure consistency</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP8: Communicate agreed system requirements';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP8: Communicate agreed system requirements</a></li>
					</ul>
					</li>
					</ul>
				
					</li>
					</ul>
		</li>
          <li><a href="#" onclick="document.in.level.value='Level 2 (Managed process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 2 (Managed process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.1 Performance management</a>
				<ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.1 Identify the objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.1 Identify the objectives</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.2 Plan and monitor the performance';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.2 Plan and monitor the performance</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.3 Adjust';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.3 Adjust</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.4 Define responsibilities and authorities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.4 Define responsibilities and authorities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.5 Identify and make available resources';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.5 Identify and make available resources</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.6 Manage the interfaces';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.6 Manage the interfaces</a></li>
				 </ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.2 Work product management</a>
				 <ul>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.1 Define the requirements for the work products';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.1 Define the requirements for the work products</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.2 Define the requirements for documentation and control';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.2 Define the requirements for documentation and control</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.3 Identify, document and control';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.3 Identify, document and control</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.4 Review and adjust work products';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.4 Review and adjust work products</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 <li><a href="#" onclick="document.in.level.value='Level 3 (Established process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 3 (Established process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.1 Process definition</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.1 Define the standard process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.1 Define the standard process</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.2 Determine the sequence and interaction';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.2 Determine the sequence and interaction</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.3 Identify the roles and competencies';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.3 Identify the roles and competencies</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.4 Identify the required infrastructure and work environment';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.4 Identify the required infrastructure and work environment</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.5 Determine suitable methods';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.5 Determine suitable methods</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.2 Process deployment</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.1 Deploy a defined process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.1 Deploy a defined process</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.2 Assign and communicate roles, responsibilities and authorities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.2 Assign and communicate roles, responsibilities and authorities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.3 Ensure necessary competencies';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.3 Ensure necessary competencies</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.4 Provide resources and information';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.4 Provide resources and information</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.5 Provide adequate process infrastructure';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.5 Provide adequate process infrastructure</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.6 Collect and analyse data about performance of the process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.6 Collect and analyse data about performance of the process</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 
		 <li><a href="#" onclick="document.in.level.value='Level 4 (Predictable process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 4 (Predictable process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.1 Process measurement attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.1 Identify process information needs';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.1 Identify process information needs</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.2 Derive process measurement objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.2 Derive process measurement objectives</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.3 Establish quantitative objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.3 Establish quantitative objectives</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.4 Identify product and process measures';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.4 Identify product and process measures</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.5 Collect product and process measurement results';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.5 Collect product and process measurement results</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.6 Use the results of the defined measurement';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.6 Use the results of the defined measurement</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.2 Process control attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.1 Determine analysis and control techniques';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.1 Determine analysis and control techniques</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.2 Define parameters';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.2 Define parameters</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.3 Analyse process and product measurement results';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.3 Analyse process and product measurement results</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.4 Identify and implement corrective actions';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.4 Identify and implement corrective actions</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.5 Re-establish control limits';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.5 Re-establish control limits</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		  <li><a href="#" onclick="document.in.level.value='Level 5 (Optimizing process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 5 (Optimizing process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.1 Process innovation attribute</a>
				<ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.1 Define the process improvement objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.1 Define the process improvement objectives</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.2 Analyse measurement data';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.2 Analyse measurement data</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.3 Identify improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.3 Identify improvement opportunities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.4 Derive improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.4 Derive improvement opportunities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.5 Define an implementation strategy';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.5 Define an implementation strategy</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.2 Process optimization attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.1 Assess the impact of each proposed change';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.1 Assess the impact of each proposed change</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.2 Manage the implementation of agreed changes';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.2 Manage the implementation of agreed changes</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.3 Evaluate the effectiveness of process change';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.3 Evaluate the effectiveness of process change</a></li>
				</ul>
				</li>
			</ul>
		 </li>
		</ul>
      </li>
      
      <li><a href="#" onclick="document.in.ENG.value='SYS.3 System Architectural Design';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level1.jpg'/>&nbsp&nbsp SYS.3 System Architectural Design</a>
        <ul>
          <li><a href="#" onclick="document.in.level.value='Level 1 (Performed Process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 1 (Performed Process)</a>
          		<ul>
					<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 1.1 Process Performance</a>
					<ul>
					<li><a href="#" onclick="$('#target').toggle();"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 1.1.1 Achieve the process outcomes</a>
					<ul>
					<li><a href="#" onclick="document.in.BP1.value='BP1: Develop system architectural design';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP1: Develop system architectural design </a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP2: Allocate system requirements';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP2: Allocate system requirements</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP3: Define interfaces of system elements';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP3: Define interfaces of system elements</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP4: Describe dynamic behaviour';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP4: Describe dynamic behaviour</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP5: Evaluate alternative system architectures';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP5: Evaluate alternative system architectures</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP6: Establish bidirectional traceability';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP6: Establish bidirectional traceability</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP7: Ensure consistency';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP7: Ensure consistency</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP8: Communicate agreed system architectural design';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP8: Communicate agreed system architectural design</a></li>
					</ul>
					</li>
					</ul>
				
					</li>
					</ul>
		</li>
          <li><a href="#" onclick="document.in.level.value='Level 2 (Managed process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 2 (Managed process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.1 Performance management</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.1 Identify the objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.1 Identify the objectives</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.2 Plan and monitor the performance';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.2 Plan and monitor the performance</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.3 Adjust';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.3 Adjust</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.4 Define responsibilities and authorities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.4 Define responsibilities and authorities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.5 Identify and make available resources';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.5 Identify and make available resources</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.6 Manage the interfaces';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.6 Manage the interfaces</a></li>
				 </ul>
				 </li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.2 Work product management</a>
				  <ul>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.1 Define the requirements for the work products';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.1 Define the requirements for the work products</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.2 Define the requirements for documentation and control';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.2 Define the requirements for documentation and control</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.3 Identify, document and control';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.3 Identify, document and control</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.4 Review and adjust work products';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.4 Review and adjust work products</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 <li><a href="#" onclick="document.in.level.value='Level 3 (Established process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 3 (Established process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.1 Process definition</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.1 Define the standard process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.1 Define the standard process</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.2 Determine the sequence and interaction';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.2 Determine the sequence and interaction</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.3 Identify the roles and competencies';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.3 Identify the roles and competencies</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.4 Identify the required infrastructure and work environment';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.4 Identify the required infrastructure and work environment</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.5 Determine suitable methods';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.5 Determine suitable methods</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.2 Process deployment</a>
				<ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.1 Deploy a defined process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.1 Deploy a defined process</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.2 Assign and communicate roles, responsibilities and authorities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.2 Assign and communicate roles, responsibilities and authorities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.3 Ensure necessary competencies';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.3 Ensure necessary competencies</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.4 Provide resources and information';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.4 Provide resources and information</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.5 Provide adequate process infrastructure';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.5 Provide adequate process infrastructure</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.6 Collect and analyse data about performance of the process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.6 Collect and analyse data about performance of the process</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 
		 <li><a href="#" onclick="document.in.level.value='Level 4 (Predictable process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 4 (Predictable process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.1 Process measurement attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.1 Identify process information needs';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.1 Identify process information needs</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.2 Derive process measurement objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.2 Derive process measurement objectives</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.3 Establish quantitative objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.3 Establish quantitative objectives</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.4 Identify product and process measures';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.4 Identify product and process measures</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.5 Collect product and process measurement results';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.5 Collect product and process measurement results</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.6 Use the results of the defined measurement';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.6 Use the results of the defined measurement</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.2 Process control attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.1 Determine analysis and control techniques';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.1 Determine analysis and control techniques</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.2 Define parameters';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.2 Define parameters</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.3 Analyse process and product measurement results';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.3 Analyse process and product measurement results</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.4 Identify and implement corrective actions';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.4 Identify and implement corrective actions</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.5 Re-establish control limits';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.5 Re-establish control limits</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		  <li><a href="#" onclick="document.in.level.value='Level 5 (Optimizing process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 5 (Optimizing process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.1 Process innovation attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.1 Define the process improvement objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.1 Define the process improvement objectives</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.2 Analyse measurement data';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.2 Analyse measurement data</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.3 Identify improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.3 Identify improvement opportunities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.4 Derive improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.4 Derive improvement opportunities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.5 Define an implementation strategy';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.5 Define an implementation strategy</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.2 Process optimization attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.1 Assess the impact of each proposed change';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.1 Assess the impact of each proposed change</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.2 Manage the implementation of agreed changes';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.2 Manage the implementation of agreed changes</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.3 Evaluate the effectiveness of process change';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.3 Evaluate the effectiveness of process change</a></li>
				</ul>
				</li>
			</ul>
		 </li>
		</ul>
      </li>
      
      <li><a href="#" onclick="document.in.ENG.value='SYS.3 System Architectural Design';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level1.jpg'/>&nbsp&nbsp SYS.4 System Integration and Integration Test</a>
        <ul>
          <li><a href="#" onclick="document.in.level.value='Level 1 (Performed Process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 1 (Performed Process)</a>
          		<ul>
					<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 1.1 Process Performance</a>
					<ul>
					<li><a href="#" onclick="$('#target').toggle();"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 1.1.1 Achieve the process outcomes</a>
					<ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.4 Derive improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP1: Develop system integration strategy</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.4 Derive improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP2: Develop system integration test strategy including regression test strategy</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.4 Derive improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP3: Develop specification for system integration test</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.4 Derive improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP4: Integrate system items</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.4 Derive improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP5: Select test cases</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.4 Derive improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP6: Perform system integration test</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.4 Derive improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP7: Establish bidirectional traceability</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.4 Derive improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP8: Ensure consistency</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.4 Derive improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP9: Summarize and communicate results</a></li>
					</ul>
					</li>
					</ul>
				
					</li>
					</ul>
		</li>
          <li><a href="#" onclick="document.in.level.value='Level 2 (Managed process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 2 (Managed process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.1 Performance management</a>
				  <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.1 Identify the objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.1 Identify the objectives</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.2 Plan and monitor the performance';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.2 Plan and monitor the performance</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.3 Adjust';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.3 Adjust</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.4 Define responsibilities and authorities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.4 Define responsibilities and authorities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.5 Identify and make available resources';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.5 Identify and make available resources</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.6 Manage the interfaces';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.6 Manage the interfaces</a></li>
				 </ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.2 Work product management</a>
				 <ul>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.1 Define the requirements for the work products';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.1 Define the requirements for the work products</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.2 Define the requirements for documentation and control';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.2 Define the requirements for documentation and control</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.3 Identify, document and control';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.3 Identify, document and control</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.4 Review and adjust work products';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.4 Review and adjust work products</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 <li><a href="#" onclick="document.in.level.value='Level 3 (Established process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 3 (Established process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.1 Process definition</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.1 Define the standard process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.1 Define the standard process</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.2 Determine the sequence and interaction';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.2 Determine the sequence and interaction</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.3 Identify the roles and competencies';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.3 Identify the roles and competencies</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.4 Identify the required infrastructure and work environment';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.4 Identify the required infrastructure and work environment</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.5 Determine suitable methods';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.5 Determine suitable methods</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.2 Process deployment</a>
				<ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.1 Deploy a defined process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.1 Deploy a defined process</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.2 Assign and communicate roles, responsibilities and authorities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.2 Assign and communicate roles, responsibilities and authorities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.3 Ensure necessary competencies';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.3 Ensure necessary competencies</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.4 Provide resources and information';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.4 Provide resources and information</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.5 Provide adequate process infrastructure';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.5 Provide adequate process infrastructure</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.6 Collect and analyse data about performance of the process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.6 Collect and analyse data about performance of the process</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 
		 <li><a href="#" onclick="document.in.level.value='Level 4 (Predictable process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 4 (Predictable process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.1 Process measurement attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.1 Identify process information needs';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.1 Identify process information needs</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.2 Derive process measurement objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.2 Derive process measurement objectives</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.3 Establish quantitative objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.3 Establish quantitative objectives</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.4 Identify product and process measures';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.4 Identify product and process measures</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.5 Collect product and process measurement results';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.5 Collect product and process measurement results</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.6 Use the results of the defined measurement';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.6 Use the results of the defined measurement</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.2 Process control attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.1 Determine analysis and control techniques';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.1 Determine analysis and control techniques</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.2 Define parameters';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.2 Define parameters</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.3 Analyse process and product measurement results';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.3 Analyse process and product measurement results</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.4 Identify and implement corrective actions';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.4 Identify and implement corrective actions</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.5 Re-establish control limits';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.5 Re-establish control limits</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		  <li><a href="#" onclick="document.in.level.value='Level 5 (Optimizing process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 5 (Optimizing process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.1 Process innovation attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.1 Define the process improvement objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.1 Define the process improvement objectives</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.2 Analyse measurement data';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.2 Analyse measurement data</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.3 Identify improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.3 Identify improvement opportunities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.4 Derive improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.4 Derive improvement opportunities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.5 Define an implementation strategy';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.5 Define an implementation strategy</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.2 Process optimization attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.1 Assess the impact of each proposed change';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.1 Assess the impact of each proposed change</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.2 Manage the implementation of agreed changes';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.2 Manage the implementation of agreed changes</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.3 Evaluate the effectiveness of process change';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.3 Evaluate the effectiveness of process change</a></li>
				</ul>
				</li>
			</ul>
		 </li>
		</ul>
      </li>
      
      <li><a href="#" onclick="document.in.ENG.value='SYS.5 System Qualification Test';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level1.jpg'/>&nbsp&nbsp SYS.5 System Qualification Test</a>
       <ul>
          <li><a href="#" onclick="document.in.level.value='Level 1 (Performed Process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 1 (Performed Process)</a>
          		<ul>
					<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 1.1 Process Performance</a>
					<ul>
					<li><a href="#" onclick="$('#target').toggle();"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 1.1.1 Achieve the process outcomes</a>
					<ul>
					<li><a href="#" onclick="document.in.BP1.value='BP1: Develop system qualification test strategy including regression test strategy.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP1: Develop system qualification test strategy including regression test strategy.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP2: Develop specification for system qualification test.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP2: Develop specification for system qualification test.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP3: Select test cases.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP3: Select test cases.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP4: Test integrated system.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP4: Test integrated system.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP5: Establish bidirectional traceability.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP5: Establish bidirectional traceability.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP6: Ensure consistency.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP6: Ensure consistency.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP7: Summarize and communicate results.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP7: Summarize and communicate results.</a></li>
					</ul>
					</li>
					</ul>
				
					</li>
					</ul>
		</li>
          <li><a href="#" onclick="document.in.level.value='Level 2 (Managed process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 2 (Managed process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.1 Performance management</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.1 Identify the objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.1 Identify the objectives</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.2 Plan and monitor the performance';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.2 Plan and monitor the performance</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.3 Adjust';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.3 Adjust</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.4 Define responsibilities and authorities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.4 Define responsibilities and authorities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.5 Identify and make available resources';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.5 Identify and make available resources</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.6 Manage the interfaces';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.6 Manage the interfaces</a></li>
				 </ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.2 Work product management</a>
				 <ul>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.1 Define the requirements for the work products';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.1 Define the requirements for the work products</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.2 Define the requirements for documentation and control';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.2 Define the requirements for documentation and control</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.3 Identify, document and control';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.3 Identify, document and control</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.4 Review and adjust work products';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.4 Review and adjust work products</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 <li><a href="#" onclick="document.in.level.value='Level 3 (Established process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 3 (Established process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.1 Process definition</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.1 Define the standard process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.1 Define the standard process</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.2 Determine the sequence and interaction';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.2 Determine the sequence and interaction</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.3 Identify the roles and competencies';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.3 Identify the roles and competencies</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.4 Identify the required infrastructure and work environment';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.4 Identify the required infrastructure and work environment</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.5 Determine suitable methods';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.5 Determine suitable methods</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.2 Process deployment</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.1 Deploy a defined process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.1 Deploy a defined process</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.2 Assign and communicate roles, responsibilities and authorities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.2 Assign and communicate roles, responsibilities and authorities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.3 Ensure necessary competencies';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.3 Ensure necessary competencies</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.4 Provide resources and information';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.4 Provide resources and information</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.5 Provide adequate process infrastructure';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.5 Provide adequate process infrastructure</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.6 Collect and analyse data about performance of the process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.6 Collect and analyse data about performance of the process</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 
		 <li><a href="#" onclick="document.in.level.value='Level 4 (Predictable process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 4 (Predictable process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.1 Process measurement attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.1 Identify process information needs';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.1 Identify process information needs</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.2 Derive process measurement objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.2 Derive process measurement objectives</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.3 Establish quantitative objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.3 Establish quantitative objectives</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.4 Identify product and process measures';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.4 Identify product and process measures</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.5 Collect product and process measurement results';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.5 Collect product and process measurement results</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.6 Use the results of the defined measurement';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.6 Use the results of the defined measurement</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.2 Process control attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.1 Determine analysis and control techniques';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.1 Determine analysis and control techniques</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.2 Define parameters';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.2 Define parameters</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.3 Analyse process and product measurement results';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.3 Analyse process and product measurement results</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.4 Identify and implement corrective actions';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.4 Identify and implement corrective actions</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.5 Re-establish control limits';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.5 Re-establish control limits</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		  <li><a href="#" onclick="document.in.level.value='Level 5 (Optimizing process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 5 (Optimizing process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.1 Process innovation attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.1 Define the process improvement objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.1 Define the process improvement objectives</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.2 Analyse measurement data';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.2 Analyse measurement data</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.3 Identify improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.3 Identify improvement opportunities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.4 Derive improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.4 Derive improvement opportunities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.5 Define an implementation strategy';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.5 Define an implementation strategy</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.2 Process optimization attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.1 Assess the impact of each proposed change';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.1 Assess the impact of each proposed change</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.2 Manage the implementation of agreed changes';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.2 Manage the implementation of agreed changes</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.3 Evaluate the effectiveness of process change';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.3 Evaluate the effectiveness of process change</a></li>
				</ul>
				</li>
			</ul>
		 </li>
		</ul>
      </li>
      
      <li><a href="#" onclick="document.in.ENG.value='SWE.1 Software Requirement Analysis';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level1.jpg'/>&nbsp&nbsp SWE.1 Software Requirement Analysis</a>
        <ul>
          <li><a href="#" onclick="document.in.level.value='Level 5 (Optimizing process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 1 (Performed Process)</a>
          		<ul>
					<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 1.1 Process Performance</a>
					<ul>
					<li><a href="#" onclick="$('#target').toggle();"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 1.1.1 Achieve the process outcomes</a>
					<ul>
					<li><a href="#" onclick="document.in.BP1.value='BP1: Specify software requirements.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP1: Specify software requirements.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP2: Structure software requirements.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP2: Structure software requirements.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP3: Analyze software requirements.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP3: Analyze software requirements.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP4: Analyze the impact on the operating environment.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP4: Analyze the impact on the operating environment.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP5: Develop verification criteria.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP5: Develop verification criteria.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP6: Establish bidirectional traceability."><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP6: Establish bidirectional traceability.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP7: Communicate agreed software requirements.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP7: Communicate agreed software requirements.</a></li>
					</ul>
					</li>
					</ul>
				
					</li>
					</ul>
		</li>
          <li><a href="#" onclick="document.in.level.value='Level 2 (Managed process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 2 (Managed process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.1 Performance management</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.1 Identify the objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.1 Identify the objectives</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.2 Plan and monitor the performance';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.2 Plan and monitor the performance</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.3 Adjust';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.3 Adjust</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.4 Define responsibilities and authorities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.4 Define responsibilities and authorities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.5 Identify and make available resources';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.5 Identify and make available resources</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.6 Manage the interfaces';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.6 Manage the interfaces</a></li>
				 </ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.2 Work product management</a>
				 <ul>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.1 Define the requirements for the work products';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.1 Define the requirements for the work products</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.2 Define the requirements for documentation and control';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.2 Define the requirements for documentation and control</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.3 Identify, document and control';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.3 Identify, document and control</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.4 Review and adjust work products';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.4 Review and adjust work products</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 <li><a href="#" onclick="document.in.level.value='Level 3 (Established process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 3 (Established process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.1 Process definition</a>
				  <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.1 Define the standard process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.1 Define the standard process</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.2 Determine the sequence and interaction';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.2 Determine the sequence and interaction</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.3 Identify the roles and competencies';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.3 Identify the roles and competencies</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.4 Identify the required infrastructure and work environment';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.4 Identify the required infrastructure and work environment</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.5 Determine suitable methods';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.5 Determine suitable methods</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.2 Process deployment</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.1 Deploy a defined process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.1 Deploy a defined process</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.2 Assign and communicate roles, responsibilities and authorities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.2 Assign and communicate roles, responsibilities and authorities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.3 Ensure necessary competencies';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.3 Ensure necessary competencies</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.4 Provide resources and information';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.4 Provide resources and information</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.5 Provide adequate process infrastructure';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.5 Provide adequate process infrastructure</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.6 Collect and analyse data about performance of the process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.6 Collect and analyse data about performance of the process</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 
		 <li><a href="#" onclick="document.in.level.value='Level 4 (Predictable process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 4 (Predictable process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.1 Process measurement attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.1 Identify process information needs';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.1 Identify process information needs</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.2 Derive process measurement objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.2 Derive process measurement objectives</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.3 Establish quantitative objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.3 Establish quantitative objectives</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.4 Identify product and process measures';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.4 Identify product and process measures</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.5 Collect product and process measurement results';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.5 Collect product and process measurement results</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.6 Use the results of the defined measurement';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.6 Use the results of the defined measurement</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.2 Process control attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.1 Determine analysis and control techniques';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.1 Determine analysis and control techniques</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.2 Define parameters';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.2 Define parameters</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.3 Analyse process and product measurement results';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.3 Analyse process and product measurement results</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.4 Identify and implement corrective actions';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.4 Identify and implement corrective actions</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.5 Re-establish control limits';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.5 Re-establish control limits</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		  <li><a href="#" onclick="document.in.level.value='Level 5 (Optimizing process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 5 (Optimizing process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.1 Process innovation attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.1 Define the process improvement objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.1 Define the process improvement objectives</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.2 Analyse measurement data';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.2 Analyse measurement data</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.3 Identify improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.3 Identify improvement opportunities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.4 Derive improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.4 Derive improvement opportunities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.5 Define an implementation strategy';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.5 Define an implementation strategy</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.2 Process optimization attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.1 Assess the impact of each proposed change';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.1 Assess the impact of each proposed change</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.2 Manage the implementation of agreed changes';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.2 Manage the implementation of agreed changes</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.3 Evaluate the effectiveness of process change';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.3 Evaluate the effectiveness of process change</a></li>
				</ul>
				</li>
			</ul>
		 </li>
		</ul>
      </li>
      
      <li><a href="#" onclick="document.in.EBG.value='SWE.2 Software Architectural Design';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level1.jpg'/>&nbsp&nbsp SWE.2 Software Architectural Design</a>
        <ul>
          <li><a href="#" onclick="document.in.level.value='Level 1 (Performed Process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 1 (Performed Process)</a>
          		<ul>
					<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 1.1 Process Performance</a>
					<ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 1.1.1 Achieve the process outcomes</a>
					<ul>
					<li><a href="#" onclick="document.in.BP1.value='BP1: Develop software architectural design.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP1: Develop software architectural design.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP2: Allocate software requirements.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP2: Allocate software requirements.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP3: Define interfaces of software elements.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP3: Define interfaces of software elements.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP4: Describe dynamic behavior.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP4: Describe dynamic behavior.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP5: Define resource consumption objectives.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP5: Define resource consumption objectives.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP6: Evaluate alternative software architectures.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP6: Evaluate alternative software architectures.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP7: Establish bidirectional traceability.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP7: Establish bidirectional traceability.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP8: Ensure consistency.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP8: Ensure consistency.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP9: Communicate agreed software requirements.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP9: Communicate agreed software requirements.</a></li>
					</ul>
					</li>
					</ul>
				
					</li>
					</ul>
		</li>
          <li><a href="#" onclick="document.in.level.value='Level 2 (Managed process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 2 (Managed process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.1 Performance management</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.1 Identify the objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.1 Identify the objectives</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.2 Plan and monitor the performance';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.2 Plan and monitor the performance</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.3 Adjust';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.3 Adjust</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.4 Define responsibilities and authorities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.4 Define responsibilities and authorities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.5 Identify and make available resources';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.5 Identify and make available resources</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.6 Manage the interfaces';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.6 Manage the interfaces</a></li>
				 </ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.2 Work product management</a>
				 <ul>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.1 Define the requirements for the work products';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.1 Define the requirements for the work products</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.2 Define the requirements for documentation and control';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.2 Define the requirements for documentation and control</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.3 Identify, document and control';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.3 Identify, document and control</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.4 Review and adjust work products';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.4 Review and adjust work products</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 <li><a href="#" onclick="document.in.level.value='Level 3 (Established process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 3 (Established process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.1 Process definition</a>
				  <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.1 Define the standard process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.1 Define the standard process</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.2 Determine the sequence and interaction';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.2 Determine the sequence and interaction</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.3 Identify the roles and competencies';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.3 Identify the roles and competencies</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.4 Identify the required infrastructure and work environment';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.4 Identify the required infrastructure and work environment</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.5 Determine suitable methods';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.5 Determine suitable methods</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.2 Process deployment</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.1 Deploy a defined process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.1 Deploy a defined process</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.2 Assign and communicate roles, responsibilities and authorities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.2 Assign and communicate roles, responsibilities and authorities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.3 Ensure necessary competencies';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.3 Ensure necessary competencies</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.4 Provide resources and information';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.4 Provide resources and information</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.5 Provide adequate process infrastructure';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.5 Provide adequate process infrastructure</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.6 Collect and analyse data about performance of the process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.6 Collect and analyse data about performance of the process</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 
		 <li><a href="#" onclick="document.in.level.value='Level 4 (Predictable process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 4 (Predictable process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.1 Process measurement attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.1 Identify process information needs';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.1 Identify process information needs</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.2 Derive process measurement objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.2 Derive process measurement objectives</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.3 Establish quantitative objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.3 Establish quantitative objectives</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.4 Identify product and process measures';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.4 Identify product and process measures</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.5 Collect product and process measurement results';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.5 Collect product and process measurement results</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.6 Use the results of the defined measurement';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.6 Use the results of the defined measurement</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.2 Process control attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.1 Determine analysis and control techniques';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.1 Determine analysis and control techniques</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.2 Define parameters';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.2 Define parameters</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.3 Analyse process and product measurement results';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.3 Analyse process and product measurement results</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.4 Identify and implement corrective actions';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.4 Identify and implement corrective actions</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.5 Re-establish control limits';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.5 Re-establish control limits</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		  <li><a href="#" onclick="document.in.level.value='Level 5 (Optimizing process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 5 (Optimizing process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.1 Process innovation attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.1 Define the process improvement objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.1 Define the process improvement objectives</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.2 Analyse measurement data';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.2 Analyse measurement data</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.3 Identify improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.3 Identify improvement opportunities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.4 Derive improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.4 Derive improvement opportunities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.5 Define an implementation strategy';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.5 Define an implementation strategy</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.2 Process optimization attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.1 Assess the impact of each proposed change';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.1 Assess the impact of each proposed change</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.2 Manage the implementation of agreed changes';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.2 Manage the implementation of agreed changes</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.3 Evaluate the effectiveness of process change';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.3 Evaluate the effectiveness of process change</a></li>
				</ul>
				</li>
			</ul>
		 </li>
		</ul>
      </li>
      
      <li><a href="#" onclick="document.in.ENG.value='SWE.3 Software Detailed Design and Unit Construction';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level1.jpg'/>&nbsp&nbsp SWE.3 Software Detailed Design and Unit Construction</a>
        <ul>
          <li><a href="#" onclick="document.in.level.value='GP 5.2.1 Assess the impact of each proposed change';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 1 (Performed Process)</a>
          		<ul>
					<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 1.1 Process Performance</a>
					<ul>
					<li><a href="#" onclick="$('#target').toggle();"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 1.1.1 Achieve the process outcomes</a>
					<ul>
					<li><a href="#" onclick="document.in.BP1.value='BP1: Develop software detailed design';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP1: Develop software detailed design</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP2: Define interfaces of software units';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP2: Define interfaces of software units</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP3: Describe dynamic behavior';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP3: Describe dynamic behavior</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP4: Evaluate software detailed design';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP4: Evaluate software detailed design</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP5: Establish bidirectional traceability';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP5: Establish bidirectional traceability</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP6: Ensure consistency';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP6: Ensure consistency</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP7: Communicate agreed software detailed design';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP7: Communicate agreed software detailed design</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP8: Develop software units';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP8: Develop software units</a></li>
					</ul>
					</li>
					</ul>
				
					</li>
					</ul>
		</li>
          <li><a href="#" onclick="document.in.level.value='Level 2 (Managed process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 2 (Managed process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.1 Performance management</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.1 Identify the objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.1 Identify the objectives</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.2 Plan and monitor the performance';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.2 Plan and monitor the performance</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.3 Adjust';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.3 Adjust</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.4 Define responsibilities and authorities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.4 Define responsibilities and authorities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.5 Identify and make available resources';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.5 Identify and make available resources</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.6 Manage the interfaces';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.6 Manage the interfaces</a></li>
				 </ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.2 Work product management</a>
				 <ul>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.1 Define the requirements for the work products';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.1 Define the requirements for the work products</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.2 Define the requirements for documentation and control';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.2 Define the requirements for documentation and control</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.3 Identify, document and control';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.3 Identify, document and control</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.4 Review and adjust work products';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.4 Review and adjust work products</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 <li><a href="#" onclick="document.in.level.value='Level 3 (Established process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 3 (Established process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.1 Process definition</a>
				  <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.1 Define the standard process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.1 Define the standard process</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.2 Determine the sequence and interaction';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.2 Determine the sequence and interaction</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.3 Identify the roles and competencies';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.3 Identify the roles and competencies</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.4 Identify the required infrastructure and work environment';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.4 Identify the required infrastructure and work environment</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.5 Determine suitable methods';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.5 Determine suitable methods</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.2 Process deployment</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.1 Deploy a defined process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.1 Deploy a defined process</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.2 Assign and communicate roles, responsibilities and authorities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.2 Assign and communicate roles, responsibilities and authorities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.3 Ensure necessary competencies';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.3 Ensure necessary competencies</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.4 Provide resources and information';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.4 Provide resources and information</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.5 Provide adequate process infrastructure';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.5 Provide adequate process infrastructure</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.6 Collect and analyse data about performance of the process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.6 Collect and analyse data about performance of the process</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 
		 <li><a href="#" onclick="document.in.level.value='Level 4 (Predictable process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 4 (Predictable process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.1 Process measurement attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.1 Identify process information needs';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.1 Identify process information needs</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.2 Derive process measurement objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.2 Derive process measurement objectives</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.3 Establish quantitative objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.3 Establish quantitative objectives</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.4 Identify product and process measures';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.4 Identify product and process measures</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.5 Collect product and process measurement results';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.5 Collect product and process measurement results</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.6 Use the results of the defined measurement';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.6 Use the results of the defined measurement</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.2 Process control attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.1 Determine analysis and control techniques';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.1 Determine analysis and control techniques</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.2 Define parameters';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.2 Define parameters</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.3 Analyse process and product measurement results';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.3 Analyse process and product measurement results</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.4 Identify and implement corrective actions';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.4 Identify and implement corrective actions</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.5 Re-establish control limits';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.5 Re-establish control limits</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		  <li><a href="#" onclick="document.in.level.value='Level 5 (Optimizing process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 5 (Optimizing process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.1 Process innovation attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.1 Define the process improvement objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.1 Define the process improvement objectives</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.2 Analyse measurement data';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.2 Analyse measurement data</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.3 Identify improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.3 Identify improvement opportunities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.4 Derive improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.4 Derive improvement opportunities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.5 Define an implementation strategy';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.5 Define an implementation strategy</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.2 Process optimization attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.1 Assess the impact of each proposed change';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.1 Assess the impact of each proposed change</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.2 Manage the implementation of agreed changes';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.2 Manage the implementation of agreed changes</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.3 Evaluate the effectiveness of process change';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.3 Evaluate the effectiveness of process change</a></li>
				</ul>
				</li>
			</ul>
		 </li>
		</ul>
      </li>
      
      <li><a href="#" onclick="document.in.ENG.value='SWE.4 Software Unit Verification';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level1.jpg'/>&nbsp&nbsp SWE.4 Software Unit Verification</a>
        <ul>
          <li><a href="#" onclick="document.in.level.value='Level 1 (Performed Process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 1 (Performed Process)</a>
          		<ul>
					<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 1.1 Process Performance</a>
					<ul>
					<li><a href="#" onclick="$('#target').toggle();"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 1.1.1 Achieve the process outcomes</a>
					<ul>
					<li><a href="#" onclick="document.in.BP1.value='BP1: Develop software unit verification strategy inlcuding regression strategy';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP1: Develop software unit verification strategy inlcuding regression strategy</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP2: Develop criteria for unit verification';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP2: Develop criteria for unit verification</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP3: Perform static verification of software units';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP3: Perform static verification of software units</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP4: Test software units';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP4: Test software units</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP5: Establish bidirectional traceability';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP5: Establish bidirectional traceability</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP6: Ensure consistency';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP6: Ensure consistency</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP7: Summarize and communicate results';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP7: Summarize and communicate results</a></li>
					</ul>
					</li>
					</ul>
				
					</li>
					</ul>
		</li>
          <li><a href="#" onclick="document.in.level.value='Level 2 (Managed process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 2 (Managed process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.1 Performance management</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.1 Identify the objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.1 Identify the objectives</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.2 Plan and monitor the performance';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.2 Plan and monitor the performance</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.3 Adjust';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.3 Adjust</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.4 Define responsibilities and authorities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.4 Define responsibilities and authorities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.5 Identify and make available resources';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.5 Identify and make available resources</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.6 Manage the interfaces';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.6 Manage the interfaces</a></li>
				 </ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.2 Work product management</a>
				 <ul>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.1 Define the requirements for the work products';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.1 Define the requirements for the work products</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.2 Define the requirements for documentation and control';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.2 Define the requirements for documentation and control</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.3 Identify, document and control';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.3 Identify, document and control</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.4 Review and adjust work products';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.4 Review and adjust work products</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 <li><a href="#" onclick="document.in.level.value='Level 3 (Established process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 3 (Established process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.1 Process definition</a>
				  <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.1 Define the standard process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.1 Define the standard process</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.2 Determine the sequence and interaction';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.2 Determine the sequence and interaction</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.3 Identify the roles and competencies';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.3 Identify the roles and competencies</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.4 Identify the required infrastructure and work environment';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.4 Identify the required infrastructure and work environment</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.5 Determine suitable methods';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.5 Determine suitable methods</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.2 Process deployment</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.1 Deploy a defined process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.1 Deploy a defined process</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.2 Assign and communicate roles, responsibilities and authorities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.2 Assign and communicate roles, responsibilities and authorities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.3 Ensure necessary competencies';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.3 Ensure necessary competencies</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.4 Provide resources and information';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.4 Provide resources and information</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.5 Provide adequate process infrastructure';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.5 Provide adequate process infrastructure</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.6 Collect and analyse data about performance of the process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.6 Collect and analyse data about performance of the process</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 
		 <li><a href="#" onclick="document.in.level.value='Level 4 (Predictable process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 4 (Predictable process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.1 Process measurement attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.1 Identify process information needs';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.1 Identify process information needs</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.2 Derive process measurement objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.2 Derive process measurement objectives</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.3 Establish quantitative objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.3 Establish quantitative objectives</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.4 Identify product and process measures';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.4 Identify product and process measures</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.5 Collect product and process measurement results';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.5 Collect product and process measurement results</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.6 Use the results of the defined measurement';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.6 Use the results of the defined measurement</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.2 Process control attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.1 Determine analysis and control techniques';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.1 Determine analysis and control techniques</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.2 Define parameters';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.2 Define parameters</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.3 Analyse process and product measurement results';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.3 Analyse process and product measurement results</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.4 Identify and implement corrective actions';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.4 Identify and implement corrective actions</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.5 Re-establish control limits';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.5 Re-establish control limits</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		  <li><a href="#" onclick="document.in.level.value='Level 5 (Optimizing process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 5 (Optimizing process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.1 Process innovation attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.1 Define the process improvement objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.1 Define the process improvement objectives</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.2 Analyse measurement data';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.2 Analyse measurement data</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.3 Identify improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.3 Identify improvement opportunities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.4 Derive improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.4 Derive improvement opportunities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.5 Define an implementation strategy';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.5 Define an implementation strategy</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.2 Process optimization attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.1 Assess the impact of each proposed change';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.1 Assess the impact of each proposed change</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.2 Manage the implementation of agreed changes';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.2 Manage the implementation of agreed changes</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.3 Evaluate the effectiveness of process change';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.3 Evaluate the effectiveness of process change</a></li>
				</ul>
				</li>
			</ul>
		 </li>
		</ul>
      </li>
      
      <li><a href="#" onclick="document.in.ENG.value='SWE.5 Software Integration and Integration Test';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level1.jpg'/>&nbsp&nbsp SWE.5 Software Integration and Integration Test</a>
        <ul>
          <li><a href="#" onclick="document.in.level.value='Level 1 (Performed Process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 1 (Performed Process)</a>
          		<ul>
					<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 1.1 Process Performance</a>
					<ul>
					<li><a href="#" onclick="$('#target').toggle();"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 1.1.1 Achieve the process outcomes</a>
					<ul>
					<li><a href="#" onclick="document.in.BP1.value='BP1: Develop software integration strategy';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP1: Develop software integration strategy</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP2: Develop software integration test strategy including regression test strategy';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP2: Develop software integration test strategy including regression test strategy</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP3: Develop specification for software integration test';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP3: Develop specification for software integration test</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP4: Integrate software items and software items';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP4: Integrate software items and software items</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP5: Select test cases';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP5: Select test cases</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP6: Perform software integration test';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP6: Perform software integration test</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP7: Establish bidirectional traceability';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP7: Establish bidirectional traceability</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP8: Ensure consistency';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP8: Ensure consistency</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP9: Summarize and communicate results';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP9: Summarize and communicate results</a></li>
					</ul>
					</li>
					</ul>
				
					</li>
					</ul>
		</li>
          <li><a href="#" onclick="document.in.level.value='Level 2 (Managed process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 2 (Managed process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.1 Performance management</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.1 Identify the objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.1 Identify the objectives</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.2 Plan and monitor the performance';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.2 Plan and monitor the performance</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.3 Adjust';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.3 Adjust</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.4 Define responsibilities and authorities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.4 Define responsibilities and authorities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.5 Identify and make available resources';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.5 Identify and make available resources</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.6 Manage the interfaces';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.6 Manage the interfaces</a></li>
				 </ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.2 Work product management</a>
				 <ul>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.1 Define the requirements for the work products';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.1 Define the requirements for the work products</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.2 Define the requirements for documentation and control';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.2 Define the requirements for documentation and control</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.3 Identify, document and control';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.3 Identify, document and control</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.4 Review and adjust work products';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.4 Review and adjust work products</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 <li><a href="#" onclick="document.in.level.value='Level 3 (Established process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 3 (Established process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.1 Process definition</a>
				  <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.1 Define the standard process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.1 Define the standard process</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.2 Determine the sequence and interaction';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.2 Determine the sequence and interaction</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.3 Identify the roles and competencies';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.3 Identify the roles and competencies</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.4 Identify the required infrastructure and work environment';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.4 Identify the required infrastructure and work environment</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.5 Determine suitable methods';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.5 Determine suitable methods</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.2 Process deployment</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.1 Deploy a defined process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.1 Deploy a defined process</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.2 Assign and communicate roles, responsibilities and authorities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.2 Assign and communicate roles, responsibilities and authorities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.3 Ensure necessary competencies';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.3 Ensure necessary competencies</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.4 Provide resources and information';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.4 Provide resources and information</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.5 Provide adequate process infrastructure';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.5 Provide adequate process infrastructure</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.6 Collect and analyse data about performance of the process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.6 Collect and analyse data about performance of the process</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 
		 <li><a href="#" onclick="document.in.level.value='Level 4 (Predictable process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 4 (Predictable process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.1 Process measurement attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.1 Identify process information needs';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.1 Identify process information needs</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.2 Derive process measurement objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.2 Derive process measurement objectives</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.3 Establish quantitative objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.3 Establish quantitative objectives</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.4 Identify product and process measures';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.4 Identify product and process measures</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.5 Collect product and process measurement results';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.5 Collect product and process measurement results</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.6 Use the results of the defined measurement';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.6 Use the results of the defined measurement</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.2 Process control attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.1 Determine analysis and control techniques';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.1 Determine analysis and control techniques</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.2 Define parameters';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.2 Define parameters</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.3 Analyse process and product measurement results';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.3 Analyse process and product measurement results</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.4 Identify and implement corrective actions';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.4 Identify and implement corrective actions</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.5 Re-establish control limits';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.5 Re-establish control limits</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		  <li><a href="#" onclick="document.in.level.value='Level 5 (Optimizing process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 5 (Optimizing process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.1 Process innovation attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.1 Define the process improvement objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.1 Define the process improvement objectives</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.2 Analyse measurement data';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.2 Analyse measurement data</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.3 Identify improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.3 Identify improvement opportunities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.4 Derive improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.4 Derive improvement opportunities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.5 Define an implementation strategy';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.5 Define an implementation strategy</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.2 Process optimization attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.1 Assess the impact of each proposed change';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.1 Assess the impact of each proposed change</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.2 Manage the implementation of agreed changes';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.2 Manage the implementation of agreed changes</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.3 Evaluate the effectiveness of process change';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.3 Evaluate the effectiveness of process change</a></li>
				</ul>
				</li>
			</ul>
		 </li>
		</ul>
      </li>
      
      
      <li><a href="#" onclick="document.in.ENG.value='SWE.6 Software Qualification Test';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level1.jpg'/>&nbsp&nbsp SWE.6 Software Qualification Test</a>
        <ul>
          <li><a href="#" onclick="document.in.level.value='Level 1 (Performed Process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 1 (Performed Process)</a>
          		<ul>
					<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 1.1 Process Performance</a>
					<ul>
					<li><a href="#" onclick="$('#target').toggle();"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 1.1.1 Achieve the process outcomes</a>
					<ul>
					<li><a href="#" onclick="document.in.BP1.value='BP1: Develop software qualification test strategy including regression test strategy.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP1: Develop software qualification test strategy including regression test strategy.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP2: Develop specification for software qualification test.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP2: Develop specification for software qualification test.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP3: Select test cases.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP3: Select test cases.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP4: Test integrated software.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP4: Test integrated software.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP5: Establish bidirectional traceability.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP5: Establish bidirectional traceability.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP6: Ensure consistency.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP6: Ensure consistency.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP7: Summarize and communicate results.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP7: Summarize and communicate results.</a></li>
					</ul>
					</li>
					</ul>
				
					</li>
					</ul>
		</li>
          <li><a href="#" onclick="document.in.level.value='Level 2 (Managed process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 2 (Managed process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.1 Performance management</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.1 Identify the objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.1 Identify the objectives</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.2 Plan and monitor the performance';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.2 Plan and monitor the performance</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.3 Adjust';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.3 Adjust</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.4 Define responsibilities and authorities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.4 Define responsibilities and authorities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.5 Identify and make available resources';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.5 Identify and make available resources</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.6 Manage the interfaces';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.6 Manage the interfaces</a></li>
				 </ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.2 Work product management</a>
				 <ul>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.1 Define the requirements for the work products';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.1 Define the requirements for the work products</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.2 Define the requirements for documentation and control';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.2 Define the requirements for documentation and control</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.3 Identify, document and control';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.3 Identify, document and control</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.4 Review and adjust work products';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.4 Review and adjust work products</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 <li><a href="#" onclick="document.in.level.value='Level 3 (Established process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 3 (Established process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.1 Process definition</a>
				  <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.1 Define the standard process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.1 Define the standard process</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.2 Determine the sequence and interaction';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.2 Determine the sequence and interaction</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.3 Identify the roles and competencies';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.3 Identify the roles and competencies</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.4 Identify the required infrastructure and work environment';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.4 Identify the required infrastructure and work environment</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.5 Determine suitable methods';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.5 Determine suitable methods</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.2 Process deployment</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.1 Deploy a defined process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.1 Deploy a defined process</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.2 Assign and communicate roles, responsibilities and authorities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.2 Assign and communicate roles, responsibilities and authorities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.3 Ensure necessary competencies';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.3 Ensure necessary competencies</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.4 Provide resources and information';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.4 Provide resources and information</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.5 Provide adequate process infrastructure';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.5 Provide adequate process infrastructure</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.6 Collect and analyse data about performance of the process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.6 Collect and analyse data about performance of the process</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 
		 <li><a href="#" onclick="document.in.level.value='Level 4 (Predictable process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 4 (Predictable process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.1 Process measurement attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.1 Identify process information needs';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.1 Identify process information needs</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.2 Derive process measurement objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.2 Derive process measurement objectives</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.3 Establish quantitative objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.3 Establish quantitative objectives</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.4 Identify product and process measures';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.4 Identify product and process measures</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.5 Collect product and process measurement results';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.5 Collect product and process measurement results</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.6 Use the results of the defined measurement';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.6 Use the results of the defined measurement</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.2 Process control attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.1 Determine analysis and control techniques';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.1 Determine analysis and control techniques</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.2 Define parameters';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.2 Define parameters</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.3 Analyse process and product measurement results';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.3 Analyse process and product measurement results</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.4 Identify and implement corrective actions';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.4 Identify and implement corrective actions</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.5 Re-establish control limits';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.5 Re-establish control limits</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		  <li><a href="#" onclick="document.in.level.value='Level 5 (Optimizing process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 5 (Optimizing process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.1 Process innovation attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.1 Define the process improvement objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.1 Define the process improvement objectives</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.2 Analyse measurement data';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.2 Analyse measurement data</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.3 Identify improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.3 Identify improvement opportunities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.4 Derive improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.4 Derive improvement opportunities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.5 Define an implementation strategy';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.5 Define an implementation strategy</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.2 Process optimization attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.1 Assess the impact of each proposed change';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.1 Assess the impact of each proposed change</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.2 Manage the implementation of agreed changes';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.2 Manage the implementation of agreed changes</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.3 Evaluate the effectiveness of process change';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.3 Evaluate the effectiveness of process change</a></li>
				</ul>
				</li>
			</ul>
		 </li>
		</ul>
      </li>
      
      
      <li><a href="#" onclick="document.in.ENG.value='SUP.1 Quality Assurance';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level1.jpg'/>&nbsp&nbsp SUP.1 Quality Assurance</a>
        <ul>
          <li><a href="#" onclick="document.in.level.value='Level 1 (Performed Process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 1 (Performed Process)</a>
          		<ul>
					<li><a href="#"><img  style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 1.1 Process Performance</a>
					<ul>
					<li><a href="#" onclick="$('#target').toggle();"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 1.1.1 Achieve the process outcomes</a>
					<ul>
					<li><a href="#"  onclick="document.in.BP1.value='BP1: Develop a project quality assurance strategy.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP1: Develop a project quality assurance strategy.</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='BP2: Assure quality of work products.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP2: Assure quality of work products.</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='BP3: Assure quality of process activities.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP3: Assure quality of process activities.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP4: Summarize and communicate quality assurance activities and results.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP4: Summarize and communicate quality assurance activities and results.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP5: Ensure resolution of non-conformances.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP5: Ensure resolution of non-conformances.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP6: Implement an escalation mechanism.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP6: Implement an escalation mechanism.</a></li>
					</ul>
					</li>
					</ul>
				
					</li>
					</ul>
		</li>
          <li><a href="#" onclick="document.in.level.value='Level 2 (Managed process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 2 (Managed process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.1 Performance management</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.1 Identify the objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.1 Identify the objectives</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.2 Plan and monitor the performance';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.2 Plan and monitor the performance</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.3 Adjust';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.3 Adjust</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.4 Define responsibilities and authorities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.4 Define responsibilities and authorities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.5 Identify and make available resources';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.5 Identify and make available resources</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.6 Manage the interfaces';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.6 Manage the interfaces</a></li>
				 </ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.2 Work product management</a>
				 <ul>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.1 Define the requirements for the work products';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.1 Define the requirements for the work products</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.2 Define the requirements for documentation and control';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.2 Define the requirements for documentation and control</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.3 Identify, document and control';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.3 Identify, document and control</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.4 Review and adjust work products';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.4 Review and adjust work products</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 <li><a href="#" onclick="document.in.level.value='Level 3 (Established process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 3 (Established process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.1 Process definition</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.1 Define the standard process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.1 Define the standard process</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.2 Determine the sequence and interaction';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.2 Determine the sequence and interaction</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.3 Identify the roles and competencies';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.3 Identify the roles and competencies</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.4 Identify the required infrastructure and work environment';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.4 Identify the required infrastructure and work environment</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.5 Determine suitable methods';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.5 Determine suitable methods</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.2 Process deployment</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.1 Deploy a defined process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.1 Deploy a defined process</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.2 Assign and communicate roles, responsibilities and authorities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.2 Assign and communicate roles, responsibilities and authorities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.3 Ensure necessary competencies';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.3 Ensure necessary competencies</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.4 Provide resources and information';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.4 Provide resources and information</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.5 Provide adequate process infrastructure';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.5 Provide adequate process infrastructure</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.6 Collect and analyse data about performance of the process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.6 Collect and analyse data about performance of the process</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 
		 <li><a href="#" onclick="document.in.level.value='Level 4 (Predictable process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 4 (Predictable process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.1 Process measurement attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.1 Identify process information needs';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.1 Identify process information needs</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.2 Derive process measurement objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.2 Derive process measurement objectives</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.3 Establish quantitative objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.3 Establish quantitative objectives</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.4 Identify product and process measures';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.4 Identify product and process measures</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.5 Collect product and process measurement results';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.5 Collect product and process measurement results</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.6 Use the results of the defined measurement';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.6 Use the results of the defined measurement</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.2 Process control attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.1 Determine analysis and control techniques';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.1 Determine analysis and control techniques</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.2 Define parameters';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.2 Define parameters</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.3 Analyse process and product measurement results';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.3 Analyse process and product measurement results</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.4 Identify and implement corrective actions';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.4 Identify and implement corrective actions</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.5 Re-establish control limits';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.5 Re-establish control limits</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		  <li><a href="#" onclick="document.in.level.value='Level 5 (Optimizing process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 5 (Optimizing process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.1 Process innovation attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.1 Define the process improvement objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.1 Define the process improvement objectives</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.2 Analyse measurement data';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.2 Analyse measurement data</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.3 Identify improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.3 Identify improvement opportunities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.4 Derive improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.4 Derive improvement opportunities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.5 Define an implementation strategy';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.5 Define an implementation strategy</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.2 Process optimization attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.1 Assess the impact of each proposed change';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.1 Assess the impact of each proposed change</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.2 Manage the implementation of agreed changes';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.2 Manage the implementation of agreed changes</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.3 Evaluate the effectiveness of process change';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.3 Evaluate the effectiveness of process change</a></li>
				</ul>
				</li>
			</ul>
		 </li>
		</ul>
       </li>
      
      
      <li><a href="#" onclick="document.in.ENG.value='SUP.8 Configuration Management';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level1.jpg'/>&nbsp&nbsp SUP.8 Configuration Management</a>
        <ul>
          <li><a href="#" onclick="document.in.level.value='Level 1 (Performed Process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 1 (Performed Process)</a>
          		<ul>
					<li><a href="#"><img  style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 1.1 Process Performance</a>
					<ul>
					<li><a href="#" onclick="$('#target').toggle();"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 1.1.1 Achieve the process outcomes</a>
					<ul>
					<li><a href="#"  onclick="document.in.BP1.value='BP1: Develop a project quality assurance strategy.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP1: Develop a configuration management strategy.</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='BP2: Assure quality of work products.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP2: Identify configuration items.</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='BP3: Assure quality of process activities.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP3: Establish a configuration management system.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP4: Summarize and communicate quality assurance activities and results.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP4: Establish branch management strategy.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP5: Ensure resolution of non-conformances.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP5: Control modifications and releases.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP6: Establish baselines.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP6: Establish baselines.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP7: Report configuration status.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP7: Report configuration status.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP8: Verify the information about configuration items.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP8: Verify the information about configuration items.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP9: Manage the storage of configuration items and baselines..';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP9: Manage the storage of configuration items and baselines.</a></li>
					</ul>
					</li>
					</ul>
				
					</li>
					</ul>
		</li>
          <li><a href="#" onclick="document.in.level.value='Level 2 (Managed process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 2 (Managed process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.1 Performance management</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.1 Identify the objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.1 Identify the objectives</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.2 Plan and monitor the performance';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.2 Plan and monitor the performance</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.3 Adjust';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.3 Adjust</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.4 Define responsibilities and authorities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.4 Define responsibilities and authorities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.5 Identify and make available resources';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.5 Identify and make available resources</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.6 Manage the interfaces';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.6 Manage the interfaces</a></li>
				 </ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.2 Work product management</a>
				 <ul>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.1 Define the requirements for the work products';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.1 Define the requirements for the work products</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.2 Define the requirements for documentation and control';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.2 Define the requirements for documentation and control</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.3 Identify, document and control';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.3 Identify, document and control</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.4 Review and adjust work products';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.4 Review and adjust work products</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 <li><a href="#" onclick="document.in.level.value='Level 3 (Established process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 3 (Established process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.1 Process definition</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.1 Define the standard process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.1 Define the standard process</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.2 Determine the sequence and interaction';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.2 Determine the sequence and interaction</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.3 Identify the roles and competencies';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.3 Identify the roles and competencies</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.4 Identify the required infrastructure and work environment';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.4 Identify the required infrastructure and work environment</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.5 Determine suitable methods';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.5 Determine suitable methods</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.2 Process deployment</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.1 Deploy a defined process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.1 Deploy a defined process</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.2 Assign and communicate roles, responsibilities and authorities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.2 Assign and communicate roles, responsibilities and authorities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.3 Ensure necessary competencies';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.3 Ensure necessary competencies</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.4 Provide resources and information';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.4 Provide resources and information</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.5 Provide adequate process infrastructure';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.5 Provide adequate process infrastructure</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.6 Collect and analyse data about performance of the process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.6 Collect and analyse data about performance of the process</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 
		 <li><a href="#" onclick="document.in.level.value='Level 4 (Predictable process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 4 (Predictable process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.1 Process measurement attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.1 Identify process information needs';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.1 Identify process information needs</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.2 Derive process measurement objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.2 Derive process measurement objectives</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.3 Establish quantitative objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.3 Establish quantitative objectives</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.4 Identify product and process measures';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.4 Identify product and process measures</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.5 Collect product and process measurement results';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.5 Collect product and process measurement results</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.6 Use the results of the defined measurement';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.6 Use the results of the defined measurement</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.2 Process control attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.1 Determine analysis and control techniques';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.1 Determine analysis and control techniques</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.2 Define parameters';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.2 Define parameters</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.3 Analyse process and product measurement results';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.3 Analyse process and product measurement results</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.4 Identify and implement corrective actions';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.4 Identify and implement corrective actions</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.5 Re-establish control limits';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.5 Re-establish control limits</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		  <li><a href="#" onclick="document.in.level.value='Level 5 (Optimizing process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 5 (Optimizing process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.1 Process innovation attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.1 Define the process improvement objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.1 Define the process improvement objectives</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.2 Analyse measurement data';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.2 Analyse measurement data</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.3 Identify improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.3 Identify improvement opportunities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.4 Derive improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.4 Derive improvement opportunities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.5 Define an implementation strategy';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.5 Define an implementation strategy</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.2 Process optimization attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.1 Assess the impact of each proposed change';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.1 Assess the impact of each proposed change</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.2 Manage the implementation of agreed changes';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.2 Manage the implementation of agreed changes</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.3 Evaluate the effectiveness of process change';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.3 Evaluate the effectiveness of process change</a></li>
				</ul>
				</li>
			</ul>
		 </li>
		</ul>
       </li>
      
      
      <li><a href="#" onclick="document.in.ENG.value='SUP.9 Problem Resolution Management';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level1.jpg'/>&nbsp&nbsp SUP.9 Problem Resolution Management</a>
        <ul>
          <li><a href="#" onclick="document.in.level.value='Level 1 (Performed Process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 1 (Performed Process)</a>
          		<ul>
					<li><a href="#"><img  style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 1.1 Process Performance</a>
					<ul>
					<li><a href="#" onclick="$('#target').toggle();"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 1.1.1 Achieve the process outcomes</a>
					<ul>
					<li><a href="#"  onclick="document.in.BP1.value='BP1: Develop a project quality assurance strategy.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP1: Develop a configuration management strategy.</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='BP2: Assure quality of work products.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP2: Identify configuration items.</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='BP3: Assure quality of process activities.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP3: Establish a configuration management system.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP4: Summarize and communicate quality assurance activities and results.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP4: Establish branch management strategy.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP5: Ensure resolution of non-conformances.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP5: Control modifications and releases.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP6: Establish baselines.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP6: Establish baselines.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP7: Report configuration status.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP7: Report configuration status.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP8: Verify the information about configuration items.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP8: Verify the information about configuration items.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP9: Manage the storage of configuration items and baselines..';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP9: Manage the storage of configuration items and baselines.</a></li>
					</ul>
					</li>
					</ul>
				
					</li>
					</ul>
		</li>
          <li><a href="#" onclick="document.in.level.value='Level 2 (Managed process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 2 (Managed process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.1 Performance management</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.1 Identify the objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.1 Identify the objectives</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.2 Plan and monitor the performance';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.2 Plan and monitor the performance</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.3 Adjust';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.3 Adjust</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.4 Define responsibilities and authorities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.4 Define responsibilities and authorities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.5 Identify and make available resources';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.5 Identify and make available resources</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.6 Manage the interfaces';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.6 Manage the interfaces</a></li>
				 </ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.2 Work product management</a>
				 <ul>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.1 Define the requirements for the work products';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.1 Define the requirements for the work products</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.2 Define the requirements for documentation and control';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.2 Define the requirements for documentation and control</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.3 Identify, document and control';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.3 Identify, document and control</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.4 Review and adjust work products';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.4 Review and adjust work products</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 <li><a href="#" onclick="document.in.level.value='Level 3 (Established process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 3 (Established process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.1 Process definition</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.1 Define the standard process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.1 Define the standard process</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.2 Determine the sequence and interaction';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.2 Determine the sequence and interaction</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.3 Identify the roles and competencies';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.3 Identify the roles and competencies</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.4 Identify the required infrastructure and work environment';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.4 Identify the required infrastructure and work environment</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.5 Determine suitable methods';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.5 Determine suitable methods</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.2 Process deployment</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.1 Deploy a defined process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.1 Deploy a defined process</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.2 Assign and communicate roles, responsibilities and authorities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.2 Assign and communicate roles, responsibilities and authorities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.3 Ensure necessary competencies';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.3 Ensure necessary competencies</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.4 Provide resources and information';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.4 Provide resources and information</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.5 Provide adequate process infrastructure';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.5 Provide adequate process infrastructure</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.6 Collect and analyse data about performance of the process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.6 Collect and analyse data about performance of the process</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 
		 <li><a href="#" onclick="document.in.level.value='Level 4 (Predictable process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 4 (Predictable process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.1 Process measurement attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.1 Identify process information needs';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.1 Identify process information needs</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.2 Derive process measurement objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.2 Derive process measurement objectives</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.3 Establish quantitative objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.3 Establish quantitative objectives</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.4 Identify product and process measures';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.4 Identify product and process measures</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.5 Collect product and process measurement results';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.5 Collect product and process measurement results</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.6 Use the results of the defined measurement';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.6 Use the results of the defined measurement</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.2 Process control attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.1 Determine analysis and control techniques';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.1 Determine analysis and control techniques</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.2 Define parameters';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.2 Define parameters</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.3 Analyse process and product measurement results';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.3 Analyse process and product measurement results</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.4 Identify and implement corrective actions';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.4 Identify and implement corrective actions</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.5 Re-establish control limits';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.5 Re-establish control limits</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		  <li><a href="#" onclick="document.in.level.value='Level 5 (Optimizing process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 5 (Optimizing process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.1 Process innovation attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.1 Define the process improvement objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.1 Define the process improvement objectives</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.2 Analyse measurement data';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.2 Analyse measurement data</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.3 Identify improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.3 Identify improvement opportunities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.4 Derive improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.4 Derive improvement opportunities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.5 Define an implementation strategy';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.5 Define an implementation strategy</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.2 Process optimization attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.1 Assess the impact of each proposed change';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.1 Assess the impact of each proposed change</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.2 Manage the implementation of agreed changes';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.2 Manage the implementation of agreed changes</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.3 Evaluate the effectiveness of process change';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.3 Evaluate the effectiveness of process change</a></li>
				</ul>
				</li>
			</ul>
		 </li>
		</ul>
       </li>
      
      
      
      <li><a href="#" onclick="document.in.ENG.value='SUP.10 Change Request Management';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level1.jpg'/>&nbsp&nbsp SUP.10 Change Request Management</a>
        <ul>
          <li><a href="#" onclick="document.in.level.value='Level 1 (Performed Process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 1 (Performed Process)</a>
          		<ul>
					<li><a href="#"><img  style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 1.1 Process Performance</a>
					<ul>
					<li><a href="#" onclick="$('#target').toggle();"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 1.1.1 Achieve the process outcomes</a>
					<ul>
					<li><a href="#"  onclick="document.in.BP1.value='BP1: Develop a project quality assurance strategy.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP1: Develop a configuration management strategy.</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='BP2: Assure quality of work products.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP2: Identify configuration items.</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='BP3: Assure quality of process activities.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP3: Establish a configuration management system.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP4: Summarize and communicate quality assurance activities and results.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP4: Establish branch management strategy.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP5: Ensure resolution of non-conformances.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP5: Control modifications and releases.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP6: Establish baselines.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP6: Establish baselines.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP7: Report configuration status.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP7: Report configuration status.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP8: Verify the information about configuration items.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP8: Verify the information about configuration items.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP9: Manage the storage of configuration items and baselines..';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP9: Manage the storage of configuration items and baselines.</a></li>
					</ul>
					</li>
					</ul>
				
					</li>
					</ul>
		</li>
          <li><a href="#" onclick="document.in.level.value='Level 2 (Managed process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 2 (Managed process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.1 Performance management</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.1 Identify the objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.1 Identify the objectives</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.2 Plan and monitor the performance';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.2 Plan and monitor the performance</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.3 Adjust';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.3 Adjust</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.4 Define responsibilities and authorities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.4 Define responsibilities and authorities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.5 Identify and make available resources';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.5 Identify and make available resources</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.6 Manage the interfaces';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.6 Manage the interfaces</a></li>
				 </ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.2 Work product management</a>
				 <ul>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.1 Define the requirements for the work products';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.1 Define the requirements for the work products</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.2 Define the requirements for documentation and control';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.2 Define the requirements for documentation and control</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.3 Identify, document and control';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.3 Identify, document and control</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.4 Review and adjust work products';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.4 Review and adjust work products</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 <li><a href="#" onclick="document.in.level.value='Level 3 (Established process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 3 (Established process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.1 Process definition</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.1 Define the standard process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.1 Define the standard process</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.2 Determine the sequence and interaction';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.2 Determine the sequence and interaction</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.3 Identify the roles and competencies';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.3 Identify the roles and competencies</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.4 Identify the required infrastructure and work environment';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.4 Identify the required infrastructure and work environment</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.5 Determine suitable methods';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.5 Determine suitable methods</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.2 Process deployment</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.1 Deploy a defined process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.1 Deploy a defined process</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.2 Assign and communicate roles, responsibilities and authorities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.2 Assign and communicate roles, responsibilities and authorities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.3 Ensure necessary competencies';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.3 Ensure necessary competencies</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.4 Provide resources and information';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.4 Provide resources and information</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.5 Provide adequate process infrastructure';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.5 Provide adequate process infrastructure</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.6 Collect and analyse data about performance of the process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.6 Collect and analyse data about performance of the process</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 
		 <li><a href="#" onclick="document.in.level.value='Level 4 (Predictable process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 4 (Predictable process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.1 Process measurement attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.1 Identify process information needs';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.1 Identify process information needs</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.2 Derive process measurement objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.2 Derive process measurement objectives</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.3 Establish quantitative objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.3 Establish quantitative objectives</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.4 Identify product and process measures';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.4 Identify product and process measures</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.5 Collect product and process measurement results';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.5 Collect product and process measurement results</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.6 Use the results of the defined measurement';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.6 Use the results of the defined measurement</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.2 Process control attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.1 Determine analysis and control techniques';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.1 Determine analysis and control techniques</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.2 Define parameters';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.2 Define parameters</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.3 Analyse process and product measurement results';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.3 Analyse process and product measurement results</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.4 Identify and implement corrective actions';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.4 Identify and implement corrective actions</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.5 Re-establish control limits';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.5 Re-establish control limits</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		  <li><a href="#" onclick="document.in.level.value='Level 5 (Optimizing process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 5 (Optimizing process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.1 Process innovation attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.1 Define the process improvement objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.1 Define the process improvement objectives</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.2 Analyse measurement data';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.2 Analyse measurement data</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.3 Identify improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.3 Identify improvement opportunities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.4 Derive improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.4 Derive improvement opportunities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.5 Define an implementation strategy';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.5 Define an implementation strategy</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.2 Process optimization attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.1 Assess the impact of each proposed change';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.1 Assess the impact of each proposed change</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.2 Manage the implementation of agreed changes';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.2 Manage the implementation of agreed changes</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.3 Evaluate the effectiveness of process change';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.3 Evaluate the effectiveness of process change</a></li>
				</ul>
				</li>
			</ul>
		 </li>
		</ul>
       </li>
       
       
       <li><a href="#" onclick="document.in.ENG.value='MAN.3 Project Management';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level1.jpg'/>&nbsp&nbsp MAN.3 Project Management</a>
        <ul>
          <li><a href="#" onclick="document.in.level.value='Level 1 (Performed Process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 1 (Performed Process)</a>
          		<ul>
					<li><a href="#"><img  style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 1.1 Process Performance</a>
					<ul>
					<li><a href="#" onclick="$('#target').toggle();"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 1.1.1 Achieve the process outcomes</a>
					<ul>
					<li><a href="#"  onclick="document.in.BP1.value='BP1: Develop a project quality assurance strategy.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP1: Develop a configuration management strategy.</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='BP2: Assure quality of work products.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP2: Identify configuration items.</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='BP3: Assure quality of process activities.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP3: Establish a configuration management system.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP4: Summarize and communicate quality assurance activities and results.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP4: Establish branch management strategy.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP5: Ensure resolution of non-conformances.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP5: Control modifications and releases.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP6: Establish baselines.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP6: Establish baselines.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP7: Report configuration status.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP7: Report configuration status.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP8: Verify the information about configuration items.';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP8: Verify the information about configuration items.</a></li>
					<li><a href="#" onclick="document.in.BP1.value='BP9: Manage the storage of configuration items and baselines..';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP9: Manage the storage of configuration items and baselines.</a></li>
					</ul>
					</li>
					</ul>
				
					</li>
					</ul>
		</li>
          <li><a href="#" onclick="document.in.level.value='Level 2 (Managed process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 2 (Managed process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.1 Performance management</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.1 Identify the objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.1 Identify the objectives</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.2 Plan and monitor the performance';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.2 Plan and monitor the performance</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.3 Adjust';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.3 Adjust</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.4 Define responsibilities and authorities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.4 Define responsibilities and authorities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.5 Identify and make available resources';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.5 Identify and make available resources</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 2.1.6 Manage the interfaces';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.6 Manage the interfaces</a></li>
				 </ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.2 Work product management</a>
				 <ul>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.1 Define the requirements for the work products';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.1 Define the requirements for the work products</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.2 Define the requirements for documentation and control';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.2 Define the requirements for documentation and control</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.3 Identify, document and control';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.3 Identify, document and control</a></li>
					<li><a href="#"  onclick="document.in.BP1.value='GP 2.2.4 Review and adjust work products';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.4 Review and adjust work products</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 <li><a href="#" onclick="document.in.level.value='Level 3 (Established process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 3 (Established process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.1 Process definition</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.1 Define the standard process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.1 Define the standard process</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.2 Determine the sequence and interaction';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.2 Determine the sequence and interaction</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.3 Identify the roles and competencies';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.3 Identify the roles and competencies</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.4 Identify the required infrastructure and work environment';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.4 Identify the required infrastructure and work environment</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.1.5 Determine suitable methods';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.5 Determine suitable methods</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.2 Process deployment</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.1 Deploy a defined process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.1 Deploy a defined process</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.2 Assign and communicate roles, responsibilities and authorities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.2 Assign and communicate roles, responsibilities and authorities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.3 Ensure necessary competencies';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.3 Ensure necessary competencies</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.4 Provide resources and information';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.4 Provide resources and information</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.5 Provide adequate process infrastructure';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.5 Provide adequate process infrastructure</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 3.2.6 Collect and analyse data about performance of the process';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.6 Collect and analyse data about performance of the process</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 
		 <li><a href="#" onclick="document.in.level.value='Level 4 (Predictable process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 4 (Predictable process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.1 Process measurement attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.1 Identify process information needs';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.1 Identify process information needs</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.2 Derive process measurement objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.2 Derive process measurement objectives</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.3 Establish quantitative objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.3 Establish quantitative objectives</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.4 Identify product and process measures';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.4 Identify product and process measures</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.5 Collect product and process measurement results';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.5 Collect product and process measurement results</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.1.6 Use the results of the defined measurement';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.6 Use the results of the defined measurement</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.2 Process control attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.1 Determine analysis and control techniques';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.1 Determine analysis and control techniques</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.2 Define parameters';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.2 Define parameters</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.3 Analyse process and product measurement results';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.3 Analyse process and product measurement results</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.4 Identify and implement corrective actions';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.4 Identify and implement corrective actions</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 4.2.5 Re-establish control limits';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.5 Re-establish control limits</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		  <li><a href="#" onclick="document.in.level.value='Level 5 (Optimizing process)';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 5 (Optimizing process)</a>
          	<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.1 Process innovation attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.1 Define the process improvement objectives';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.1 Define the process improvement objectives</a>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.2 Analyse measurement data';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.2 Analyse measurement data</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.3 Identify improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.3 Identify improvement opportunities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.4 Derive improvement opportunities';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.4 Derive improvement opportunities</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.1.5 Define an implementation strategy';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.5 Define an implementation strategy</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#" onclick="$('#target').toggle();"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.2 Process optimization attribute</a>
				 <ul>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.1 Assess the impact of each proposed change';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.1 Assess the impact of each proposed change</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.2 Manage the implementation of agreed changes';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.2 Manage the implementation of agreed changes</a></li>
					<li><a href="#" onclick="document.in.BP1.value='GP 5.2.3 Evaluate the effectiveness of process change';return false;"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.3 Evaluate the effectiveness of process change</a></li>
				</ul>
				</li>
			</ul>
		 </li>
		</ul>
       </li>
       
      
      
      </ul>
  </ul>
  <!-- Scroll to button  <button onclick="topFunction()" id="myBtn" title="Go to top">Go to Top</button>--> 

 </div> 
 
 </div>
 
 <div class="rightcontainer" style="padding-left: 5px">
<!-- <h5>Click on a BP or GP to see the relevant ASPICE assessment input form below</h5> -->

  
 <div class="container" id="target" style="display: none;"> 
  <div id="content">
		
		<br><form name = "in" action="controlServlet" method="post" onsubmit="refreshParent()">
			<input type="hidden" name="insertAssessment" value="">
			<fieldset>
				 <label class="giveInput" >Observation</label>
				<div style="border:1px solid #e5e5e5;">
				<table class="bluetable">
					<tbody>
										
						<tr>
							<td ><label>Type: <sup class ="mandatory">*</sup></label></td>
							<td>
								<ul style="display: inline;position: relative;">
									<li style="list-style-type: none;"><select name="type">
											<option style="background-color:#d1bd8e; ">Comment</option>
											<option style="background-color:#91c93c; ">Strength</option>
											<option style="background-color:#cea29a; ">Weakness</option>
											<option style="background-color:#86aa7b; ">Note</option>
											<option style="background-color:#eabe52; ">Interview Question</option>
									</select></li>
								</ul></td>
							<td><label>Description: <sup class ="mandatory">*</sup></label><br>
							<textarea id="pname" name="description" required="" cols=50 rows=6></textarea></td>
						</tr>
						
						<tr>
							<td><label>Status: <sup class ="mandatory">*</sup></label></td>
							<td><ul style="display: inline;position: relative;">
									<li style="list-style-type: none;"><select name="type">
											<option>New</option>
											<option>Accepted</option>
											<option>Ambiguous</option>
											<option>Not Accepted</option>
											<option>Interview Question</option>
									</select></li>
								</ul>
								</td>
							<td><label>Assessor Notes: <sup class ="mandatory">*</sup></label><br>
							<textarea name="notes" required="" cols=50 rows=4></textarea></td>	
						</tr>
						<tr><td><input type="checkbox" name="finding" value="Finding"> Finding</td>
						
						</tr>
 						<tr><td><input type="checkbox" name="global" value="Global"> Global</td></tr>
 						
 					</tbody>
				</table>
				</div>
				<br>
				<div style="border:1px solid #e5e5e5;">								
				<table class="bluetable">
				<tbody>	
					<tr valign="top">
							<td width="55%">
							<table>
							<tbody>	
							<tr>
							<td>
							<label>Project ID: <sup class ="mandatory">*</sup></label></td>
							<td>
								<ul style="display: inline;position: relative;">
									<li style="list-style-type: none;"><select name="projectid" required="">
									<option value="">None</option>
											<%
												ResultSet res = null;
												res = ne.getResFromTable("projects");
												while (res.next()) {
											%>
											<option value=<%=res.getInt("projectid")%>><%=res.getInt("projectid")%></option>

											<%
												}
											%>
									</select></li>
								</ul>
							</td>
							
						</tr>
						
						
						
						<tr>
						<td><label>Level selected:</label></td>
						<td><input type="text"  name="level" value="test" size="30" /></td>
						</tr>
						
						<tr>
						<td ><label>Associated Practices</label></td></tr>
						<tr valign="top"><td><label>ENG selected:</label></td>
						<td><input type="text"  name="ENG" value="test" size="30" /></td>
						</tr>
						
						<tr>
							<td valign="top"><label>Base Practice:</label></td>
							<td><input type="text"  name="BP1" value="" size="30" /></td>
						</tr>
						
												
						<tr>
							<td valign="top"><label>Rating:</label></td>
							<td>
								<ul style="display: inline;position: relative;">
									<li style="list-style-type: none;"><select name="rating">
											<option style="background-color:green; ">Achieved</option>
											<option style="background-color:red; ">Not achieved</option>
											<option style="background-color:orange; ">Partially achieved </option>
											<option style="background-color:yellow; ">Note</option>
									</select></li>
								</ul>
							</td>
						</tr>
						
					</tbody>
					</table>
				</td>
				
				<td>
				<table>
				<tbody>
				 <tr>
				 	<td><label>Documents:</label><br>
							<textarea name="docs"  cols=50 rows=1></textarea></td>
					</tr>
					<tr>
					<td><label>Documents Description:</label><br>
							<textarea name="docs"  cols=50 rows=5></textarea></td>
					</tr>
						
					</tbody>
					</table>
				</td>
						</tr>
						
					</tbody>
				</table>
				</div>
				<br> <div class="blueTableButtons"><input id ="myButton" class="myButton" type="submit" value="Add entry" />&nbsp &nbsp
				<input id ="myButton" class="myButton" type="submit" onClick="window.location='assessment.jsp';" value="View assessment" />
				</div>
				<%
					if (JDBCService.msg.equals("available")) {
						if (ne.getTableCount("aspice") > 0) {
				%>
				<!-- <input class="myButton" type="button"
					value="Show entries" onclick="navigation()"></input>  -->
				<%
					}
					}
				%>
				
				
				
				

			</fieldset>
		</form>
		<!--  <script language="javascript" type="text/javascript" src="script.js"></script>-->

	</div>

</div>




<!-- Other PA and GP containers -->


</div>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <script language="javascript" type="text/javascript" src="scriptASPICE.js"></script>
  

</body>
</html>