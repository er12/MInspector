<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>MInspector</title>
    <asset:stylesheet src="application.css"/>
    <asset:stylesheet src="jquery.tagsinput.css"/>
    <asset:stylesheet src="bootstrap/js/bootstrap.min.css"/>
    <asset:stylesheet src="metisMenu/metisMenu.min.css"/>
    <asset:stylesheet src="sb-admin-2.min.css"/>
    <asset:stylesheet src="font-awesome.min.css"/>
    <asset:stylesheet src="custom.css"/>


</head>

<g:javascript>
        var session = "${session.selectedValue}";
            if(session != "true"){
            // similar behavior as an HTTP redirect
        window.location.replace("/login");

            }
</g:javascript>
    <body>
    <!-- Page Content -->
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Actividad</h1>

                    <div class="col-lg-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Bar Chart Example
                            </div>
                        <g:if test="${myDailyActivitiesColumns}">
                            Llegaron ${myDailyActivitiesColumns}
                        </g:if>
    <!-- /.panel-heading -->
                            <div class="panel-body">

                            <content tag="contenido">
                                <gvisualization:pieCoreChart elementId="piechart" title="My Daily Activities" width="${500}" height="${500}"
                                                             columns="${myDailyActivitiesColumns}" data="${myDailyActivitiesData}" />
                                <div id="piechart"></div>
                            </content>

                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div>

                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->



    <asset:javascript src="jquery/jquery.min.js"/>
    <asset:javascript src="application.js"/>
    <asset:javascript src="bootstrap/js/bootstrap.min.js"/>
    <asset:javascript src="metisMenu/metisMenu.min.js"/>
    <asset:javascript src="jquery.tagsinput.js"/>
    <asset:javascript src="raphael.js.js"/>
    <asset:javascript src="sb-admin-2.js"/>




</body>
</html>
