# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
	#$('#item_model_id').parent().hide()
	models = $('#item_model_id').html()
	#alert(models)
	#alert($('#item_model_id'))
	manufacturers = $('#item_model_id').html()
	#alert(manufacturers)
	
	$('#item_manufacturer_id').change ->
		manufacturer = $('#item_manufacturer_id :selected').text()
		options = $(models).filter("optgroup[label='#{manufacturer}']").html()
		if options
			$('#item_model_id').html(options)
			$('#item_model_id').parent().show()
			$('#item_manufacturer_id :selected').attr('disabled', 'disabled')
		else
			$('#item_model_id').empty()
			$('#item_model_id').parent().hide()
	