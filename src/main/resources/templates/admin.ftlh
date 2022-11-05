<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
<h1> BUYSELL</h1>
<h3>Admin panel</h3>
<table border="1">
    <tr>
        <th>Status</th>
        <th>Role</th>
        <th>Email</th>
        <th>Number</th>
        <th>Ban</th>
        <th>Details</th>
    </tr>
    <#list users as user>
        <tr>
            <th><#if user.active><img src="/images/Green_Dot_(Active).png" height="32" width="32" style="border-radius: 50%"/>
                <#else><img src="/images/Basic_red_dot.png" height="32" width="32" style="border-radius: 50%"/></#if>
            </th>
            <th>${user.role}</th>
            <th>${user.email}</th>
            <th>${user.phoneNumber}</th>
            <th>
                <form action="/user/ban/${user.id}" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type="submit" value="Ban">
                </form>
            </th>
            <th><a href="/user/${user.id}">Details</a></th>
        </tr>
        <#else> <h3>No users</h3>
    </#list>
</table>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>