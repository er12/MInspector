package facebook

import org.springframework.web.context.request.RequestContextHolder

import javax.servlet.http.HttpSession

class FacebookController {

    def index() {
        def currentSesion = session["currentSesion"];

        [currentSesion: "false"]




    }
}
