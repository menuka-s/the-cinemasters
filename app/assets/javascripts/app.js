$(document).ready(function() {
	$(".review").hide();
	$( ".down" ).animate({
    fontSize: "5em"
  }, 1500 );

	$("#left").hover(function() {
		$(".hidden-button").animate({
			opacity: 1
		}, 1500);
	})

	$(".tagline").fadeIn(2000);
  $(".review").fadeIn(3000);

	$("#nav-button-hover").hover(function() {
    $("nav").slideDown(1000, function() {
    	$("nav").addClass("active");
    	$("nav").removeClass("inactive");
    	$("#nav-button-click").fadeIn(3000);
    });
	  }
	);

	$("#nav-button-click").on('click', function() {
		$("nav").slideUp(1000, function() {
			$("nav").addClass("inactive");
			$("nav").removeClass("active");
		});
		$("#nav-button-click").fadeOut(1000);
		// $(".hidden-button").animate({
		// 	opacity: 0
		// }, 0);
	});

	$("#critic-event").on('click', "#critic-event-tab", function() {
		if($("#critic-event").hasClass("slide-left")) {
      $("#critic-event").empty();
      $.ajax({
        method: "get",
        url: "/critics/partial",
        data: {}
        })
      .done(function(response){
        $("#critic-event").append(response)
      });
			$("#critic-event").addClass("slide-right", 500, "linear");

			$("#critic-event").removeClass("slide-left");
		} else {
			$("#critic-event").removeClass("slide-right");
			$("#critic-event").addClass("slide-left", 500, "linear");
		};
	});
});
