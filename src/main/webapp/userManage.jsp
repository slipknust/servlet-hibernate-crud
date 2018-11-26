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
                <label for="firstName" class="control-label col-xs-3">First Name:</label>
                <div class="col-xs-9">
                    <input type="text" name="firstName" id="firstName" class="form-control"
                           value="${user.getFirstName()}" required="true"/>
                </div>
            </div>
            <div class="form-group">
                <label for="lastName" class="control-label col-xs-3">Last name:</label>
                <div class="col-xs-9">
                    <input type="text" name="lastName" id="lastName" class="form-control" value="${user.getLastName()}"
                           required="true"/>
                </div>
            </div>
            <div class="form-group">
                <label for="birthDate" class="control-label col-xs-3">Birth date:</label>
                <div class="col-xs-9">
                    <input type="text" pattern="^\d{4}-\d{2}-\d{2}$" name="birthDate" id="birthDate"
                           class="form-control"
                           value="${user.getBirthDateString()}" maxlength="10" placeholder="2016-10-20" required="true"/>
                </div>
            </div>
            <div class="form-group">
                <label for="organization" class="control-label col-xs-3">Organization:</label>
                <div class="col-xs-9">
                    <input type="text" name="organization" id="organization" class="form-control"
                           value="${user.getOrganization()}"
                           required="true"/>
                </div>
            </div>
            <div class="form-group">
                <label for="phone" class="control-label col-xs-3">Phone:</label>
                <div class="col-xs-9">
                    <input type="text" name="phone" id="phone" class="form-control" value="${user.getPhone()}"
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
