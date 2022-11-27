<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="controllers.IndexServlet"%>
<%@ page import="models.Message"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h2>メッセージ一覧</h2>
    <%
    List<Message> messages = (List<Message>) request.getAttribute("messages");
    %>
    <ul>
        <%
        for (int i = 0; i < messages.size(); i++) {
        %>
        <li><a
            href="<%=request.getContextPath() + "/show?id=" + messages.get(i).getId()%>"><%=messages.get(i).getId()%></a>
            ：<%=messages.get(i).getTitle()%>＜<%=messages.get(i).getContent()%></li>
        <%
        }
        %>
    </ul>
    <p><a href="<%= request.getContextPath()+"/new" %>">新規メッセージ</a></p>
</body>
</html>