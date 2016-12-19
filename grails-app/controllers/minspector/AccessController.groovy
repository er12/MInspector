package minspector

class AccessController {

    def index() { }

    def login() {

        //minspector.Product.deleteAll()
        //minspector.Company.deleteAll()

        def valid = false

        if(valid)
        {
            session.setAttribute("currentSesion","true")
            redirect(uri: "/")
        }

    }

    def logout() {
        log.info "User agent: " + request.getHeader("User-Agent")
        session.invalidate()
        redirect(action: "login")
    }
}
