<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>shopping malls</title>
</head>
<body>
 	<jsp:include page="./includes/header.jsp" />
 	
    <% request.setCharacterEncoding("UTF-8"); %>
 
    <% ArrayList<String> arrr = (ArrayList) (session.getAttribute("productList")); %>
    <center>
        <h1>상품 결과</h1>
        <hr>
        	장바구니 목록
        <hr>
        <% if (arrr == null) { %>
        장바구니에 넣은 상품이 없습니다.
        <% } else {
                for (String i : arrr) {
                    out.println(i); %><br>
                <% }
        } %>
        <br><br><hr>
        <table>
            <tr>
                <td><input type=button onClick="history.back()" value="뒤로가기"></td>
                <td>
                    <form action=login.jsp method=post>
                        <input value=로그아웃 type=submit></td>
                    </form>
            </tr>
        </table>
    </center>
	<jsp:include page="./includes/footer.jsp" />
</body>
</html>

