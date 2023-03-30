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
        <h1 class="h3 mb-0 text-gray-800">Dodawanie użytkownika</h1>
        <a href="<c:url value="/user/list"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-download fa-sm text-white-50"></i>Lista użytkowników</a>
    </div>
                    <form method="post" action ="/user/add">
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input value="${user.email}" name="email" type="email" class="form-control" id="email" placeholder="Email użytkownika">
                        </div>
                        <div class="form-group">
                            <label for="username">Nazwa użytkownika</label>
                            <input name="username" type="text" class="form-control" id="username" placeholder="Nazwa użytkownika">
                        </div>
                        <div class="form-group">
                            <label for="password">Hasło</label>
                            <input name="password" type="password" class="form-control" id="password" placeholder="Hasło użytkownika">
                        </div>

                        <button type="submit" class="btn btn-primary">Zapisz</button>
                    </form>
                </div>
<%@ include file="footer.jsp"%>

