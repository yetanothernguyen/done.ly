$(document).ready ->
	$('#post_content').keyup ->
		charLength = 140 - $(this).val().length;
		$('p.charcount').html charLength ;
	
	$('#post_content').blur ->
		$("#idid").html('')

	$('#post_content').focus ->
		$("#idid").html('I …')
	
	