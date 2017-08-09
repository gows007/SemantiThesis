<%@page import="model.ChartService"%>
<%@page import="model.JDBCService"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Export</title>
<!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/modern-business.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

 <!-- <link rel="stylesheet" type="text/css" href="style.css"> -->
</head>
<body>

	<%
		JDBCService ne = new JDBCService();
		ne.selectDb();

		ResultSet res = null;

		int sglength = ne.getTableCount("securitygoals");

		String imageMap1 = "";
		String chart1URL = "";
		String secLev = "";
		String labels[] = new String[sglength];
		double currentData[] = new double[sglength];
	%>

	<div id="navcontainer">
		<ul id="navlist">
			<li><a href="index.html" >Home</a></li>
			<li><a href="securityoverview.jsp">Security overview</a></li>
			<li><a href="tableassets.jsp" >Assets</a></li>
			<li><a href="tableattackvectors.jsp">Attacks</a></li>
			<li><a href="viewtara.jsp">TARA</a></li>
			<li><a href="viewchart.jsp">Export</a></li>
		</ul>
	</div>
	<h4 class='liketext'><img style='height: 50px; width: 50px; margin-left: auto;' src='Images/export.PNG'/><b>Export functionalities</b></h4>
	<div id="content">
		<!--  <div id="pagerLinkTop" align="right">
			<a href="viewtara.jsp"> &lt; previous </a>
		</div>
		<hr color="#729ea5">-->
	<div class="excelChart" align="center">
		<form action="controlServlet" method="post">
		
			<input type="hidden" name="exportfile" value="">
			<fieldset><br>
				
				<h5><b>Export To EXCEL-Format</b></h5>
			<label for="filename" style="margin: 20px">Enter Filename: </label>
				<input type="text" name="filename" id="filename" required="" />
				<!-- <input type="submit" class="myButton" value="Export File"> -->
				<input type="image" width="40px" height="40px" value="submit" src="Images/download_to_excel.PNG" alt="submit button" onMouseOver="this.src='Images/download_to_excel.PNG'" />
			</fieldset>
		</form>
	</div>
	
		<fieldset><br>
		<div class="excelChart" align="center">
			<h5><b>Spider Chart</b></h5>
			<%
				if (sglength > 0) {

					int i = 0;
					res = ne.getResFromTable("securitygoals");
					while (res.next()) {
						labels[i] = res.getString("sgid");
						secLev = res.getString("securitylevel");

						if (secLev.equals("Critical")) {
							currentData[i] = 5;
						} else if (secLev.equals("High")) {
							currentData[i] = 4;
						} else if (secLev.equals("Medium")) {
							currentData[i] = 3;
						} else if (secLev.equals("Low")) {
							currentData[i] = 2;
						} else if (secLev.equals("QM")) {
							currentData[i] = 1;
						}

						i++;
					}

					// The data for the chart
					double[] data0 = currentData;
					// The labels for the chart
					String[] chartlabels = labels;

					ChartService radar = new ChartService();
					radar.setData(data0, "CurrentTara");
					radar.setAxisLabels(chartlabels);

					chart1URL = radar.getChart().makeSession(request, "chart1");

					// Include tool tip for the chart
					imageMap1 = radar.getChart().getHTMLImageMap("", "",
							"title='[{dataSetName}] {label}: score = {value}'");
			%>
			<input id="myBtnCT" class="myButton" type="button" value="Open View"
				onclick="openView('myModalCT', 'myBtnCT')"></input>
			<%
				} else {
			%>
			<label style="margin: 50;">View not available!</label>
			<%
				}
			%>
			<!-- The Modal -->
			<div id="myModalCT" style="display: none;">
				<img src='<%=response.encodeURL("getchart.jsp?" + chart1URL)%>'
					usemap="#map1" border="0">
				<map name="map1"><%=imageMap1%></map>
			</div>
			<script language="javascript" type="text/javascript" src="script.js"></script>
			</div>
		</fieldset>
		

		<hr color="#729ea5">
		<div id="pagerLinkTop" align="right">
			<a href="viewtara.jsp"> &lt; previous </a>
		</div>
	</div>

	<%
		ne.closeAll();
	%>

</body>
</html>