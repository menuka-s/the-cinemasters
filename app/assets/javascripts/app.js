$(document).ready(function() {
	$(".review").hide();
	$( ".down" ).animate({
    fontSize: "5em"
  }, 1500 );

	$("#left").hover(function() {
		$("#login").animate({
			opacity: 1
		}, 1500);
	})

	$("#cover").slideUp(500, function(){
	  $(".tagline").fadeIn(2000);
	  $(".review").fadeIn(3000);
	});

	$("#nav-button-hover").hover(function() {
    $("nav").slideDown(1000, function() {
    	$("#nav-button-click").fadeIn(3000);
    });
	  }
	);

	$("#nav-button-click").on('click', function() {
		$("nav").slideUp(1000);
		$("#nav-button-click").fadeOut(1000);
		$("#login").animate({
			opacity: 0
		}, 0);
	});

	$("#critic-event").on('click', function() {
		if($("#critic-event").hasClass("slide-left")) {
			$(this).addClass("slide-right", 100, "linear");
			$(this).removeClass("slide-left");
		} else {
			$(this).removeClass("slide-right");
			$(this).addClass("slide-left", 100, "linear");
		};
	});
});