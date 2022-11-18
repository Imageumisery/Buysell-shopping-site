<!DOCTYPE html>
<html>
<head><title>BUYSELL</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <#include "style.css">
</head>
<body style="text-align: center;
font-family: 'Calibri Light';
font-size: 22px">
<h1>BUYSELL
    <#if user.isAdmin()>
        <h3>Hey Admin <i>${user.email}</i>, Welcome!</h3>
        <a id="button-17" style="margin-top: 15px;
 text-decoration-line: none;" href="/admin">Панель администратора</a>
        <form action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <input id="button-17" style="margin-top: 15px;
 text-decoration-line: none;" type="submit" value="Exit">
        </form>
    <#else>
        <h3>Hey <i>${user.email}</i>, Welcome!</h3>
        <form action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <input id="button-17" type="submit" value="Exit">
        </form>
    </#if>
</h1>
<hr>
<#if user.email??>
    <#list products as product>
        <div>
            <p><b>${product.title}</b> ${product.price}  <a id="button-17" style="margin-top: 15px; margin-left: 80px; text-decoration-line: none;" href="/product/${product.id}">Details</a></p>

        </div>
    </#list>
    <hr>
    <h3><a id="button-17" style="margin-top: 15px;
 text-decoration-line: none;" href="/product/create">Создать</a></h3>
</#if>


</body>
</html>