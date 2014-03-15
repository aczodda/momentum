$(document).ready(function(){
	$('.dummy-password-input').on('click', function() {
		$(this).addClass("hidden");
		
		$(this).next().removeClass('hidden');
	});
});