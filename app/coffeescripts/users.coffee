$(document).ready(function() {
	$('#post_content').keyup(function() {
		var charLength = 140 - $(this).val().length;
		$('p.charcount').html(charLength);
	});
});
