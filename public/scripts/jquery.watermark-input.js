(function($){
   $.fn.watermark = function(text) {
	
	var watermark = text;
	
	//init, set watermark text and class
	$(this).val(watermark).addClass('watermark');
	
	//if blur and no value inside, set watermark text and class again.
 	$(this).blur(function(){
  		if ($(this).val().length == 0){
    		$(this).val(watermark).addClass('watermark');
		}
 	});

	//if focus and text is watermark, set it to empty and remove the watermark class
	$(this).focus(function(){
  		if ($(this).val() == watermark){
    		$(this).val('').removeClass('watermark');
		}
 	});  
	return this;
   }; 
})(jQuery);