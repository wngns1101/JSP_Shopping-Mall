<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Shopping malls</title>
</head>
<body>
 
    <%
        request.setCharacterEncoding("UTF-8");
 
        ArrayList<String> arr = (ArrayList<String>)(session.getAttribute("productList"));
 
        String productName = request.getParameter("product");
 
        /* arrayList 안에 아무것도 없으면 arrayList 생성 */
        if (session.getAttribute("productList") == null) {
            arr = new ArrayList<String>();
        }
        arr.add(productName);
        session.setAttribute("productList", arr);
    %>
 
    <script>alert("<%=productName%>가 추가되었습니다.");history.back();</script>
 
</body>
</html>

