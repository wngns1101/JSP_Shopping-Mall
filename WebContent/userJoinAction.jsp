<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.User" %>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter"%>
<%
	//사용자가 보낸 데이터를 한글을 사용할 수 있는 형식으로 변환
	request.setCharacterEncoding("UTF-8");
	
	String userID = null;
	String userPassword = null;
	String userName = null;
	String userGender = null;
	String userEmail = null;
	

	if (request.getParameter("userID") != null) {
		userID = (String) request.getParameter("userID");
	}

	if (request.getParameter("userPassword") != null) {
		userPassword = (String) request.getParameter("userPassword");
	}
	if (request.getParameter("userName") != null) {
		userName = (String) request.getParameter("userName");
	}
	if (request.getParameter("userGender") != null) {
		userGender = (String) request.getParameter("userGender");
	}
	if (request.getParameter("userEmail") != null) {
		userEmail = (String) request.getParameter("userEmail");
	}

	if (userID == null || userPassword == null || userName == null || userGender == null || userEmail == null ) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.')");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}

	UserDAO userDAO = new UserDAO();
	int result = userDAO.join(userID, userPassword, userName, userGender, userEmail);
	if (result == 1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('회원가입에 성공했습니다.')");
		script.println("location.href='login.jsp'");
		script.println("</script>");
		script.close();
		return;
	}
%>
