<%@page contentType="text/html;charset=UTF-8"%>

<jsp:useBean id="bm" class="bc4.BetConManager2" />
	
<%
	out.println(bm.getLiveMatches().toString());
%>