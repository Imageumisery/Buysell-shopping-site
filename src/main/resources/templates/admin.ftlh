<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <#include "table.css">
    <#include "style.css">
</head>
<body style="text-align: center;
display: flow-root;
font-family: 'Calibri Light';
font-size: 22px">
<h1> BUYSELL</h1>
<h3>Admin panel</h3>

<table style="margin-left: auto;
  margin-right: auto;">
    <thead>
    <tr>
        <th>Статус</th>
        <th>Роль</th>
        <th>Email</th>
        <th>Номер</th>
        <th>Бан</th>
        <th>Details</th>
    </tr>
    </thead>
    <tbody>
    <#list users as user>
        <tr>
            <th><#if user.active><img src="https://upload.wikimedia.org/wikipedia/commons/2/2d/Basic_green_dot.png"
                                      height="32" width="32" style="border-radius: 50%"/>
                <#else><img src="https://www.clipartmax.com/png/small/466-4669431_cropped-favicon-red-dot-image-png.png"
                            height="32" width="32" style="border-radius: 50%"/></#if>
            </th>
            <th><#if user.roles??><#list user.roles as role>${role}</#list></#if></th>
            <th><#if user.email??>${user.email}</#if></th>
            <th><#if user.phoneNumber??>${user.phoneNumber}</#if></th>
            <th><#if user.active>
                <form action="/user/ban/${user.id}" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input style="font-size: 23px; background-color: lightgray; border-color: red" type="submit"
                           value="Ban">
                </form>
                <#else>
                    <form action="/user/ban/${user.id}" method="post">
                        <input type="hidden" name="_csrf" value="${_csrf.token}">
                        <input style="font-size: 23px; background-color: lightgray; border-color: red" type="submit"
                               value="Unban">
                    </form>
                </#if>
            </th>
            <th><a style="text-decoration: none; text-decoration-color: black;
            border-width: 20px; border-color: black;
            background-color: lightgray;font-size: 23px" href="/user/${user.id}">Details</a></th>
        </tr>
    <#else> <h3>No users</h3>
    </#list>
    </tbody>
</table>
<a id="button-17" style="margin-top: 20px; text-align: -moz-right; text-decoration-color: #1b1e24;
 text-decoration-line: none;" href="/">Назад</a>
</body>
</html>