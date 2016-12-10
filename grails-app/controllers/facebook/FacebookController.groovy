package facebook

import org.springframework.web.context.request.RequestContextHolder

import javax.servlet.http.HttpSession

class FacebookController {

    def index() {
        def currentSesion = session["currentSesion"];

        //me?fields=id,name,likes{id,name,category_list}
        [currentSesion: false]

    }
}
