// $(document).ready(function() {
// 	$('#invite_buttons').on("click",".invite_button",function(e) {
// 		console.log("Button: " + $(this).val());
// 		ajaxReq = $.ajax({
// 							url: '/reviews/invite_handler',
// 							method: 'post',
// 							data: {"data":$(this).val()},
// 							dataType: 'json',
// 						});
// 		ajaxReq.done(function(response){
// 			var critic = response["critic_id"];
// 			if (response["action"] == 'i') { 
// 				$("#critic" + critic).val("u," + response["event_id"] + "," + critic)
// 				bgc = "#CFC"; 
// 			} else { 
// 				$("#critic" + critic).val("i," + response["event_id"] + "," + critic)
// 				bgc = "#CCC"; 
// 			}
// 			console.log("bgc is " + bgc);

// 			$("#critic" + critic).css("background-color",bgc);
// 		})
// 	})
// })
