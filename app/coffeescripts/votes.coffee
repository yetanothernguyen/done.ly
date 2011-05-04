$(document).ready ->
	$form = $(".voteform form")
	$form.submit ->
		$item = $(this)
		url = this.action
		data = $(this).serialize()
		$.post(url, data, success = (x) -> 
			$hf = $(".highfives span", $item.closest("li"))
			count = parseInt($hf.html())
			$hf.html(count + 1)
			$(".voteform form", $hf).hide()
		)
		return false
	
	$(".highfives").each ->
		$h = $(this)
		mIn = (eventObj) ->
			$(".highfivers", $h.closest("div.hf-box")).show()

		mOut = (eventObj) ->
			$(".highfivers", $h.closest("div.hf-box")).hide()
	
		$h.hover(mIn, mOut)
		

