<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<label for="title">タイトル</label><br/>
<input type="text" name="title" id="title" value="${message.title }"/>
<br/><br/>

<label for="content_msg">メッセージ</label><br/>
<input type="text" name="content" id="content_msg" value="${message.content }"/>
<br/><br/>
<c:out value="${_token }"></c:out>
<p><%= request.getSession().getId() %></p>

<input type="hidden" name="_token" value="${_token }">
<button type="submit">投稿</button>

