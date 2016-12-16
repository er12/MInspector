package minspector

class IndexController {

    def index() {

            def myDailyActivitiesColumns = [['string', 'Movements'], ['number', 'Media']]
            def myDailyActivitiesData = [['Facebook', 15], ['Twitter', 2], ['Instagram', 2]]
            //retornando...
            [myDailyActivitiesColumns: myDailyActivitiesColumns, myDailyActivitiesData : myDailyActivitiesData];

    }
}
