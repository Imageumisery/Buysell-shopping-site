<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <#include "style.css">
    <#include "log.css">
</head>
<body style="text-align: center;
font-family: 'Calibri Light';
font-size: 22px">
<h1>BUYSELL</h1>
<hr/>
<h4>Авторизация</h4>
<#if errorMessage??>
    <h1 style="color: crimson; text-align: center; ">Wrong login or password! ${errorMessage}</h1>
<#else>
    <form action="/login" method="post">
        Mail: <input type="email" name="username"><br><br>
        Password: <input type="password" name="password"><br><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input id="button-17" type="submit" value="Enter"/>
    </form>
</#if>

<a id="button-17" style="margin-top: 15px;
 text-decoration-line: none;" href="/registration">Register</a>
</body>
</html>