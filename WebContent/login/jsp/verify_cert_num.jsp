<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import = "bean.UserBean"%>
<%@ page import = "dao.UserDao"%>
<%@ page import = "dao.SmsDao"%>
<%
	SmsDao sd = new SmsDao();
	String cell = request.getParameter("cell");
	String cell_prefix = request.getParameter("cell_prefix");
	String authcode = request.getParameter("cert");
	boolean rSend = Boolean.parseBoolean(request.getParameter("rSnd"));
	
	boolean result = sd.checkAuthCode(cell_prefix,cell,authcode,rSend);
	out.println(result);
%>