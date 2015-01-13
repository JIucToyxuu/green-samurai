var ready;
ready = function() {
	var encodedURI = window.location.search.match(/=.*/);
	if(encodedURI && window.location.pathname == '/universities') {
		var decodeURI = decodeURIComponent(encodedURI[0].slice(1));
		$('.clicker').removeClass('current-menu');
		$('li:contains('+decodeURI+')').addClass('current-menu');
		console.log(decodeURI)
	}
	else {
		$('.clicker').first().addClass('current-menu');
	}
};

$(document).ready(ready);
$(document).on('page:load', ready);