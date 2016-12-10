<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>MInspector</title>

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
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->



</body>
</html>
