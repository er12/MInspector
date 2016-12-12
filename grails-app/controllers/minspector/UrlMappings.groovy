package minspector

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: "index", action: "index")
        "/login"(controller: "access", action:"login")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
