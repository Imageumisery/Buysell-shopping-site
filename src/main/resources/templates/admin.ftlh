<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <#include "table.css">
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
        <th>Status</th>
        <th>Role</th>
        <th>Email</th>
        <th>Number</th>
        <th>Ban</th>
        <th>Details</th>
    </tr>
    </thead>
    <tbody>
    <#list users as user>
        <tr>
            <th><#if user.active><img src="/images/Green_Dot_(Active).png" height="32" width="32" style="border-radius: 50%"/>
                <#else><img src="/images/Basic_red_dot.png" height="32" width="32" style="border-radius: 50%"/></#if>
            </th>
            <th><#if user.roles??><#list user.roles as role>${role}</#list></#if></th>
            <th><#if user.email??>${user.email}</#if></th>
            <th><#if user.phoneNumber??>${user.phoneNumber}</#if></th>
            <th>
                <form action="/user/ban/${user.id}" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input style="font-size: 12px; background-color: lightgray" type="submit" value="Ban">
                </form>
            </th>
            <th><a style="text-decoration: none; text-decoration-color: black;
            border-width: 13px; border-color: black;
            background-color: lightgray;font-size: 15px" href="/user/${user.id}">Details</a></th>
        </tr>
        <#else> <h3>No users</h3>
    </#list>
    </tbody>
</table>


<#--<div class="container">
<h2>Responsive Tables Using LI <small>Triggers on 767px</small></h2>
<ul class="responsive-table">
    <li class="table-header">
        <div class="col col-1">Job Id</div>
        <div class="col col-2">Customer Name</div>
        <div class="col col-3">Amount Due</div>
        <div class="col col-4">Payment Status</div>
    </li>
    <li class="table-row">
        <div class="col col-1" data-label="Job Id">42235</div>
        <div class="col col-2" data-label="Customer Name">John Doe</div>
        <div class="col col-3" data-label="Amount">$350</div>
        <div class="col col-4" data-label="Payment Status">Pending</div>
    </li>
    <li class="table-row">
        <div class="col col-1" data-label="Job Id">42442</div>
        <div class="col col-2" data-label="Customer Name">Jennifer Smith</div>
        <div class="col col-3" data-label="Amount">$220</div>
        <div class="col col-4" data-label="Payment Status">Pending</div>
    </li>
    <li class="table-row">
        <div class="col col-1" data-label="Job Id">42257</div>
        <div class="col col-2" data-label="Customer Name">John Smith</div>
        <div class="col col-3" data-label="Amount">$341</div>
        <div class="col col-4" data-label="Payment Status">Pending</div>
    </li>
    <li class="table-row">
        <div class="col col-1" data-label="Job Id">42311</div>
        <div class="col col-2" data-label="Customer Name">John Carpenter</div>
        <div class="col col-3" data-label="Amount">$115</div>
        <div class="col col-4" data-label="Payment Status">Pending</div>
    </li>
</ul>
</div>-->
</body>
</html>