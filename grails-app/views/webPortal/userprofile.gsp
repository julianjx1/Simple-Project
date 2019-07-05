<%--
  Created by IntelliJ IDEA.
  User: Julian
  Date: 6/28/2019
  Time: 4:20 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>

 <g:applyLayout name="twoblocks">
     <head>
         <title>Profile </title>
         <asset:stylesheet src="change-password.css" ></asset:stylesheet>

     </head>
     <content tag="userProfileField">
         <div class="lineDiv">   <h2 class="text-center mt-3">User Profile</h2> </div>
             <div id="loginDiv" class="mt-10p">
                 First Name    :   ${user.firstName} <br>
                 Last Name     :   ${user.lastName}  <br>
                 Address       :   ${user.address}   <br>
                 Phone         :   ${user.phone}     <br>
                 Email         :   ${user.email}     <br>
                 Birthdate     :   ${user.birthdate.format("dd-mm-yyyy")}
             </div>
     </content>


 </g:applyLayout>
