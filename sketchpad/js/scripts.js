$(document).ready(function() {
	for (var i = 1; i <= 16; i++) {
		$('#container').append('<div id="' + i + '" class="grid"></div>');
	}
	$('#container > div').mouseenter(function() {
		$(this).addClass('blue');
	});
});

