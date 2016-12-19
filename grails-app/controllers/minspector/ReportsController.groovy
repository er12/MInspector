package minspector

import weka.associations.Apriori
import weka.clusterers.SimpleKMeans
import weka.core.Instances
import weka.experiment.DatabaseUtils.*
import weka.experiment.InstanceQuery

class ReportsController {

    def index() {


    }
    def pubobj(){//Agrupacion

        Apriori apriori = new Apriori();
        /***************************
         * Instances from Database
         ****************************/
        InstanceQuery query = new InstanceQuery();
        query.setUsername("postgres");
        query.setPassword("postgres");
        query.setQuery("SELECT * FROM data_apriori");

        Instances data = query.retrieveInstances();
        data.setClassIndex(data.numAttributes() - 1);

        // build associator

        apriori.setClassIndex(data.classIndex());
        apriori.buildAssociations(data);

        //J48 ///Savedata intance

        // output associator
        def myDailyActivitiesColumns = [['string', 'Movements'], ['number', 'Media']]
        def myDailyActivitiesData = [['Facebook', 15], ['Twitter', 2], ['Instagram', 2]]
        //retornando...
        [myDailyActivitiesColumns: myDailyActivitiesColumns, myDailyActivitiesData : myDailyActivitiesData , apriori: apriori]

    }
    def impacto()
    {

    }

}
