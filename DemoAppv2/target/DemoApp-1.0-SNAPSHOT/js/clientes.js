$(function () {
   
    $.ajax({
        url: "Clientes",
        success: function (data) {
            var fils = $.parseJSON(data);
            
            console.log(fils);
            
            for (var idx in fils) {
                var fil = fils[idx];
                
                $('#tbClientes > tbody:last-child').append('<tr>' +
                    '<td>' + fil.ruc + '</td>' +
                    '<td>' + fil.nombre + '</td>' +
                    '<td>' + fil.sector + '</td>' +
                    '<td>' + fil.direccion + '</td>' +
                    '<td>' + fil.web + '</td>' + 
                 '</tr>');
               
                
            }
           
        }
    });
});
