package minspector

class IndexController {

    def index() {

            def myDailyActivitiesColumns = [['string', 'Task'], ['number', 'Hours per Day']]
            def myDailyActivitiesData = [['Work', 11], ['Eat', 2], ['Commute', 2], ['Watch TV', 2], ['Sleep', 7]]
            //retornando...
            [myDailyActivitiesColumns: myDailyActivitiesColumns, myDailyActivitiesData : myDailyActivitiesData];

    }
}
