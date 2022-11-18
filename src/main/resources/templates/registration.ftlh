<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <#include "style.css">
   </head>
<body style="text-align: center;
font-family: 'Calibri Light';
font-size: 22px">
<h1>BUYSELL</h1><hr>
<h4>Регистрация</h4>
<form action="/registration" method="post">
    Имя пользователя: <input type="text" required ename="name"><br><br>
    Эл. почта: <input type="email" required name="email"><br><br>
    Номер телефона: <input type="text" required name="phoneNumber"><br><br>
    Пароль: <input type="password" required name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    Code Admin: <input type="text" name="isAdmin" value="(not required)">
    <input id="button-17" style="margin-top: 15px;text-align: center; margin-right: auto; margin-left:auto;
 text-decoration-line: none;"type="submit" value="Register"/>
</form>
<#if errorMessage??>
    <h2 style="color: crimson; margin-top: 50px;"> ${errorMessage}</h2>
</#if>
</body>
</html>