$(document).ready(function() {
	$('#review-content').keyup(function(e) {
		var keyCode = e.keyCode || e.which;
		var textArea = $(this);
		var reviewID = $(this).parent().attr("action").split('/')[2];
		var fieldText = $(this).val();
		if (keyCode == 190) {
			console.log("Saving Draft...");
			$.ajax({
				url: "/reviews/" + reviewID + "/draftsave",
				method: "post",
				data: {"review_id":reviewID,"fieldtext":fieldText}
			}).done(function(){
				$('#draft_notice').remove();
				$(textArea).parent().append('<span id="draft_notice">Draft Saved</span>');
				$('#draft_notice').fadeOut();
			})

		}
	})
})