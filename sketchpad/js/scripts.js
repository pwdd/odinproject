$(document).ready(function() {
	for (var i = 1; i <= 16; i++) {
		$('#container').append('<div id="box-' + i + '" class="grid"></div>');
		$('.grid').mouseenter(function() {
			$('.grid').addClass('blue');
		});
	}
});
