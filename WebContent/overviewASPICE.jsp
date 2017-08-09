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
    
 <!-- Bootstrap scripts -->   
 <script language="javascript" type="text/javascript" src="scriptASPICE.js"></script>
</head>
 <body onload="tree();">
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
  
    <h4 class='liketext'><img style='height: 30px; width: 250px; margin-left: auto;' src='Images/aspice logo.jpg'/>&nbsp Process Maturity Model</h4>
<br><hr class="newAssessment">
<div style="horizontal-align: left" class="scrolledView">
 <ul class='tree'>
  <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/pyramid.PNG'/>&nbsp Automotive SPICE</a>
    <ul>
      <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level1.jpg'/>&nbsp&nbsp SYS.2 System Requirement Analysis</a>
        <ul>
          <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 1 (Performed Process)</a>
          		<ul>
					<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 1.1 Process Performance</a>
					<ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 1.1.1 Achieve the process outcomes</a>
					<ul>
					<li><a href="#" onclick="$('#target1').hide();$('#target2').hide();$('#target2').hide();$('#target2').hide();$('#target5').hide();$('#target').toggle();"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 1 Identify System Requirements</a></li>
					<li><a href="#" onclick="$('#target').hide();$('#target2').hide();$('#target3').hide();$('#target5').hide();$('#target5').hide();$('#target1').toggle();"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 2 Analyze system requirements</a></li>
					<li><a href="#" onclick="$('#target1').hide();$('#target').hide();$('#target2').hide();$('#target3').hide();$('#target5').hide();$('#target2').toggle();"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 3 Determine the impact on the operating environment</a></li>
					<li><a href="#" onclick="$('#target1').hide();$('#target').hide();$('#target2').hide();$('#target3').hide();$('#target5').hide();$('#target2').toggle();"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 4 Prioritize and categorize system requirements</a></li>
					<li><a href="#" onclick="$('#target').hide();$('#target1').hide();$('#target2').hide();$('#target3').hide();$('#target5').hide();$('#target4').toggle();"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 5 Evaluate and update system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 6 Ensure consistency and bilateral traceability of customer requirements to system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 7 Communicate system requirements</a></li>
					</ul>
					</li>
					</ul>
				
					</li>
					</ul>
		</li>
          <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 2 (Managed process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.1 Performance management</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.1 Identify the objectives</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.2 Plan and monitor the performance</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.3 Adjust</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.4 Define responsibilities and authorities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.5 Identify and make available resources</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.6 Manage the interfaces</a></li>
				 </ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.2 Work product management</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.1 Define the requirements for the work products</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.2 Define the requirements for documentation and control</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.3 Identify, document and control</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.4 Review and adjust work products</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 3 (Established process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.1 Process definition</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.1 Define the standard process</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.2 Determine the sequence and interaction</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.3 Identify the roles and competencies</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.4 Identify the required infrastructure and work environment</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.5 Determine suitable methods</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.2 Process deployment</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.1 Deploy a defined process</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.2 Assign and communicate roles, responsibilities and authorities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.3 Ensure necessary competencies</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.4 Provide resources and information</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.5 Provide adequate process infrastructure</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.6 Collect and analyse data about performance of the process</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 
		 <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 4 (Predictable process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.1 Process measurement attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.1 Identify process information needs</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.2 Derive process measurement objectives</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.3 Establish quantitative objectives</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.4 Identify product and process measures</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.5 Collect product and process measurement results</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.6 Use the results of the defined measurement</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.2 Process control attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.1 Determine analysis and control techniques</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.2 Define parameters</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.3 Analyse process and product measurement results</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.4 Identify and implement corrective actions</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.5 Re-establish control limits</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		  <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 5 (Optimizing process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.1 Process innovation attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.1 Define the process improvement objectives</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.2 Analyse measurement data</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.3 Identify improvement opportunities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.4 Derive improvement opportunities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.5 Define an implementation strategy</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.2 Process optimization attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.1 Assess the impact of each proposed change</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.2 Manage the implementation of agreed changes</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.3 Evaluate the effectiveness of process change</a></li>
				</ul>
				</li>
			</ul>
		 </li>
		</ul>
       </li>
          
        
      
      <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level1.jpg'/>&nbsp&nbsp SYS.3 System Architectural Design</a>
        <ul>
          <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 1 (Performed Process)</a>
          		<ul>
					<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 1.1 Process Performance</a>
					<ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 1.1.1 Achieve the process outcomes</a>
					<ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 1 Identify System Requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 2 Analyze system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 3 Determine the impact on the operating environment</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 4 Prioritize and categorize system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 5 Evaluate and update system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 6 Ensure consistency and bilateral traceability of customer requirements to system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 7 Communicate system requirements</a></li>
					</ul>
					</li>
					</ul>
				
					</li>
					</ul>
		</li>
          <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 2 (Managed process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.1 Performance management</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.1 Identify the objectives</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.2 Plan and monitor the performance</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.3 Adjust</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.4 Define responsibilities and authorities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.5 Identify and make available resources</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.6 Manage the interfaces</a></li>
				 </ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.2 Work product management</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.1 Define the requirements for the work products</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.2 Define the requirements for documentation and control</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.3 Identify, document and control</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.4 Review and adjust work products</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 3 (Established process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.1 Process definition</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.1 Define the standard process</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.2 Determine the sequence and interaction</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.3 Identify the roles and competencies</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.4 Identify the required infrastructure and work environment</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.5 Determine suitable methods</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.2 Process deployment</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.1 Deploy a defined process</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.2 Assign and communicate roles, responsibilities and authorities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.3 Ensure necessary competencies</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.4 Provide resources and information</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.5 Provide adequate process infrastructure</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.6 Collect and analyse data about performance of the process</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 
		 <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 4 (Predictable process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.1 Process measurement attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.1 Identify process information needs</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.2 Derive process measurement objectives</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.3 Establish quantitative objectives</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.4 Identify product and process measures</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.5 Collect product and process measurement results</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.6 Use the results of the defined measurement</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.2 Process control attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.1 Determine analysis and control techniques</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.2 Define parameters</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.3 Analyse process and product measurement results</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.4 Identify and implement corrective actions</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.5 Re-establish control limits</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		  <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 5 (Optimizing process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.1 Process innovation attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.1 Define the process improvement objectives</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.2 Analyse measurement data</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.3 Identify improvement opportunities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.4 Derive improvement opportunities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.5 Define an implementation strategy</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.2 Process optimization attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.1 Assess the impact of each proposed change</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.2 Manage the implementation of agreed changes</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.3 Evaluate the effectiveness of process change</a></li>
				</ul>
				</li>
			</ul>
		 </li>
		</ul>
      </li>
      
      <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level1.jpg'/>&nbsp&nbsp SYS.4 System Integration and Integration Test</a>
        <ul>
          <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 1 (Performed Process)</a>
          		<ul>
					<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 1.1 Process Performance</a>
					<ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 1.1.1 Achieve the process outcomes</a>
					<ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 1 Identify System Requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 2 Analyze system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 3 Determine the impact on the operating environment</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 4 Prioritize and categorize system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 5 Evaluate and update system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 6 Ensure consistency and bilateral traceability of customer requirements to system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 7 Communicate system requirements</a></li>
					</ul>
					</li>
					</ul>
				
					</li>
					</ul>
		</li>
          <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 2 (Managed process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.1 Performance management</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.1 Identify the objectives</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.2 Plan and monitor the performance</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.3 Adjust</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.4 Define responsibilities and authorities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.5 Identify and make available resources</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.6 Manage the interfaces</a></li>
				 </ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.2 Work product management</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.1 Define the requirements for the work products</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.2 Define the requirements for documentation and control</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.3 Identify, document and control</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.4 Review and adjust work products</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 3 (Established process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.1 Process definition</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.1 Define the standard process</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.2 Determine the sequence and interaction</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.3 Identify the roles and competencies</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.4 Identify the required infrastructure and work environment</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.5 Determine suitable methods</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.2 Process deployment</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.1 Deploy a defined process</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.2 Assign and communicate roles, responsibilities and authorities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.3 Ensure necessary competencies</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.4 Provide resources and information</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.5 Provide adequate process infrastructure</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.6 Collect and analyse data about performance of the process</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 
		 <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 4 (Predictable process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.1 Process measurement attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.1 Identify process information needs</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.2 Derive process measurement objectives</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.3 Establish quantitative objectives</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.4 Identify product and process measures</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.5 Collect product and process measurement results</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.6 Use the results of the defined measurement</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.2 Process control attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.1 Determine analysis and control techniques</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.2 Define parameters</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.3 Analyse process and product measurement results</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.4 Identify and implement corrective actions</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.5 Re-establish control limits</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		  <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 5 (Optimizing process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.1 Process innovation attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.1 Define the process improvement objectives</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.2 Analyse measurement data</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.3 Identify improvement opportunities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.4 Derive improvement opportunities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.5 Define an implementation strategy</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.2 Process optimization attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.1 Assess the impact of each proposed change</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.2 Manage the implementation of agreed changes</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.3 Evaluate the effectiveness of process change</a></li>
				</ul>
				</li>
			</ul>
		 </li>
		</ul>
      </li>
      
      <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level1.jpg'/>&nbsp&nbsp SYS.5 System Qualification Test</a>
        <ul>
          <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 1 (Performed Process)</a>
          		<ul>
					<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 1.1 Process Performance</a>
					<ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 1.1.1 Achieve the process outcomes</a>
					<ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 1 Identify System Requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 2 Analyze system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 3 Determine the impact on the operating environment</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 4 Prioritize and categorize system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 5 Evaluate and update system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 6 Ensure consistency and bilateral traceability of customer requirements to system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 7 Communicate system requirements</a></li>
					</ul>
					</li>
					</ul>
				
					</li>
					</ul>
		</li>
          <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 2 (Managed process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.1 Performance management</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.1 Identify the objectives</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.2 Plan and monitor the performance</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.3 Adjust</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.4 Define responsibilities and authorities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.5 Identify and make available resources</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.6 Manage the interfaces</a></li>
				 </ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.2 Work product management</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.1 Define the requirements for the work products</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.2 Define the requirements for documentation and control</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.3 Identify, document and control</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.4 Review and adjust work products</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 3 (Established process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.1 Process definition</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.1 Define the standard process</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.2 Determine the sequence and interaction</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.3 Identify the roles and competencies</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.4 Identify the required infrastructure and work environment</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.5 Determine suitable methods</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.2 Process deployment</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.1 Deploy a defined process</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.2 Assign and communicate roles, responsibilities and authorities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.3 Ensure necessary competencies</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.4 Provide resources and information</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.5 Provide adequate process infrastructure</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.6 Collect and analyse data about performance of the process</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 
		 <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 4 (Predictable process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.1 Process measurement attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.1 Identify process information needs</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.2 Derive process measurement objectives</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.3 Establish quantitative objectives</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.4 Identify product and process measures</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.5 Collect product and process measurement results</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.6 Use the results of the defined measurement</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.2 Process control attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.1 Determine analysis and control techniques</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.2 Define parameters</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.3 Analyse process and product measurement results</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.4 Identify and implement corrective actions</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.5 Re-establish control limits</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		  <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 5 (Optimizing process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.1 Process innovation attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.1 Define the process improvement objectives</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.2 Analyse measurement data</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.3 Identify improvement opportunities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.4 Derive improvement opportunities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.5 Define an implementation strategy</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.2 Process optimization attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.1 Assess the impact of each proposed change</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.2 Manage the implementation of agreed changes</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.3 Evaluate the effectiveness of process change</a></li>
				</ul>
				</li>
			</ul>
		 </li>
		</ul>
      </li>
      
      <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level1.jpg'/>&nbsp&nbsp SWE.1 Software Requirement Analysis</a>
       <ul>
          <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 1 (Performed Process)</a>
          		<ul>
					<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 1.1 Process Performance</a>
					<ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 1.1.1 Achieve the process outcomes</a>
					<ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 1 Identify System Requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 2 Analyze system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 3 Determine the impact on the operating environment</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 4 Prioritize and categorize system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 5 Evaluate and update system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 6 Ensure consistency and bilateral traceability of customer requirements to system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 7 Communicate system requirements</a></li>
					</ul>
					</li>
					</ul>
				
					</li>
					</ul>
		</li>
          <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 2 (Managed process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.1 Performance management</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.1 Identify the objectives</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.2 Plan and monitor the performance</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.3 Adjust</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.4 Define responsibilities and authorities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.5 Identify and make available resources</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.6 Manage the interfaces</a></li>
				 </ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.2 Work product management</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.1 Define the requirements for the work products</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.2 Define the requirements for documentation and control</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.3 Identify, document and control</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.4 Review and adjust work products</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 3 (Established process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.1 Process definition</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.1 Define the standard process</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.2 Determine the sequence and interaction</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.3 Identify the roles and competencies</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.4 Identify the required infrastructure and work environment</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.5 Determine suitable methods</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.2 Process deployment</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.1 Deploy a defined process</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.2 Assign and communicate roles, responsibilities and authorities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.3 Ensure necessary competencies</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.4 Provide resources and information</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.5 Provide adequate process infrastructure</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.6 Collect and analyse data about performance of the process</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 
		 <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 4 (Predictable process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.1 Process measurement attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.1 Identify process information needs</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.2 Derive process measurement objectives</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.3 Establish quantitative objectives</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.4 Identify product and process measures</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.5 Collect product and process measurement results</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.6 Use the results of the defined measurement</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.2 Process control attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.1 Determine analysis and control techniques</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.2 Define parameters</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.3 Analyse process and product measurement results</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.4 Identify and implement corrective actions</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.5 Re-establish control limits</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		  <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 5 (Optimizing process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.1 Process innovation attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.1 Define the process improvement objectives</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.2 Analyse measurement data</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.3 Identify improvement opportunities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.4 Derive improvement opportunities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.5 Define an implementation strategy</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.2 Process optimization attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.1 Assess the impact of each proposed change</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.2 Manage the implementation of agreed changes</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.3 Evaluate the effectiveness of process change</a></li>
				</ul>
				</li>
			</ul>
		 </li>
		</ul>
      </li>
      
      <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level1.jpg'/>&nbsp&nbsp SWE.2 Software Architectural Design</a>
        <ul>
          <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 1 (Performed Process)</a>
          		<ul>
					<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 1.1 Process Performance</a>
					<ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 1.1.1 Achieve the process outcomes</a>
					<ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 1 Identify System Requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 2 Analyze system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 3 Determine the impact on the operating environment</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 4 Prioritize and categorize system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 5 Evaluate and update system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 6 Ensure consistency and bilateral traceability of customer requirements to system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 7 Communicate system requirements</a></li>
					</ul>
					</li>
					</ul>
				
					</li>
					</ul>
		</li>
          <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 2 (Managed process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.1 Performance management</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.1 Identify the objectives</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.2 Plan and monitor the performance</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.3 Adjust</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.4 Define responsibilities and authorities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.5 Identify and make available resources</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.6 Manage the interfaces</a></li>
				 </ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.2 Work product management</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.1 Define the requirements for the work products</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.2 Define the requirements for documentation and control</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.3 Identify, document and control</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.4 Review and adjust work products</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 3 (Established process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.1 Process definition</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.1 Define the standard process</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.2 Determine the sequence and interaction</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.3 Identify the roles and competencies</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.4 Identify the required infrastructure and work environment</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.5 Determine suitable methods</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.2 Process deployment</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.1 Deploy a defined process</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.2 Assign and communicate roles, responsibilities and authorities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.3 Ensure necessary competencies</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.4 Provide resources and information</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.5 Provide adequate process infrastructure</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.6 Collect and analyse data about performance of the process</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 
		 <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 4 (Predictable process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.1 Process measurement attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.1 Identify process information needs</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.2 Derive process measurement objectives</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.3 Establish quantitative objectives</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.4 Identify product and process measures</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.5 Collect product and process measurement results</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.6 Use the results of the defined measurement</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.2 Process control attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.1 Determine analysis and control techniques</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.2 Define parameters</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.3 Analyse process and product measurement results</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.4 Identify and implement corrective actions</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.5 Re-establish control limits</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		  <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 5 (Optimizing process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.1 Process innovation attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.1 Define the process improvement objectives</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.2 Analyse measurement data</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.3 Identify improvement opportunities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.4 Derive improvement opportunities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.5 Define an implementation strategy</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.2 Process optimization attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.1 Assess the impact of each proposed change</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.2 Manage the implementation of agreed changes</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.3 Evaluate the effectiveness of process change</a></li>
				</ul>
				</li>
			</ul>
		 </li>
		</ul>
      </li>
      
      <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level1.jpg'/>&nbsp&nbsp SWE.3 Software Detailed Design and Unit Construction</a>
        <ul>
          <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 1 (Performed Process)</a>
          		<ul>
					<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 1.1 Process Performance</a>
					<ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 1.1.1 Achieve the process outcomes</a>
					<ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 1 Identify System Requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 2 Analyze system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 3 Determine the impact on the operating environment</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 4 Prioritize and categorize system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 5 Evaluate and update system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 6 Ensure consistency and bilateral traceability of customer requirements to system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 7 Communicate system requirements</a></li>
					</ul>
					</li>
					</ul>
				
					</li>
					</ul>
		</li>
          <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 2 (Managed process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.1 Performance management</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.1 Identify the objectives</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.2 Plan and monitor the performance</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.3 Adjust</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.4 Define responsibilities and authorities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.5 Identify and make available resources</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.6 Manage the interfaces</a></li>
				 </ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.2 Work product management</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.1 Define the requirements for the work products</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.2 Define the requirements for documentation and control</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.3 Identify, document and control</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.4 Review and adjust work products</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 3 (Established process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.1 Process definition</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.1 Define the standard process</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.2 Determine the sequence and interaction</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.3 Identify the roles and competencies</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.4 Identify the required infrastructure and work environment</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.5 Determine suitable methods</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.2 Process deployment</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.1 Deploy a defined process</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.2 Assign and communicate roles, responsibilities and authorities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.3 Ensure necessary competencies</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.4 Provide resources and information</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.5 Provide adequate process infrastructure</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.6 Collect and analyse data about performance of the process</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 
		 <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 4 (Predictable process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.1 Process measurement attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.1 Identify process information needs</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.2 Derive process measurement objectives</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.3 Establish quantitative objectives</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.4 Identify product and process measures</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.5 Collect product and process measurement results</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.6 Use the results of the defined measurement</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.2 Process control attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.1 Determine analysis and control techniques</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.2 Define parameters</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.3 Analyse process and product measurement results</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.4 Identify and implement corrective actions</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.5 Re-establish control limits</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		  <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 5 (Optimizing process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.1 Process innovation attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.1 Define the process improvement objectives</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.2 Analyse measurement data</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.3 Identify improvement opportunities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.4 Derive improvement opportunities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.5 Define an implementation strategy</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.2 Process optimization attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.1 Assess the impact of each proposed change</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.2 Manage the implementation of agreed changes</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.3 Evaluate the effectiveness of process change</a></li>
				</ul>
				</li>
			</ul>
		 </li>
		</ul>
      </li>
      
      <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level1.jpg'/>&nbsp&nbsp SWE.4 Software Unit Verification</a>
        <ul>
          <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 1 (Performed Process)</a>
          		<ul>
					<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 1.1 Process Performance</a>
					<ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 1.1.1 Achieve the process outcomes</a>
					<ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 1 Identify System Requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 2 Analyze system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 3 Determine the impact on the operating environment</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 4 Prioritize and categorize system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 5 Evaluate and update system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 6 Ensure consistency and bilateral traceability of customer requirements to system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 7 Communicate system requirements</a></li>
					</ul>
					</li>
					</ul>
				
					</li>
					</ul>
		</li>
          <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 2 (Managed process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.1 Performance management</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.1 Identify the objectives</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.2 Plan and monitor the performance</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.3 Adjust</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.4 Define responsibilities and authorities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.5 Identify and make available resources</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.6 Manage the interfaces</a></li>
				 </ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.2 Work product management</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.1 Define the requirements for the work products</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.2 Define the requirements for documentation and control</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.3 Identify, document and control</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.4 Review and adjust work products</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 3 (Established process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.1 Process definition</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.1 Define the standard process</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.2 Determine the sequence and interaction</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.3 Identify the roles and competencies</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.4 Identify the required infrastructure and work environment</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.5 Determine suitable methods</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.2 Process deployment</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.1 Deploy a defined process</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.2 Assign and communicate roles, responsibilities and authorities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.3 Ensure necessary competencies</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.4 Provide resources and information</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.5 Provide adequate process infrastructure</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.6 Collect and analyse data about performance of the process</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 
		 <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 4 (Predictable process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.1 Process measurement attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.1 Identify process information needs</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.2 Derive process measurement objectives</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.3 Establish quantitative objectives</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.4 Identify product and process measures</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.5 Collect product and process measurement results</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.6 Use the results of the defined measurement</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.2 Process control attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.1 Determine analysis and control techniques</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.2 Define parameters</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.3 Analyse process and product measurement results</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.4 Identify and implement corrective actions</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.5 Re-establish control limits</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		  <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 5 (Optimizing process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.1 Process innovation attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.1 Define the process improvement objectives</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.2 Analyse measurement data</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.3 Identify improvement opportunities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.4 Derive improvement opportunities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.5 Define an implementation strategy</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.2 Process optimization attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.1 Assess the impact of each proposed change</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.2 Manage the implementation of agreed changes</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.3 Evaluate the effectiveness of process change</a></li>
				</ul>
				</li>
			</ul>
		 </li>
		</ul>
      </li>
      
      <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level1.jpg'/>&nbsp&nbsp SWE.5 Software Integration and Integration Test</a>
        <ul>
          <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 1 (Performed Process)</a>
          		<ul>
					<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 1.1 Process Performance</a>
					<ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 1.1.1 Achieve the process outcomes</a>
					<ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 1 Identify System Requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 2 Analyze system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 3 Determine the impact on the operating environment</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 4 Prioritize and categorize system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 5 Evaluate and update system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 6 Ensure consistency and bilateral traceability of customer requirements to system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 7 Communicate system requirements</a></li>
					</ul>
					</li>
					</ul>
				
					</li>
					</ul>
		</li>
          <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 2 (Managed process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.1 Performance management</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.1 Identify the objectives</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.2 Plan and monitor the performance</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.3 Adjust</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.4 Define responsibilities and authorities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.5 Identify and make available resources</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.6 Manage the interfaces</a></li>
				 </ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.2 Work product management</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.1 Define the requirements for the work products</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.2 Define the requirements for documentation and control</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.3 Identify, document and control</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.4 Review and adjust work products</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 3 (Established process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.1 Process definition</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.1 Define the standard process</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.2 Determine the sequence and interaction</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.3 Identify the roles and competencies</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.4 Identify the required infrastructure and work environment</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.5 Determine suitable methods</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.2 Process deployment</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.1 Deploy a defined process</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.2 Assign and communicate roles, responsibilities and authorities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.3 Ensure necessary competencies</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.4 Provide resources and information</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.5 Provide adequate process infrastructure</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.6 Collect and analyse data about performance of the process</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 
		 <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 4 (Predictable process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.1 Process measurement attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.1 Identify process information needs</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.2 Derive process measurement objectives</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.3 Establish quantitative objectives</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.4 Identify product and process measures</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.5 Collect product and process measurement results</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.6 Use the results of the defined measurement</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.2 Process control attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.1 Determine analysis and control techniques</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.2 Define parameters</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.3 Analyse process and product measurement results</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.4 Identify and implement corrective actions</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.5 Re-establish control limits</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		  <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 5 (Optimizing process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.1 Process innovation attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.1 Define the process improvement objectives</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.2 Analyse measurement data</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.3 Identify improvement opportunities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.4 Derive improvement opportunities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.5 Define an implementation strategy</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.2 Process optimization attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.1 Assess the impact of each proposed change</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.2 Manage the implementation of agreed changes</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.3 Evaluate the effectiveness of process change</a></li>
				</ul>
				</li>
			</ul>
		 </li>
		</ul>
      </li>
      
      <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level1.jpg'/>&nbsp&nbsp SWE.6 Software Qualification Test</a>
        <ul>
          <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 1 (Performed Process)</a>
          		<ul>
					<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 1.1 Process Performance</a>
					<ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 1.1.1 Achieve the process outcomes</a>
					<ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 1 Identify System Requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 2 Analyze system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 3 Determine the impact on the operating environment</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 4 Prioritize and categorize system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 5 Evaluate and update system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 6 Ensure consistency and bilateral traceability of customer requirements to system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 7 Communicate system requirements</a></li>
					</ul>
					</li>
					</ul>
				
					</li>
					</ul>
		</li>
          <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 2 (Managed process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.1 Performance management</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.1 Identify the objectives</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.2 Plan and monitor the performance</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.3 Adjust</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.4 Define responsibilities and authorities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.5 Identify and make available resources</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.6 Manage the interfaces</a></li>
				 </ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.2 Work product management</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.1 Define the requirements for the work products</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.2 Define the requirements for documentation and control</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.3 Identify, document and control</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.4 Review and adjust work products</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 3 (Established process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.1 Process definition</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.1 Define the standard process</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.2 Determine the sequence and interaction</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.3 Identify the roles and competencies</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.4 Identify the required infrastructure and work environment</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.5 Determine suitable methods</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.2 Process deployment</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.1 Deploy a defined process</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.2 Assign and communicate roles, responsibilities and authorities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.3 Ensure necessary competencies</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.4 Provide resources and information</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.5 Provide adequate process infrastructure</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.6 Collect and analyse data about performance of the process</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 
		 <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 4 (Predictable process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.1 Process measurement attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.1 Identify process information needs</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.2 Derive process measurement objectives</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.3 Establish quantitative objectives</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.4 Identify product and process measures</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.5 Collect product and process measurement results</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.6 Use the results of the defined measurement</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.2 Process control attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.1 Determine analysis and control techniques</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.2 Define parameters</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.3 Analyse process and product measurement results</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.4 Identify and implement corrective actions</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.5 Re-establish control limits</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		  <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 5 (Optimizing process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.1 Process innovation attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.1 Define the process improvement objectives</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.2 Analyse measurement data</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.3 Identify improvement opportunities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.4 Derive improvement opportunities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.5 Define an implementation strategy</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.2 Process optimization attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.1 Assess the impact of each proposed change</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.2 Manage the implementation of agreed changes</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.3 Evaluate the effectiveness of process change</a></li>
				</ul>
				</li>
			</ul>
		 </li>
		</ul>
      </li>
      
      <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level1.jpg'/>&nbsp&nbsp SUP.1 Quality Assurance</a>
        <ul>
          <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 1 (Performed Process)</a>
          		<ul>
					<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 1.1 Process Performance</a>
					<ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 1.1.1 Achieve the process outcomes</a>
					<ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 1 Identify System Requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 2 Analyze system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 3 Determine the impact on the operating environment</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 4 Prioritize and categorize system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 5 Evaluate and update system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 6 Ensure consistency and bilateral traceability of customer requirements to system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 7 Communicate system requirements</a></li>
					</ul>
					</li>
					</ul>
				
					</li>
					</ul>
		</li>
          <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 2 (Managed process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.1 Performance management</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.1 Identify the objectives</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.2 Plan and monitor the performance</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.3 Adjust</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.4 Define responsibilities and authorities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.5 Identify and make available resources</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.6 Manage the interfaces</a></li>
				 </ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.2 Work product management</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.1 Define the requirements for the work products</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.2 Define the requirements for documentation and control</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.3 Identify, document and control</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.4 Review and adjust work products</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 3 (Established process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.1 Process definition</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.1 Define the standard process</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.2 Determine the sequence and interaction</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.3 Identify the roles and competencies</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.4 Identify the required infrastructure and work environment</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.5 Determine suitable methods</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.2 Process deployment</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.1 Deploy a defined process</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.2 Assign and communicate roles, responsibilities and authorities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.3 Ensure necessary competencies</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.4 Provide resources and information</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.5 Provide adequate process infrastructure</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.6 Collect and analyse data about performance of the process</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 
		 <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 4 (Predictable process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.1 Process measurement attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.1 Identify process information needs</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.2 Derive process measurement objectives</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.3 Establish quantitative objectives</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.4 Identify product and process measures</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.5 Collect product and process measurement results</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.6 Use the results of the defined measurement</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.2 Process control attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.1 Determine analysis and control techniques</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.2 Define parameters</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.3 Analyse process and product measurement results</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.4 Identify and implement corrective actions</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.5 Re-establish control limits</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		  <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 5 (Optimizing process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.1 Process innovation attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.1 Define the process improvement objectives</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.2 Analyse measurement data</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.3 Identify improvement opportunities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.4 Derive improvement opportunities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.5 Define an implementation strategy</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.2 Process optimization attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.1 Assess the impact of each proposed change</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.2 Manage the implementation of agreed changes</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.3 Evaluate the effectiveness of process change</a></li>
				</ul>
				</li>
			</ul>
		 </li>
		</ul>
      </li>
      
      
      
      <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level1.jpg'/>&nbsp&nbsp SUP.8 Configuration Management</a>
        <ul>
          <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 1 (Performed Process)</a>
          		<ul>
					<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 1.1 Process Performance</a>
					<ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 1.1.1 Achieve the process outcomes</a>
					<ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 1 Identify System Requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 2 Analyze system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 3 Determine the impact on the operating environment</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 4 Prioritize and categorize system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 5 Evaluate and update system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 6 Ensure consistency and bilateral traceability of customer requirements to system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 7 Communicate system requirements</a></li>
					</ul>
					</li>
					</ul>
				
					</li>
					</ul>
		</li>
          <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 2 (Managed process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.1 Performance management</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.1 Identify the objectives</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.2 Plan and monitor the performance</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.3 Adjust</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.4 Define responsibilities and authorities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.5 Identify and make available resources</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.6 Manage the interfaces</a></li>
				 </ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.2 Work product management</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.1 Define the requirements for the work products</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.2 Define the requirements for documentation and control</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.3 Identify, document and control</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.4 Review and adjust work products</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 3 (Established process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.1 Process definition</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.1 Define the standard process</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.2 Determine the sequence and interaction</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.3 Identify the roles and competencies</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.4 Identify the required infrastructure and work environment</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.5 Determine suitable methods</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.2 Process deployment</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.1 Deploy a defined process</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.2 Assign and communicate roles, responsibilities and authorities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.3 Ensure necessary competencies</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.4 Provide resources and information</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.5 Provide adequate process infrastructure</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.6 Collect and analyse data about performance of the process</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 
		 <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 4 (Predictable process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.1 Process measurement attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.1 Identify process information needs</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.2 Derive process measurement objectives</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.3 Establish quantitative objectives</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.4 Identify product and process measures</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.5 Collect product and process measurement results</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.6 Use the results of the defined measurement</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.2 Process control attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.1 Determine analysis and control techniques</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.2 Define parameters</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.3 Analyse process and product measurement results</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.4 Identify and implement corrective actions</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.5 Re-establish control limits</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		  <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 5 (Optimizing process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.1 Process innovation attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.1 Define the process improvement objectives</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.2 Analyse measurement data</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.3 Identify improvement opportunities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.4 Derive improvement opportunities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.5 Define an implementation strategy</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.2 Process optimization attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.1 Assess the impact of each proposed change</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.2 Manage the implementation of agreed changes</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.3 Evaluate the effectiveness of process change</a></li>
				</ul>
				</li>
			</ul>
		 </li>
		</ul>
      </li>
      
      
      <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level1.jpg'/>&nbsp&nbsp SUP.9 Problem Resolution Management</a>
        <ul>
          <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 1 (Performed Process)</a>
          		<ul>
					<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 1.1 Process Performance</a>
					<ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 1.1.1 Achieve the process outcomes</a>
					<ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 1 Identify System Requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 2 Analyze system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 3 Determine the impact on the operating environment</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 4 Prioritize and categorize system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 5 Evaluate and update system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 6 Ensure consistency and bilateral traceability of customer requirements to system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 7 Communicate system requirements</a></li>
					</ul>
					</li>
					</ul>
				
					</li>
					</ul>
		</li>
          <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 2 (Managed process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.1 Performance management</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.1 Identify the objectives</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.2 Plan and monitor the performance</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.3 Adjust</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.4 Define responsibilities and authorities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.5 Identify and make available resources</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.6 Manage the interfaces</a></li>
				 </ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.2 Work product management</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.1 Define the requirements for the work products</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.2 Define the requirements for documentation and control</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.3 Identify, document and control</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.4 Review and adjust work products</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 3 (Established process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.1 Process definition</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.1 Define the standard process</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.2 Determine the sequence and interaction</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.3 Identify the roles and competencies</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.4 Identify the required infrastructure and work environment</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.5 Determine suitable methods</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.2 Process deployment</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.1 Deploy a defined process</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.2 Assign and communicate roles, responsibilities and authorities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.3 Ensure necessary competencies</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.4 Provide resources and information</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.5 Provide adequate process infrastructure</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.6 Collect and analyse data about performance of the process</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 
		 <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 4 (Predictable process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.1 Process measurement attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.1 Identify process information needs</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.2 Derive process measurement objectives</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.3 Establish quantitative objectives</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.4 Identify product and process measures</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.5 Collect product and process measurement results</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.6 Use the results of the defined measurement</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.2 Process control attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.1 Determine analysis and control techniques</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.2 Define parameters</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.3 Analyse process and product measurement results</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.4 Identify and implement corrective actions</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.5 Re-establish control limits</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		  <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 5 (Optimizing process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.1 Process innovation attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.1 Define the process improvement objectives</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.2 Analyse measurement data</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.3 Identify improvement opportunities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.4 Derive improvement opportunities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.5 Define an implementation strategy</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.2 Process optimization attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.1 Assess the impact of each proposed change</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.2 Manage the implementation of agreed changes</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.3 Evaluate the effectiveness of process change</a></li>
				</ul>
				</li>
			</ul>
		 </li>
		</ul>
      </li>
      
      
      <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level1.jpg'/>&nbsp&nbsp SUP.10 Change Request Management</a>
        <ul>
          <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 1 (Performed Process)</a>
          		<ul>
					<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 1.1 Process Performance</a>
					<ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 1.1.1 Achieve the process outcomes</a>
					<ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 1 Identify System Requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 2 Analyze system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 3 Determine the impact on the operating environment</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 4 Prioritize and categorize system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 5 Evaluate and update system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 6 Ensure consistency and bilateral traceability of customer requirements to system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 7 Communicate system requirements</a></li>
					</ul>
					</li>
					</ul>
				
					</li>
					</ul>
		</li>
          <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 2 (Managed process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.1 Performance management</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.1 Identify the objectives</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.2 Plan and monitor the performance</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.3 Adjust</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.4 Define responsibilities and authorities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.5 Identify and make available resources</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.6 Manage the interfaces</a></li>
				 </ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.2 Work product management</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.1 Define the requirements for the work products</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.2 Define the requirements for documentation and control</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.3 Identify, document and control</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.4 Review and adjust work products</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 3 (Established process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.1 Process definition</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.1 Define the standard process</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.2 Determine the sequence and interaction</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.3 Identify the roles and competencies</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.4 Identify the required infrastructure and work environment</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.5 Determine suitable methods</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.2 Process deployment</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.1 Deploy a defined process</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.2 Assign and communicate roles, responsibilities and authorities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.3 Ensure necessary competencies</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.4 Provide resources and information</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.5 Provide adequate process infrastructure</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.6 Collect and analyse data about performance of the process</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 
		 <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 4 (Predictable process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.1 Process measurement attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.1 Identify process information needs</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.2 Derive process measurement objectives</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.3 Establish quantitative objectives</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.4 Identify product and process measures</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.5 Collect product and process measurement results</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.6 Use the results of the defined measurement</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.2 Process control attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.1 Determine analysis and control techniques</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.2 Define parameters</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.3 Analyse process and product measurement results</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.4 Identify and implement corrective actions</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.5 Re-establish control limits</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		  <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 5 (Optimizing process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.1 Process innovation attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.1 Define the process improvement objectives</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.2 Analyse measurement data</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.3 Identify improvement opportunities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.4 Derive improvement opportunities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.5 Define an implementation strategy</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.2 Process optimization attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.1 Assess the impact of each proposed change</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.2 Manage the implementation of agreed changes</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.3 Evaluate the effectiveness of process change</a></li>
				</ul>
				</li>
			</ul>
		 </li>
		</ul>
      </li>
      
         <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level1.jpg'/>&nbsp&nbsp MAN.3 Project Management</a>
        <ul>
          <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 1 (Performed Process)</a>
          		<ul>
					<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 1.1 Process Performance</a>
					<ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 1.1.1 Achieve the process outcomes</a>
					<ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 1 Identify System Requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 2 Analyze system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 3 Determine the impact on the operating environment</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 4 Prioritize and categorize system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 5 Evaluate and update system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 6 Ensure consistency and bilateral traceability of customer requirements to system requirements</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>BP 7 Communicate system requirements</a></li>
					</ul>
					</li>
					</ul>
				
					</li>
					</ul>
		</li>
          <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 2 (Managed process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.1 Performance management</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.1 Identify the objectives</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.2 Plan and monitor the performance</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.3 Adjust</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.4 Define responsibilities and authorities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.5 Identify and make available resources</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.1.6 Manage the interfaces</a></li>
				 </ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 2.2 Work product management</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.1 Define the requirements for the work products</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.2 Define the requirements for documentation and control</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.3 Identify, document and control</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 2.2.4 Review and adjust work products</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 3 (Established process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.1 Process definition</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.1 Define the standard process</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.2 Determine the sequence and interaction</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.3 Identify the roles and competencies</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.4 Identify the required infrastructure and work environment</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.1.5 Determine suitable methods</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 3.2 Process deployment</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.1 Deploy a defined process</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.2 Assign and communicate roles, responsibilities and authorities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.3 Ensure necessary competencies</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.4 Provide resources and information</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.5 Provide adequate process infrastructure</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 3.2.6 Collect and analyse data about performance of the process</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		 
		 <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 4 (Predictable process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.1 Process measurement attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.1 Identify process information needs</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.2 Derive process measurement objectives</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.3 Establish quantitative objectives</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.4 Identify product and process measures</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.5 Collect product and process measurement results</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.1.6 Use the results of the defined measurement</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 4.2 Process control attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.1 Determine analysis and control techniques</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.2 Define parameters</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.3 Analyse process and product measurement results</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.4 Identify and implement corrective actions</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 4.2.5 Re-establish control limits</a></li>
				 </ul>
				</li>
			</ul>
		 </li>
		  <li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level2.PNG'/>Level 5 (Optimizing process)</a>
          	<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.1 Process innovation attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.1 Define the process improvement objectives</a>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.2 Analyse measurement data</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.3 Identify improvement opportunities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.4 Derive improvement opportunities</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.1.5 Define an implementation strategy</a></li>
				</ul>
				</li>
			</ul>
			<ul>
				<li><a href="#"><img style='height: 18px; width: 15px; margin-left: auto;' src='Images/pa.PNG'/>PA 5.2 Process optimization attribute</a>
				 <ul>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.1 Assess the impact of each proposed change</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.2 Manage the implementation of agreed changes</a></li>
					<li><a href="#"><img style='height: 15px; width: 15px; margin-left: auto;' src='Images/level3.PNG'/>GP 5.2.3 Evaluate the effectiveness of process change</a></li>
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
<h4>Click on a BP or GP to see the relevant standards, workproducts, decsriptions below</h4>
  
 <div class="container" id="target" style="display: none;"> 
  <div class="panel-group" id="accordion">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Standards</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse in">
        <div class="panel-body">
			Use the customer requirements as the basis for identifying the required functions and capabilities of the system and document the system requirements
		 	in a system requirements specification. [Outcome 1] NOTE 1: System requirements include: functions and capabilities of the system; business, organizational 
		 	and user requirements; safety, security, human-factors, engineering (ergonomics), interface, operations, and maintenance requirements; design constraints and
		  	qualification requirements (ISO/IEC 12207) as well as application parameters influencing system functions and capabilities.</div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Workproducts</a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse in">
        <div class="panel-body">
			17-12 System requirements specification [Outcome 1, 5] 01-51 Application parameter [Outcome 1]</div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Guidelines</a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse in">
        <div class="panel-body"></div>
      </div>
    </div>
  </div> 

</div>

<div class="container" id="target4" style="display: none;"> 
  <div class="panel-group" id="accordion">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Standards</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse in">
        <div class="panel-body">
			Determine the interfaces between the system requirements and other components of the operating environment, and the impact that the requirements will have. [Outcome 3]</div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Workproducts</a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse in">
        <div class="panel-body">
15-01 Analysis report [Outcome 2, 3, 4, 7] 17-08 Interface requirements specification [Outcome 3]</div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Guidelines</a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse in">
        <div class="panel-body"></div>
      </div>
    </div>
  </div> 

</div>


<div class="container" id="target1" style="display: none;"> 
  <div class="panel-group" id="accordion">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Standards</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse in">
        <div class="panel-body">
			
Analyze the identified system requirements in terms of technical feasibility, risks and testability.[Outcome 2] NOTE 2: Verification criteria for all system requirements should be defined for further development of system test cases. NOTE 3: The results of the analysis may be used for categorization of the requirements (see also ENG.2.BP.4).</div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Workproducts</a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse in">
        <div class="panel-body">
			15-01 Analysis report [Outcome 2, 3, 4, 7] 17-50 Verification criteria [Outcome 2]</div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Guidelines</a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse in">
        <div class="panel-body"></div>
      </div>
    </div>
  </div> 

</div>

<div class="container" id="target2" style="display: none;"> 
  <div class="panel-group" id="accordion">
    <div class="panel panel-default"  style="width: 55%">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Standards</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse in">
        <div class="panel-body">
			Determine the interfaces between the system requirements and other components of the operating environment, and the impact that the requirements will have. [Outcome 3]</div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Workproducts</a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse in">
        <div class="panel-body">
			15-01 Analysis report [Outcome 2, 3, 4, 7] 17-08 Interface requirements specification [Outcome 3]</div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Guidelines</a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse in">
        <div class="panel-body"></div>
      </div>
    </div>
  </div> 
</div>
</div>

<div class="container" id="target5" style="display: none;"> 
  <div class="panel-group" id="accordion">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Standards</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse in">
        <div class="panel-body">Evaluate system requirements and changes to the customer’s requirements baseline in terms of cost, schedule and technical impact. Approve the system requirements and all changes to them and update the system requirements specification.[Outcome 5, 7]</div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Workproducts</a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse in">
        <div class="panel-body">
			08-16 Release Plan [Outcome 4, 5] 13-21 Change control record [Outcome 7] 15-01 Analysis report [Outcome 2, 3, 4, 7]</div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Guidelines</a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse in">
        <div class="panel-body"></div>
      </div>
    </div>
  </div> 

</div>

</div>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>
</html>