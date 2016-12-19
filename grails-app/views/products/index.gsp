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
<body>
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Productos</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>


            <div class="products">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Agregar nuevo producto
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-4">

                                        <g:form controller="products" action    ="form" role="form">
                                            <h1>Nombre del producto/servicio</h1>
                                            <div class="form-group input-group">
                                                <span class="input-group-addon">@</span>
                                                <input type="text" class="form-control" name="name" placeholder="Nombre">
                                            </div>

                                            <h1>Atributos</h1>
                                            <div class="form-group input-group">
                                                <input id="tags_1" type="text" class="tags form-control" value="" />
                                                <div id="suggestions-container" style="position: relative; float: left; width: 250px; margin: 10px;"></div>
                                            </div>
                                        </g:form>
                                    </div>
                                    <!-- /.col-lg-6 (nested) -->
                                </div>
                                <!-- /.row (nested) -->
                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
            </div>
        <!-- /.row -->

        <!-- /.row -->
    </div>

<asset:javascript src="jquery/jquery.min.js"/>
<asset:javascript src="application.js"/>
<asset:javascript src="bootstrap/js/bootstrap.min.js"/>
<asset:javascript src="metisMenu/metisMenu.min.js"/>
<asset:javascript src="jquery.tagsinput.js"/>
<asset:javascript src="sb-admin-2.js"/>
    <!-- jQuery Tags Input -->
    <script>
        function onAddTag(tag) {
            alert("Added a tag: " + tag);
        }


        function onRemoveTag(tag) {
            alert("Removed a tag: " + tag);
        }

        function onChangeTag(input, tag) {
            alert("Changed a tag: " + tag);
        }

        $(document).ready(function() {
            $('#tags_1').tagsInput({
                width: 'auto'
            });
        });
    </script>
    <!-- /jQuery Tags Input -->
</body>

</html>
