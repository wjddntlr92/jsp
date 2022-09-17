<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
	String idx = request.getParameter("idx");

	try{ 
		String driverName = "oracle.jdbc.driver.OracleDriver"; //데이터베이스에 접속하기위한 드라이버를 로드합니다
		
		String url = "jdbc:oracle:thin:@localhost:1521:XE";            //접속 URL정보와 포트번호(oracle포트), sid(oracle버전)

		Class.forName(driverName);

		Connection con = DriverManager.getConnection(url,"board","board");    // getCo... : 계정정보 url, id, pw
		
		Statement stmt = con.createStatement();
		
		String sql = "delete from board where idx = "+idx;
		
		stmt.executeUpdate(sql);
		
		con.close();		
		
	}catch(Exception e) {
		out.println("삭제에 실페했습니다.");
		out.println(e.getMessage());
		e.printStackTrace();
	}
		
%>
<body>

<script>
alert("삭제되었습니다.")
location.href='list.jsp';
	
</script>

</body>
</html>