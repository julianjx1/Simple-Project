package simpleproject

import grails.databinding.BindingFormat

import javax.persistence.Id
import javax.persistence.Transient

@SuppressWarnings('GrailsDomainReservedSqlKeywordName')
class User {

    String firstName;
    String lastName;
    String address;
    String phone;
    String email;
    @BindingFormat('yyyy-MM-dd')
    Date birthdate;
    String password;
    String admin = "No"
    static constraints = {
        email(nullable: false, blank: false, unique: true)
        password(nullable: false, blank: false)

    }
    static mapping = {
        version(false)
    }
}
