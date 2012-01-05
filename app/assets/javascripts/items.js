//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$("#page").live('pageinit', function(event) {
  $('select#manufacturers').selectmenu("refresh");
  var pmodel, models, model;
  pmodel = $('#item_model_id').val();
  manufacturer = $('#item_model_id').find("option:selected").parent().attr("label");
  models = $('#item_model_id').html();
  $('#manufacturers').val(manufacturer);
  $('select#manufacturers').selectmenu("refresh");
  return $('#manufacturers').change(function() {
    var options;
    manufacturer = $('#manufacturers :selected').val();
    options = $(models).filter("optgroup[label=" + manufacturer + "]").html();
    if (options) {
      return $('#item_model_id').html('<option></option>' + options).selectmenu('refresh', true);
    } else {
      return $('#item_model_id').empty().selectmenu('refresh', true);
    }
  });
});

$(window).load(function(){
	$("#slider").change(function() {
		sVal = $(this).val();
		location.href = ("?page=" + sVal);
	});
});