<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Shopping malls</title>
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
        <div class="container">
        <table>
            <tr>
            <center>
                <p> <a href="#" class="btn btn-info"> 상품 주문 &raquo;</a>
					<a href="./index.jsp" class="btn btn-secondary"> 나가기 &raquo;</a>
            </center>
            </tr>
        </table>
        </div>
    </center>
	<jsp:include page="./includes/footer.jsp" />
</body>
</html>

