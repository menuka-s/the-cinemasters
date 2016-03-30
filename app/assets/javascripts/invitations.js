$(document).on("click","#make_invite", function(e) {
	e.preventDefault();
	console.log("Making invite");
	ajaxReq = $.ajax({
			url: '/invitations/new',
			method: 'post',
			data: ''
	}).done(function (response){
		$('#invcodes').append("<li>http://localhost:3000/invitations/" + response["code"] + '&nbsp;&nbsp; <a class="del_invitation" href="' + response["code"] + '">(delete)</a></li>');
	});
});

$(document).on("click",".del_invitation", function(e) {
	e.preventDefault();
	that = $(this);
	var inv_id = $(this).attr("href");
	ajaxReq = $.ajax({
			url: "/invitations/" + inv_id,
			method: 'delete',
			data: ''
	}).done(function (response){
		console.log("Removing invitation");
		$(that).parent().remove();	
	});
	


});