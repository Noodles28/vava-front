﻿<%@page contentType="text/html;charset=UTF-8"%>

<%@page import="java.util.*"%>
<%@page import="bean.*"%>
<%@page import="java.lang.Integer"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="java.lang.reflect.Type"%>
<%@page import="com.google.gson.reflect.TypeToken"%>

<jsp:useBean id="bm" class="bc4.BetConManager2" />

<%
List<DepositListBean> dl = bm.getDepositList();

Gson gson = new Gson();
Type type = new TypeToken<List<DepositListBean>>() {}.getType();
String dl_s = gson.toJson(dl, type);   
out.print(dl_s);
%>


