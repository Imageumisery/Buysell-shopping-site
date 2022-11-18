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
<h1 style="text-align: center;
margin-bottom: initial"
>BUYSELL</h1>
<hr>

<div style="justify-content: space-between;
        margin-top: 70px;">
    <h2>Information about
        <div style="font-style: oblique">${product.title}</div>
    </h2>
    <#list images as img>
        <img src="/images/${img.id!}" height="169px"/> <br><br>
    </#list>
    <b>Описание: </b>${product.description}<br>
    <b>Цена: </b>${product.price} $<br>
    <b>Город: </b>${product.city}<br>
    <b>Телефон продавца: </b><#if product.user.phoneNumber??>${product.user.phoneNumber}</#if><br>

    <b>Продавец: </b> <a href="/user/${product.user.id}">${product.user.email}</a><br>
    <hr>
</div>
<#if product.user??>
    <form action="/product/delete/${product.id}" method="post">
    </form>
</#if>
<a id="button-17" style="margin-top: 15px;
 text-decoration-line: none;" href="/">Назад</a>
</body>
</html>