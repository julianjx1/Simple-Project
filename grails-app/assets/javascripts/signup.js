$("#firstName").keyup(function(){
    if(!$("#firstNameError").hasClass("d-none"))
        $("#firstNameError").addClass("d-none");
});
$("#lastName").keyup(function(){
    if(!$("#lastNameError").hasClass("d-none"))
        $("#lastNameError").addClass("d-none");
});
$("#address").keyup(function(){
    if(!$("#addressError").hasClass("d-none"))
        $("#addressError").addClass("d-none");
});
$("#phone").keyup(function(){
    if(!$("#phoneError").hasClass("d-none"))
        $("#phoneError").addClass("d-none");
});

function validateDate(dateStr) {
    const regExp = /^(\d{4})\-(\d\d?)\-(\d\d?)$/;
    let matches = dateStr.match(regExp);
    let isValid = matches;
    //console.log(dateStr);
    let maxDate = [0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

    if (matches) {
        const month = parseInt(matches[1]);
        const date = parseInt(matches[2]);
        const year = parseInt(matches[3]);

        isValid = month <= 12 && month > 0;
        isValid &= date <= maxDate[month] && date > 0;

        const leapYear = (year % 400 == 0)
            || (year % 4 == 0 && year % 100 != 0);
        isValid &= month != 2 || leapYear || date <= 28;
    }

    return isValid;
};
$("#birthdate").keyup(function(){
    if(!$("#birthdateError").hasClass("d-none"))
        $("#birthdateError").addClass("d-none");
    if(!$("#birthdateInvalid").hasClass("d-none"))
        $("#birthdateInvalid").addClass("d-none");
    if(validateDate($("#birthdate").val()))
    {
        birthdateValid = false
        $("#birthdateInvalid").removeClass("d-none");
    }
});
$("#email").keypress(function(){
    if(!$("#emailRight").hasClass("d-none"))
        $("#emailRight").addClass("d-none");
    if(!$("#emailWrong").hasClass("d-none"))
        $("#emailWrong").addClass("d-none");
    $("#emailLoading").removeClass("d-none");

});
$("#email").keyup(function(){
    if(!$("#emailExist").hasClass("d-none"))
        $("#emailExist").addClass("d-none");
    if(!$("#inputEmail").hasClass("d-none"))
        $("#inputEmail").addClass("d-none");
    if(!$("#inputValidEmail").hasClass("d-none"))
        $("#inputValidEmail").addClass("d-none");
    if(!$("#emailRight").hasClass("d-none"))
        $("#emailRight").addClass("d-none");
    if(!$("#emailLoading").hasClass("d-none"))
        $("#emailLoading").addClass("d-none");
    if(!$("#emailWrong").hasClass("d-none"))
        $("#emailWrong").addClass("d-none");
    var email = $("#email").val();
    var regex =/[a-z][a-z\.0-9]+@[a-z0-9]+\.[a-z]{2,4}$/;
    if(regex.test(email))
    {
        $.ajax(
            {
                type:"post",
                url: "/webPortal/userFind?email="+email,
            dataType:"json",
           success: function (data) {
        if(data["result"]=="true")
        {

            $("#emailWrong").removeClass("d-none");
            $("#emailExist").removeClass("d-none");
        }
        else
        {
            $("#emailRight").removeClass("d-none");
        }

    }}
        );


    }


});
$("#email").focusout(function(){
    $("#emailLoading").addClass("d-none");

});
$("#password").keyup(function(){
    if(!$("#passwordShort").hasClass("d-none"))
        $("#passwordShort").addClass("d-none");
    if(!$("#inputPassword").hasClass("d-none"))
        $("#inputPassword").addClass("d-none");
    if(!$("#passwordStrong").hasClass("d-none"))
        $("#passwordStrong").addClass("d-none");
    if(!$("#passwordNotStrong").hasClass("d-none"))
        $("#passwordNotStrong").addClass("d-none");
    if(!$("#passwordWeak").hasClass("d-none"))
        $("#passwordWeak").addClass("d-none");
    if(!$("#passwordSmall").hasClass("d-none"))
        $("#passwordSmall").addClass("d-none");
    var password = $("#password").val();
    var b = 0;
    if(password.length >= 8)
    {
        if(/[A-Z]/.test(password))
            b++;
        if(/[a-z]/.test(password))
            b++;
        if(/[0-9]/.test(password))
            b++;
        if(/[\#\$\%\&\*\+\-\!\/\_\=\.]/.test(password))
            b++;
        if(b == 2 || b == 1)
            $("#passwordWeak").removeClass("d-none");
        else if(b == 3)
            $("#passwordNotStrong").removeClass("d-none");
        else if(b == 4)
            $("#passwordStrong").removeClass("d-none");
        console.log(b)

    }
    else
        $("#passwordSmall").removeClass("d-none");
});
$("#phone").keyup(function(){
    if( !$("#validPhone").hasClass("d-none"))
        $("#validPhone").addClass("d-none");
    if( !$("#phoneErrpr").hasClass("d-none"))
        $("#phoneError").addClass("d-none");
    var phone = $("#phone").val();
    var regex = /[\d]{8,11}/
    if(!regex.test(phone))
        $("#validPhone").removeClass("d-none");
});
function validate(){
    var firstNameValid = true;
    var lastNameValid = true;
    var addressValid = true;
    var phoneValid = true;
    var emailValid = true;
    var birthdateValid = true;
    var passwordValid = true;
    if($("#firstName").val() == "")
    {
        firstNameValid = false
        $("#firstNameError").removeClass("d-none");
    }
    if($("#lastName").val() == "")
    {
        lastNameValid = false
        $("#lastNameError").removeClass("d-none");
    }
    if($("#address").val() == "")
    {
        addressValid = false
        $("#addressError").removeClass("d-none");
    }
    if($("#phone").val() == "")
    {
        phoneValid = false
        $("#phoneError").removeClass("d-none");
    }

    if($("#birthdate").val() == "")
    {
        birthdateValid = false
        $("#birthdateError").removeClass("d-none");
    }

    if($("#email").val() == "")
    {
        emailValid = false
        $("#inputEmail").removeClass("d-none");
    }
    if($("#password").val() == "")
    {
        passwordValid = false
        $("#inputPassword").removeClass("d-none");
    }
    if(!$("#passwordSmall").hasClass("d-none"))
    {
        passwordValid = false
        $("#passwordShort").removeClass("d-none");
    }
    var regex =/[a-z][a-z\.0-9]+@[a-z0-9]+\.[a-z]{2,4}$/;
    if(!regex.test($("#email").val()))
    {
        emailValid = false;
        $("#inputValidemail").removeClass("d-none");
    }
    console.log(firstNameValid);
    console.log(lastNameValid);
    console.log(addressValid);
    console.log(phoneValid);
    console.log(emailValid);
    console.log(birthdateValid);
    console.log(passwordValid);
    if(firstNameValid && lastNameValid && emailValid && passwordValid && addressValid && birthdateValid && phoneValid)
        return true;
    return false;
};
    
    