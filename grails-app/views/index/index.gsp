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
    <asset:stylesheet src="dataTables.bootstrap.css"/>
    <asset:stylesheet src="dataTables.responsive.css"/>
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
<gvisualization:apiImport/>
    <!-- Page Content -->
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Actividad</h1>

                    <div class="col-md-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Seguidores
                            </div>
                            <div class="panel-body">
                                <gvisualization:pieCoreChart elementId="piechart" title="Por red social" width="${500}" height="${500}"
                                                             columns="${myDailyActivitiesColumns}" data="${myDailyActivitiesData}" />
                                <div id="piechart"></div>



                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div>
                    <div class="col-md-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Publicaciones
                            </div>
                            <div class="panel-body">

                                <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                    <tr>
                                        <th>Red social</th>
                                        <th>Fecha</th>
                                        <th>Post</th>
                                        <th>Likes</th>
                                        <th>Link</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr class="odd gradeX">
                                        <td>Facebook</td>
                                        <td>27/02/2016</td>
                                        <td>New Mugs!</td>
                                        <td class="center">4</td>
                                        <td class="center">X</td>
                                    </tr>
                                    <tr class="even gradeC">
                                        <td>Facebook</td>
                                        <td>05/06/2016</td>
                                        <td>Spirit Animal</td>
                                        <td class="center">10</td>
                                        <td class="center">X</td>
                                    </tr>
                                    </tbody>
                                </table>


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
    <asset:javascript src="dataTables.bootstrap.js"/>
    <asset:javascript src="dataTables.responsive.js"/>
    <asset:javascript src="jquery.dataTables.js"/>

<script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
</script>




</body>
</html>
