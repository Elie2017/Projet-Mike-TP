$(document).ready(function() {
    $.ajax({
    url: "http://localhost/TpMike/api/location.php",
    method: "GET",
    dataType: "json" // optionel
  })
    .done(function(dataPosts){
    	var content='';
    	dataPosts.forEache(function(element) {
    	content += '<li><a href="#">'+element['marque']+' '+element['marque']+'</a></li>';
    	})
    	$('#right_column ul').html(content);
    })

    .fail(function(jqXHR, textStatus) {
    	alert( "Request failed: " + textStatus );
  	});
});