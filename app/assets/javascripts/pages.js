var ready;
ready = function() {
	var encodedURI = window.location.search.match(/(%[^"].*)/);
	if(encodedURI && window.location.pathname == '/universities') {
		var decodeURI = decodeURIComponent(encodedURI[0]);
		$('.clicker').removeClass('current');
		$('li:contains('+decodeURI+')').addClass('current');
	}
	else {
		$('.clicker').first().addClass('current');
	}
};

$(document).ready(ready);
$(document).on('page:load', ready);