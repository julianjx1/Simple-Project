package simpleproject

import org.springframework.web.servlet.ModelAndView

class UrlMappings {


    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")

        "500"(view:'/error')
        "404"(view:'/notFound')

    }
}
