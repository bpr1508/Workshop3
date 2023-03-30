<%--
  Created by IntelliJ IDEA.
  User: bpr15
  Date: 17.03.2023
  Time: 16:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/users/header.jsp" %>
<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Lista użytkowników</h1>
        <a href="<c:url value="/users/add.jsp"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-download fa-sm text-white-50"></i>Dodaj użytkownika</a>
    </div>
    <table class="table">
        <tr>
            <th>Id</th>
            <th>Email</th>
            <th>Nazwa użytkownika</th>
            <th>Akcja</th>
        </tr>
        <c:forEach items="${user}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.email}</td>
                <td>${user.username}</td>
                <td>
                    <a href='<c:url value="/user/delete?id=${user.id}"/>'>Usuń</a>
                    <a href='<c:url value="/user/edit?id=${user.id}"/>'>Edit</a>
                    <a href='<c:url value="/user/show?id=${user.id}"/>'>Pokaż</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
<%@ include file="footer.jsp"%>

