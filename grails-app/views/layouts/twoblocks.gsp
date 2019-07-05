<%--
  Created by IntelliJ IDEA.
  User: Julian
  Date: 6/30/2019
  Time: 1:41 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="page">
    <title> <g:layoutTitle /> </title>

    <g:layoutHead/>
</head>

<body>

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-2 pt-3 border-right border-black">
                <ul class="list-style-none">
                    <li class="border-bottom border-black pt-3 pb-3"> <g:link controller="webPortal" action="userProfile">Profile page</g:link> </li>
                    <li class="border-bottom border-black pt-3 pb-3"> <g:link controller="webPortal" action="changePassword">Change Password </g:link></li>
                    <g:if test="${session["user"].properties.get("admin")=="Yes"}" >
                        <li class="border-bottom border-black pt-3 pb-3"> <g:link controller="webPortal" action="userList">User List</g:link> </li>
                    </g:if>

                </ul>
            </div>
            <div class="col-md-10 pt-3 border-right border-black">

                <g:pageProperty name="page.userProfileField" />
                <g:pageProperty name="page.passwordChange"/>
                <g:pageProperty name="page.admin"/>
            </div>
        </div>

    </div>


</body>
</html>