﻿<%@page contentType="text/html;charset=UTF-8"%>

<%@page import="java.util.*"%>
<%@page import="bean.*"%>
<%@page import="java.lang.Integer"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="java.lang.reflect.Type"%>
<%@page import="com.google.gson.reflect.TypeToken"%>


<jsp:useBean id="bm" class="bc4.BetConManager2" />
	
<%
String [] bid = {};
String st = "";

if(request.getParameterValues("cb") != null){
   bid =request.getParameterValues("cb") ;
}

if(request.getParameter("st") != null && request.getParameter("st").trim().length() > 0){
   st =request.getParameter("st") ;
}

		boolean result = bm.detBetList(bid,st,"matthew");
		
		//if(result){
			Gson gson = new Gson();
			List<BettingListBean> bl = bm.getBetList("matthew");
			Type type = new TypeToken<List<BettingListBean>>() {}.getType();
		 	String json = gson.toJson(bl, type);     
		 	out.print(json); 	
		//}
%>