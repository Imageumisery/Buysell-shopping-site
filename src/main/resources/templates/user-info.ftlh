<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
<body style="text-align: center;
font-family: 'Calibri Light';
font-size: 22px">
<h1>BUYSELL</h1><hr>
<h3>Информация о продавце ${user.email}</h3>
<h3>Номер продавца: <#if user.phoneNumber??>${user.phoneNumber}</#if></h3>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} | <a style="text-decoration: none; border-width: 13px; border-color: black;
            background-color: beige;" href="/product/${product.id}">Details</a></p>

    </div>
</#list>

</body>
</html>