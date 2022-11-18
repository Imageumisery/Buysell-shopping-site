<!DOCTYPE html>
<html>
<head>

</head>
<body style="text-align: center;
font-family: 'Calibri Light';
font-size: 22px">
<h1>BUYSELL</h1><hr>
<h3>Information about user ${user.name}</h3><hr>
<form action="/admin/user/edit" method="post">
    <#list roles as role>
        <div>
            <label>
                <input type="checkbox" name="${role}"
                        ${user.roles?seq_contains(role)?string("checked", "")}>
                ${role}
            </label>
        </div>
    </#list>
    <input type="hidden" value="${user.id}" name="userId">
    <input type="hidden" value="${_csrf.token}" name="_csrf">
    <button style="background-color: beige;
    border-color: black;
    border-width: 70px;
    border-radius: 30%"
            type="submit">Save</button>

</form>

</body>
</html>