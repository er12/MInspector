package minspector

class BootStrap {

    DatabaseService databaseService

    def init = { servletContext ->
        databaseService.init();
        databaseService.pollute();

    }
    def destroy = {
    }
}
