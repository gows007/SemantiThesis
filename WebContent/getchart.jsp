<%@page import="ChartDirector.*"%>
<%
	try {
		out.clear();
		GetSessionImage.getImage(request, response);
		return;
	} catch (IllegalStateException e) {
		response.sendRedirect(response.encodeRedirectURL("getchart.chart?" + request.getQueryString()));
		return;
	}
%>