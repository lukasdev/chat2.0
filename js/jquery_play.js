(function($){
	$.extend({
		playSound: function(){
			return $("<embed src='"+arguments[0]+".mp3' hidden='true' autostart='true' loop='false'>"+"<source src='"+arguments[0]+".ogg' /></audio>").appendTo('body');
		}
	});
})(jQuery);