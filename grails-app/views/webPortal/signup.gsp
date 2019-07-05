<%--
  Created by IntelliJ IDEA.
  User: Julian
  Date: 6/24/2019
  Time: 12:34 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sign up</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <asset:stylesheet src="signup.css"></asset:stylesheet>
    <script src="https://kit.fontawesome.com/2b8dd55cc1.js"></script> <!-- font awasame kid -->
</head>
<body>
<div>
    <i class="fas fa-address-book f-80 ml-48p mt-10p "></i>
</div>
<h2 class="text-center mb-3">Registration Panel</h2>

<div id="loginDiv">
    <g:form controller="webPortal" action="save" method="post" name="signUpForm" onsubmit="return validate()">
        <div class="form-group row">
            <label for="firstName" class="col-sm-2 col-form-label">first name</label>
            <div class="col-sm-10 border border-rounded-5">
                <div class="row">
                    <input type="text" class="form-control border-none" id="firstName" name="firstName" ></div>
            </div>
            <div class="col-sm-10 color-red d-none" id="firstNameError">
                Please fill up this input
            </div>

        </div>
        <div class="form-group row">
            <label for="lastName" class="col-sm-2 col-form-label">last name</label>
            <div class="col-sm-10 border border-rounded-5">
                <div class="row">
                    <input type="text" class="form-control border-none" id="lastName" name="lastName"></div>

            </div>
            <div class="col-sm-10 color-red d-none" id="lastNameError">
                Please fill up this input
            </div>
        </div>

        <div class="form-group row">
            <label for="address" class="col-sm-2 col-form-label">address</label>
            <div class="col-sm-10 border border-rounded-5">
                <div class="row">
                    <textarea name="address" id="address" cols="30" rows="3" class="form-control border-none"></textarea></div>
            </div>
            <div class="col-sm-10 color-red d-none" id="addressError">
                Please fill up this input
            </div>
        </div>

        <div class="form-group row">
            <label for="phone" class="col-sm-2 col-form-label">phone</label>
            <div class="col-sm-10 border border-rounded-5">
                <div class="row">
                    <input type="text" class="form-control border-none" id="phone" name="phone"></div>
            </div>
            <div class="col-sm-10 color-red " >
                <p class="d-none" id="phoneError">Please fill up this input</p> <p class="d-none" id="validPhone">Please insert valid phone number</p>
            </div>
        </div>
        <div class="form-group row">
            <label for="email" class="col-sm-2 col-form-label">email</label>
            <div class="col-sm-10 border border-rounded-5" id="emailDiv">
                <div class="row">
                    <input type="email" class="form-control col-sm-11 d-inline border-none" id="email" name="email">
                    <span><i id="emailRight" class="fas fa-check col-sm-1 color-green f-20 pt-2 d-none"></i><i id="emailWrong" class="fas fa-times  col-sm-1 color-red d-none f-20 pt-2"></i> </span>
                    <img id="emailLoading"  class="col-sm-1 d-none" src="http://gotcore.com/wp-content/themes/gotcore/images/loading-white.gif" alt="yes" >
                </div>

            </div>
            <div class="col-sm-10 color-red" id="emailError">
                <p class="d-none" id="inputEmail">Please fill up this input</p> <p class="d-none" id="inputValidEmail">Please input valid email</p> <p class="d-none" id="emailExist">This email has already existed.</p>
            </div>
        </div>
        <div class="form-group row">
            <label for="birthdate" class="col-sm-2 col-form-label">birth-date</label>
            <div class="col-sm-10 border border-rounded-5">
                <div class="row">      <input type="date" class="form-control border-none" id="birthdate" name="birthdate">
                </div>
            </div>
            <div class="col-sm-10 color-red">
                <p class="d-none" id="birthdateError">Please fill up this input</p> <p class="d-none" id="birthdateInvalid">Please fill valid birth-date</p>
            </div>
        </div>

        <div class="form-group row">
            <label for="password" class="col-sm-2 col-form-label">Password</label>
            <div class="col-sm-10 border border-rounded-5">
                <div class="row">
                    <input type="password" class="form-control col-sm-10 d-inline border-none" id="password" name="password">
                    <p class="col-sm-2 color-weak d-none pt-2" id="passwordSmall"><strong>Small</strong></p><p class="col-sm-2 color-strong d-none pt-2" id="passwordStrong"><strong>Strong</strong></p><p class="col-sm-2 color-notStrong d-none pt-2" id="passwordNotStrong"><strong>Not Strong</strong></p><p class="col-sm-2 color-weak d-none pt-2" id="passwordWeak"><strong>Weak</strong></p></div>
            </div>
            <div class="col-sm-10 color-red " id="passwordError">
                <p class="d-none" id="inputPassword">Please fill up this input </p> <p class="d-none" id="passwordShort">Your password is short. Give at least 8 character</p>
            </div>
        </div>


        <g:submitButton name="Register" class="btn btn-success w-200 mr-40" ></g:submitButton>
        <g:link controller="webPortal" action="index" class="btn btn-danger w-200">Cancel</g:link>

    </g:form>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<asset:javascript library="jQuery" src="signup.js" />
</body>
</html>