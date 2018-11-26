<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <title>Users</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <form action="/users" method="post" role="form" data-toggle="validator">
        <input type="hidden" id="id" name="id" value="${user == null ? "" : user.getId()}">
        <h2 class="col-xs-offset-3">${user == null ? "Create user" : "Edit user"}</h2>
        <div class="form-horizontal col-xs-7">
            <c:if test="${error != null}">
                <div class="alert alert-danger">
                        ${error}
                </div>
            </c:if>
            <div class="form-group">
                <label for="nome" class="control-label col-xs-3">Nome:</label>
                <div class="col-xs-9">
                    <input type="text" name="nome" id="nome" class="form-control"
                           value="${user.getNome()}" required="true"/>
                </div>
            </div>
            <div class="form-group">
                <label for="cpf" class="control-label col-xs-3">CPF:</label>
                <div class="col-xs-9">
                    <input type="number" name="cpf" id="cpf" class="form-control" value="${user.getCpf()}"
                           required="true"/>
                </div>
            </div>
            <div class="form-group">
                <label for="senha" class="control-label col-xs-3">Senha:</label>
                <div class="col-xs-9">
                    <input type="number" name=""senha"" id=""senha"" class="form-control" value="${user.getSenha()}"
                           required="true"/>
                </div>
            </div>
            <div class="form-group">
                <label for="email" class="control-label col-xs-3">Email:</label>
                <div class="col-xs-9">
                    <input type="text" name="email" id="email" class="form-control"
                           value="${user.getEmail()}"
                           required="true"/>
                </div>
            </div>
            <div class="form-group">
                <label for="matricula" class="control-label col-xs-3">Matricula:</label>
                <div class="col-xs-9">
                    <input type="text" name="matricula" id="matricula" class="form-control" value="${user.getMatricula()}"
                           required="true"/>
                </div>
            </div>
            <div class="form-group">
                <div class="col-xs-offset-3 col-sm-10">
                    <button type="submit" class="btn btn-default">Submit</button>
                </div>
            </div>
        </div>
    </form>
</div>
</body>
</html>
