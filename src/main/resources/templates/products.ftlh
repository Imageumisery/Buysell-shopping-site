<!DOCTYPE html>
    <html>
    <head> HELLO</head>
    <body>
<h1>BUYSELL</h1> <hr>
    <h4>Things all around the world</h4>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} | <a href="/product/${product.id}">Details</a></p>

    </div>
</#list>
    <hr>
    <h3> <a href="/product/create">Create a new order</a></h3>

    </body>
    </html>