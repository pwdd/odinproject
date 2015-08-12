$(function() {
	var gridSize = 4;
	var pageWidth = 960;

	$('#container').prepend('<button id="new_grid" value="grid">New Grid</button>');

	var makeGrid = function() {
		for (var i = 1; i <= gridSize; i++) {
			var squareSize = Math.round((pageWidth / Math.sqrt(gridSize)) - 5);
			$('#container').append('<div id="' + i + '" class="grid"></div>');
			$('.grid').width(squareSize);
			$('.grid').height(squareSize);
		}
		$('#container > div').mouseenter(function() {
			$(this).addClass('blue');
		});
	};

	makeGrid(gridSize);

	var button = document.getElementById('new_grid');

	button.addEventListener('click', function() {
		$('#container > div').remove();
		var userInput = prompt('Select a number from 2 to 64');
		if (userInput >= 2 && userInput <= 64) {
			gridSize = userInput * userInput;
			makeGrid(gridSize);
				
		}
		else {
			gridSize = 4;
			makeGrid(gridSize);
		}
	});	
});
