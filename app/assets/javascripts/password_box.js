$(document).ready(function(){
	$('.dummy-password-input').on('click', function() {
		$(this).hide();
		$(this).next().show().focus();
	});
});