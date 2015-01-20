var ready;
ready = function() {
	// set window position on Y
	window.scrollBy(0,$.cookie("pagePositionY"));
	$.cookie("pagePositionY", 0);

	var encodedURI = window.location.search.match(/=.*/);
	if(encodedURI && window.location.pathname == '/universities') {
		var decodeURI = decodeURIComponent(encodedURI[0].slice(1));
		$('.clicker').removeClass('current-menu');
		$('li:contains('+decodeURI+')').addClass('current-menu');
	}
	else {
		$('.clicker').first().addClass('current-menu');
	}
};

$(document).ready(ready);
$(document).on('page:load', ready);