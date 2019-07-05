package simpleproject

import grails.gorm.transactions.Transactional
import grails.web.servlet.mvc.GrailsParameterMap
import org.hibernate.Session
import org.springframework.beans.factory.annotation.Autowired

@Transactional
class UserService {

    static dataSource = "root"
    def serviceMethod() {

    }
    def save(User user){
        user.save()
    }
    def forAccess(GrailsParameterMap parameterMap)
    {
        def result = User.findWhere(email: parameterMap.get("email"), password: parameterMap.get("password"))
        return result
    }
    def updatePassword(User user, String password)
    {
        user.password = password
        user.save()
    }
    def forAdminCheck(GrailsParameterMap parameterMap)
    {
        def result = User.findWhere(email: parameterMap.get("email"), password: parameterMap.get("password"), admin: "Yes")
        return result
    }
    def findUser()
    {
        def result = User.findAllWhere(admin: "No")

        return result;
    }
    def findEmail(GrailsParameterMap p){
        println(p.get("search"))
        def result = User.findWhere(email: p.get("search"))
        println(result)
        return result
    }
    def findName(GrailsParameterMap p)
    {
        def result = User.findAllWhere(firstName:p.get("search"))
        return  result
    }

}
