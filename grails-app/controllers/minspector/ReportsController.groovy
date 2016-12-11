package minspector

import weka.core.Instances
import weka.experiment.DatabaseUtils.*
import weka.experiment.InstanceQuery

class ReportsController {

    def index() {


    }
    def pubobj(){
        /***************************
         * Instances from Database
         ****************************/
        InstanceQuery query = new InstanceQuery();
        query.setUsername("postgres");
        query.setPassword("postgres");
        query.setQuery("SELECT * FROM cities" );

        Instances data = query.retrieveInstances();
        System.out.println(data);

    }
    def impacto()
    {

    }

}
