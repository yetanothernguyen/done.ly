$(document).ready ->
	$('#post_content').keyup ->
		charLength = 140 - $(this).val().length;
		$('p.charcount').html charLength ;
	

