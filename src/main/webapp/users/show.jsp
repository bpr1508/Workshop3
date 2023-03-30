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
        <h1 class="h3 mb-0 text-gray-800">Użytkownik</h1>
        <a href="<c:url value="/user/list"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-download fa-sm text-white-50"></i>Lista użytkowników</a>
    </div>
    <table class="table">
        <tr>
            <th>Id</th>
            <th>Email</th>
            <th>Nazwa użytkownika</th>
        </tr>
        <tr>
            <td>${user.id}</td>
            <td>${user.email}</td>
            <td>${user.username}</td>
        </tr>
    </table>
</div>
<%@ include file="footer.jsp" %>