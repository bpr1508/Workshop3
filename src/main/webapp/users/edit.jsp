<%--
  Created by IntelliJ IDEA.
  User: bpr15
  Date: 17.03.2023
  Time: 16:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/users/header.jsp" %>
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Edycja użytkowników</h1>
        <a href="<c:url value="/user/list"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
            <i class="fas fa-download fa-sm text-white-50"></i> Lista użytkowników</a>
    </div>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Edycja użytkownika</h6>
        </div>
        <div class="card-body">
            <form method="post">
                <input type="hidden" name="id" value="${user.id}"/>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input value="${user.email}" name="userEmail" type="email" class="form-control" id="email" placeholder="Nowy adres e-mail">
                </div>
                <div class="form-group">
                    <label for="username">Nazwa użytkownika</label>
                    <input value="${user.username}" name="userName" type="text" class="form-control" id="username" placeholder="Nowa nazwa użytkownika">
                </div>
                <div class="form-group">
                    <label for="password">Hasło</label>
                    <input name="userPassword" type="password" class="form-control" id="password" placeholder="Nowe hasło użytkownika">
                </div>

                <button type="submit" class="btn btn-primary">Edytuj</button>
            </form>

        </div>
    </div>
</div>
<%@ include file="footer.jsp"%>