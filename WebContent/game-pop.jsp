<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="fade_9" class="bg_mask_pop9">
	<div class="bg_mask_pop_title">
		<span class="popup_logo"><img src="images/popup_logo.png"></span>
		<span class="popup_close fade_9_close"><img src="images/popup_close.png"></span>
	</div>
	
	<div class="bg_mask_pop9_in">
		<div class="inquiry_wrap">
			<div id = 'gm-pop-errmsg'></div>
			<iframe id = 'game-pop-frame' src = '' width = "100%" height = "650px" allowFullscreen = 1></iframe>
		</div>
	</div>
</div>

<script>
	$(document).ready(function () {

	    $('#fade_9').popup({
			transition: 'all 0.3s',
	      	scrolllock: true,
	      	onclose: function(){
	      		$('#game-pop-frame').attr('src', '');
	      		$('#gm-pop-errmsg').html("");
	    	}
	    });
	    
	});
</script>