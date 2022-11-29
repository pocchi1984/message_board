<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h2>id：${message.id }のメッセージ詳細ページ</h2>
        <p>
            タイトル：
            <c:out value="${message.title }" />
        </p>
        <p>
            メッセージ：
            <c:out value="${message.content }" />
        </p>
        <p>
            作成日時：
            <fmt:formatDate value="${message.created_at }"
                pattern="yyyy/mm/dd hh:mm:ss" />
        <p>
            更新日時：
            <fmt:formatDate value="${message.created_at }"
                pattern="yyyy年mm月dd日 hh:mm:ss" />
        <p>
            <a href="${pageContext.request.contextPath }/index">一覧に戻る</a>
        </p>
    </c:param>
</c:import>

