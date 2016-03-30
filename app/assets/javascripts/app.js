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

	$("#critic-event-tab").on('click', function() {
		if($("#critic-event").hasClass("slide-left")) {
			$(this).parent().addClass("slide-right", 500, "linear");
			$(this).parent().removeClass("slide-left");
		} else {
			$(this).parent().removeClass("slide-right");
			$(this).parent().addClass("slide-left", 500, "linear");
		};
	});
});