$(document).ready(function(){
	$('.dummy-password-input').on('click', function() {
		$(this).hide();
		$(this).next().show(0, function() {
			$(this).next().focus();
		});
	});
});