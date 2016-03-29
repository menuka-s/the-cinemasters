$(document).ready(function() {
	$('#invite_buttons').on("click",".invite_button",function(e) {
		console.log("Button: " + $(this).val());
		ajaxReq = $.ajax({
							url: '/reviews/invite_handler',
							method: 'post',
							data: {"data":$(this).val()}
						});
		ajaxReq.done(function(response){
			var invited = response.split(',')[0];
			var critic = response.split(',')[2];
			if (invited == 'i') { bgc = "#CFC"; }
			else { bgc = "#CFC"; }
			$("#critic" + critic).css("background-color",bgc);
		})
	})
})
