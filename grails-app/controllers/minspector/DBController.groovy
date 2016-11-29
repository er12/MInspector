package minspector

class DBController {


    def DBManagerService

    def index() {

        System.out.println("Start\n\n");

        DBManagerService.testConnection()

/*
        try{
            String hello = r.text("http://hello-world.org/").toString();
            System.out.println("\n" + hello);
        }catch(Exception e){}

*/
    }
}
