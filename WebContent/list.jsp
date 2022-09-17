<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
	<%
	try {

	     String driverName = "oracle.jdbc.driver.OracleDriver"; //데이터베이스에 접속하기위한 드라이버를 로드합니다

	     String url = "jdbc:oracle:thin:@localhost:1521:XE";            //접속 URL정보와 포트번호(oracle포트), sid(oracle버전)

	     ResultSet rs =null;
	     
	     Class.forName(driverName);

	     Connection con = DriverManager.getConnection(url,"board","board");    // getCo... : 계정정보 url, id, pw

	     out.println("Oracle 데이터베이스 db에 성공적으로 접속했습니다");
	     
	    
	     
	     Statement stmt = con.createStatement();
	     	     
	     String sql = "select * from board order by idx desc";

	     rs = stmt.executeQuery(sql);

	     
	
	%>
<body>

		<h1>게시글</h1>
		<table>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>낧짜</th>
				<th>조회수</th>
			</tr>
			
				
			
			<% 
				while(rs.next()){
					out.print("<tr>");
					out.print("<td>"+rs.getString("idx")+"</td>");
					out.print("<td><a href='content.jsp?idx="+rs.getString("idx")+"'>"+rs.getString("title")+"</td>");
					out.print("<td>"+rs.getString("writer")+"</td>");
					out.print("<td>"+rs.getString("regdate")+"</td>");
					out.print("<td>"+rs.getString("count")+"</td>");
					out.print("</tr>");					
					
				}
			
			%>	
			
			
						
		</table>
		<a href="write.jsp">글쓰기</a>
		
		<%
		con.close(); 
		}catch (Exception e) {

		     out.println("Oracle 데이터베이스 db 접속에 문제가 있습니다. <hr>");

		     out.println(e.getMessage());

		     e.printStackTrace();

			}
		%>
		

</body>
</html>