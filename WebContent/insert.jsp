<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%
	request.setCharacterEncoding("utf-8");
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String regdate = request.getParameter("regdate");
	String content = request.getParameter("content");
	String count = "123";
%>
<body>
	<%
	try {

	     String driverName = "oracle.jdbc.driver.OracleDriver"; //데이터베이스에 접속하기위한 드라이버를 로드합니다

	     String url = "jdbc:oracle:thin:@localhost:1521:XE";            //접속 URL정보와 포트번호(oracle포트), sid(oracle버전)

	     Class.forName(driverName);

	     Connection con = DriverManager.getConnection(url,"board","board");    // getCo... : 계정정보 url, id, pw

	     out.println("Oracle 데이터베이스 db에 성공적으로 접속했습니다");
	     
	     Statement stmt = con.createStatement();

	     String sql = "INSERT INTO BOARD" +
                                 "(IDX, TITLE, WRITER, REGDATE, COUNT, CONTENT)" +
                                 "VALUES (board_seq.nextval, '"+title+"', '"+writer+"', '"+regdate+"', '1' , '"+content+"')";

	     stmt.executeUpdate(sql);

	     con.close();

	} catch (Exception e) {

	     out.println("Oracle 데이터베이스 db 접속에 문제가 있습니다. <hr>");

	     out.println(e.getMessage());

	     e.printStackTrace();

		}
	finally{
		out.print("<script>location.href='list.jsp';</script>");
	}
	%>
	
	

</body>
</html>