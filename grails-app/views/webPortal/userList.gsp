<%--
  Created by IntelliJ IDEA.
  User: Julian
  Date: 6/30/2019
  Time: 4:11 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<g:applyLayout name="twoblocks">
    <head>
        <title>Admin</title>
        <style>
        .border-none{
            border: none;
        }
        .color-gray{
            color: gray;
        }
        .ms-70p{
            margin-left: 70%;
        }
        .border-bottom-2{
            border-bottom: 2px solid;
        }
        </style>
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

        <asset:javascript src="userList.js"/>
    </head>

    <content tag="admin">
        <div class="border-bottom-2 border-black pb-5">  <h2 class="mt-3 ml-3 d-inline-block ">User List</h2>
            <div class="d-inline-block border-black border p-2 rounded pl-3 pr-3 ms-70p">
                <i class="fas fa-search color-gray"></i>
                <input type="text" class="d-inline-block border-none" placeholder="Search" id="search" name="search" onkeyup="searchNameOrEmail()">
            </div>

        </div>


        <table class="table table-striped ">
            <thead>
            <tr>
                <th scope="col">Name</th>
                <th scope="col">Address</th>
                <th scope="col">Email</th>
                <th scope="col">Phone</th>
                <th scope="col">birthdate</th>
            </tr>
            </thead>
            <tbody id="tableValue">
            <g:each in="${emailList}"  var="user" >
                <tr>
                    <td>${user.firstName+" "+user.lastName}</td>
                    <td>${user.getAddress()}</td>
                    <td>${user.email}</td>
                    <td>${user.phone}</td>
                    <td>${user.birthdate.format("dd-mm-yyyy")}</td>
                </tr>
            </g:each>

            </tbody>
        </table>

    </content>


</g:applyLayout>