package simpleproject

import grails.codegen.model.Model
import grails.converters.JSON
import org.springframework.beans.factory.annotation.Autowired

class WebPortalController {
    @Autowired
    private UserService userService
    def index() {
        def goNext = 'access'
        render(view: "login", model: [goNext:goNext])
    }
    def admin(){
        def goNext = 'adminCheck'
        render(view: "login", model: [goNext:goNext])
    }
    def login(){
        def goNext = 'access'
        [goNext: goNext];
    }

    def signup(){
    }

    def userProfile()
    {
        if(session["user"]!=null) {
            def data = session["user"].properties
            User user = new User(data)
            [user:user]
        }
        else
            redirect(action: "")

    }

    def adminCheck(){
        User userInfo = userService.forAdminCheck(params)
        if(userInfo) {
            session["user"] = userInfo
            redirect(action: "userList")
        }
        else
            redirect(action: "admin")
    }
    def save(){
        User userObject= new User(params)
        userObject.save()
        redirect(action: "")
    }
    def access(){
        User userInfo = userService.forAccess(params)
        if(userInfo) {
            session["user"] = userInfo
            redirect(action: "userProfile")
        }
        else
            redirect(action: "")
    }

    def changePassword(){
        if(session["user"]== null)
            redirect(action: "")

    }
    def changePasswordConfirm(){
        if(session["user"]!= null)
        {

           User user = session["user"]
            if(params.get("previousPassword") == user.password)
            {
                if(params.get("newPassword") == params.get("confirmPassword"))
                {
                   def rs = userService.updatePassword(user, params.get("confirmPassword").toString())
                   redirect(action: "userProfile")
                }
            }
        }
        else
            redirect(action: "")
    }
    def logOut(){
        session.removeAttribute("user")
        redirect(action: "")
    }
    def userList(){
        if(session["user"]!= null )
        {
            if(session["user"].properties.get("admin") == "Yes")
            {

               def emailList = userService.findUser()
               [emailList:emailList]
            }
            else
                redirect(action: "")

        }
        else
            redirect(action: "")
    }

    def userFind(){
        def emailList = userService.findUser()
        def rs = false
        for(User u:emailList)
        {

            if(params.get("email") == u.email)
            {
                rs = true
                break
            }

        }
        def p = [];
        if(rs)
            p = [result:"true"]
        else
            p = [result:  "false"]
        render p as JSON



    }

    def getList(){
        def uList = userService.findUser()


        render uList as JSON
    }
    def getByEmail(){
        def u = userService.findEmail(params)

        render u as JSON
    }
    def getByName(){
        def list = userService.findName(params)

        render list as JSON
    }

}
