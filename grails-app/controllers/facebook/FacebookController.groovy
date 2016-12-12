package facebook

import company.Company
import org.springframework.web.context.request.RequestContextHolder

import javax.servlet.http.HttpSession

class FacebookController {

    def index() {
        def currentSesion = session["currentSesion"];

        //me?fields=id,name,likes{id,name,category_list}
        [currentSesion: false]

    }

    def pages()
    {
        def name = params.select
        def company = new Company(name: name)


        company.save()

        session.setAttribute("company",company)
        render(view: "index", model: [company: company, loaded: true]);
    }
}
