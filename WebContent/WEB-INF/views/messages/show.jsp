<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:choose>
            <c:when test="${message != null }">
                <h2>id：${message.id }のメッセージ詳細ページ</h2>
                <table>
                    <tbody>
                        <tr>
                            <th>タイトル</th>
                            <td><c:out value="${message.title }"></c:out></td>
                        </tr>
                        <tr>
                            <th>メッセージ</th>
                            <td><c:out value="${message.content }"></c:out></td>
                        </tr>
                        <tr>
                            <th>作成日時</th>
                            <td><fmt:formatDate value="${message.created_at }"
                                    pattern="yyyy/mm/dd hh:mm:ss"></fmt:formatDate></td>
                        </tr>
                        <tr>
                            <th>更新日時</th>
                            <td><fmt:formatDate value="${message.update_at }"
                                    pattern="yyyy/mm/dd hh:mm:ss"></fmt:formatDate></td>
                        </tr>
                    </tbody>
                </table>
                <p>
                    <a href="${pageContext.request.contextPath }/index">一覧に戻る</a>
                </p>
                <p>
                <a href="${pageContext.request.contextPath }/edit?id=${message.id}">このメッセージを編集する</a>

                </p>
            </c:when>
        </c:choose>

    </c:param>
</c:import>

