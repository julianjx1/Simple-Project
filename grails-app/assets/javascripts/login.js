
function validate(){
    if(!$("#emailError").hasClass("d-none"))
        $("#emailError").addClass("d-none");
    if(!$("#emailValid").hasClass("d-none"))
        $("#emailValid").addClass("d-none");
    if(!$("#passwordError").hasClass("d-none"))
        $("#passwordError").addClass("d-none");
    var emailValid = true;
    var passwordValid = true;
    if($("#email").val() == "")
    {
        emailValid = false
        $("#emailError").removeClass("d-none");
    }
    if($("#password").val() == "")
    {
        passwordValid = false
        $("#passwordError").removeClass("d-none");
    }
    if($("#password").val().length < 8 && passwordValid)
    {
        passwordValid = false
        $("#passwordValid").removeClass("d-none");
    }

    var regex =/[a-z][a-z\.0-9]+@[a-z0-9]+\.[a-z]{2,4}$/;
    if(!regex.test($("#email").val()) && emailValid)
    {
        emailValid = false;
        $("#emailValid").removeClass("d-none");
    }
    if(emailValid && passwordValid)
        return true;
    return false;
}