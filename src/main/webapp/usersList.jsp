<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="pt-br">
<head>
    <title>Users</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
<div class="container">

    <div class="panel panel-default">
        <div class="panel-heading" style="height: 73px;">
            <h3 style="float: left;">Users</h3>
            <a class="btn btn-default" href="/users" style="margin: 16px 0px 0px 17px;">Create user</a>
        </div>
        <div class="panel-body">
            <table class="table table-condensed" style="border-collapse:collapse;">

                <thead>
                <tr>
                    <th>Id</th>
                    <th>First name</th>
                    <th>Last name</th>
                    <th>Birth Date</th>
                    <th>Phone</th>
                    <th>Organization</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="user" items="${users}">
                    <tr data-toggle="collapse" data-target="#tableuser${user.getId()}" class="accordion-toggle">
                        <td>${user.getId()}</td>
                        <td>${user.getFirstName()}</td>
                        <td>${user.getLastName()}</td>
                        <td>${user.getBirthDateString()}</td>
                        <td>${user.getPhone()}</td>
                        <td>${user.getOrganization()}</td>
                        <td>
                            <a class="btn btn-default" href="/users?id=${user.getId()}">Edit</a>
                        </td>
                        <td>
                            <form action="/delete" method="post">
                                <input name="id" type="hidden" value="${user.getId()}"/>
                                <input name="type" type="hidden" value="user"/>
                                <button class="btn btn-default" type="submit">Delete</button>
                            </form>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="8" class="hiddenRow">
                            <div class="accordian-body collapse" id="tableuser${user.getId()}">
                                <h4 style="float: left;">Traffic cources</h4>
                                <a class="btn btn-default" href="/traffic-sources?userId=${user.getId()}" style="margin: 2px 0px 0px 12px;">Add</a>
                                <table class="table table-striped">
                                    <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Title</th>
                                        <th>Type</th>
                                        <th>Url</th>
                                        <th>Cost</th>
                                        <th>Edit</th>
                                        <th>Delete</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>${ts.getId()}</td>
                                            <td>${ts.getTitle()}</td>
                                            <td>${ts.getType()}</td>
                                            <td>${ts.getUrl()}</td>
                                            <td>${ts.getCost()}</td>
                                            <td>
                                                <a class="btn btn-default" href="/traffic-sources?tsId=${ts.getId()}">Edit</a>
                                            </td>
                                            <td>
                                                <form action="/delete" method="post">
                                                    <input name="id" type="hidden" value="${ts.getId()}"/>
                                                    <input name="type" type="hidden" value="ts"/>
                                                    <button class="btn btn-default" type="submit">Delete</button>
                                                </form>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>

    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>

</body>
</html>
