$(document).ready ->
	$form = $(".voteform form")
	$form.submit ->
		$item = $(this)
		url = this.action
		data = $(this).serialize()
		$.post(url, data, success = (x) -> 
			console.debug($item)
			$hf = $(".highfives span", $item.closest("li"))
			count = parseInt($hf.html())
			$hf.html(count + 1)
			$item.parent().parent().remove()
		)
		return false
	
	$(".highfives").each ->
		$h = $(this)
		mIn = (eventObj) ->
			$(".highfivers", $h.closest("div.hf-box")).show()

		mOut = (eventObj) ->
			$(".highfivers", $h.closest("div.hf-box")).hide()
	
		$h.hover(mIn, mOut)
		

