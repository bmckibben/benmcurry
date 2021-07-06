$(document).ready(function() {

	$(".annotate-group").on("click", function(e) {
		var id = $(this).data('id');
		$("#reply_"+id).toggle();
	});	
});

