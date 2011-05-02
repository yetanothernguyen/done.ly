$(document).ready ->
	$form = $("#voteform form")
	$form.submit ->
		url = this.action
		data = $(this).serialize()
		$.post(url, data)
		return false
	
