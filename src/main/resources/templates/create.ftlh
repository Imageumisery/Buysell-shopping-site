<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <#include "style.css">
</head>
<body style="text-align: center;
font-family: 'Calibri Light';
font-size: 22px">
<h1>Create a new order</h1>
<hr>
<form style="padding: 10px;
    justify-content: space-between;
    margin-left: auto;
    margin-right: auto;
    align-items: center;
    border: 2px solid rebeccapurple;"

      action="/product/create" method="post" enctype="multipart/form-data">
    Название: <input type="text" required name="title"/><br><br>
    Описание: <input type="text" required name="description"/><br><br>
    Цена: <input type="number" required name="price"/> $<br><br>
    Город: <input type="text" required name="city"/><br><br>

    First photo: <input type="file" name="file1"/><br><br>
    Second photo: <input type="file" name="file2"/><br><br>
    Third photo: <input type="file" name="file3"/><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input id="button-17" type="submit" value="Create"/>
</form>

</body>

</html>

