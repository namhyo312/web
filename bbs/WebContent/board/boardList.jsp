<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>

<%
int id = Integer.parseInt(request.getParameter("id"));
String title=request.getParameter("title");
String description=request.getParameter("description");
String start=request.getParameter("start");
String end=request.getParameter("end");
String type=request.getParameter("type");
String username=request.getParameter("username");
String backgroundColor=request.getParameter("backgroundColor");
String textColor=request.getParameter("textColor");
String allDay=request.getParameter("allDay");
try
{

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bbs?&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "1234");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into board(_id, title, description, start, end, type, username, backgroundColor, textColor, allDay)values('"+id+"','"+title+"','"+description+"','"+start+"','"+end+"','"+type+"','"+username
		+"','"+backgroundColor+"','"+textColor+"','"+allDay+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>