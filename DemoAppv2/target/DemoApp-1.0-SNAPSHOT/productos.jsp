<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>parainformaticos.com</title>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script type="text/javascript">
            $(function () {
                $.ajax({
                    url: "Peru",
                    success: function (data) {
                        var fils = $.parseJSON(data);
                        
                        var option = "";
                        for (var idx in fils) {
                            var fil = fils[idx];
                            option += "<option value=\"" + fil.id + "\">"
                                    + fil.texto + "</option>";
                        }
                        $("#iddepartamento").html(option);
                    }
                });
            });
        </script>
    </head>
    <body>
        <div style="text-align: center">
            <select id="iddepartamento"></select>
        </div>
    </body>
</html>
