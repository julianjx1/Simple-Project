<%--
  Created by IntelliJ IDEA.
  User: Julian
  Date: 6/28/2019
  Time: 2:01 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>

<g:applyLayout name="twoblocks">
    <head>
        <title>Change Password</title>
        <asset:stylesheet src="change-password.css" ></asset:stylesheet>
    </head>
    <content tag="passwordChange">
        <div class="lineDiv">   <h2 class="text-center mt-3">Change Password</h2>
        </div>

        <div id="loginDiv" class="mt-10p">
            <g:form method="post" action="changePasswordConfirm">

                <div class="form-group row">
                    <label for="previousPassword" class="col-sm-2 col-form-label">Previous Password </label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="previousPassword" name="previousPassword" >
                    </div>
                </div>
                <div class="form-group row">
                    <label for="newPassword" class="col-sm-2 col-form-label">New Password </label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="newPassword" name="newPassword" >
                    </div>
                </div>
                <div class="form-group row">
                    <label for="confirmPassword" class="col-sm-2 col-form-label">Confirm Password </label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" >
                    </div>
                </div>
                <g:submitButton name="Change Password"  class="btn btn-success w-200 mr-40"></g:submitButton>
                <g:link action="changePassword" class="btn btn-danger w-200">Clear</g:link>
            </g:form>
        </div>

    </content>
    <content tag="leftNav">
        <li class="border-bottom border-black pt-3 pb-3"> <g:link controller="webPortal" action="userProfile">Profile page</g:link> </li>
        <li class="border-bottom border-black pt-3 pb-3"> <g:link controller="webPortal" action="changePassword">Change Password </g:link></li>
    </content>
</g:applyLayout>
