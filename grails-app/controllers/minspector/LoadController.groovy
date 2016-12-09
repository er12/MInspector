package minspector

class LoadController {

    def facebookService

    def index() {


    }


    def loadFacebook(){

        [res: facebookService.getReactions()]
        [res2: facebookService.getUser("1") ]



    }

    private def loadTwitter(){

    }

    private def loadInstagram(){

    }



}
