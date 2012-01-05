//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$("#page").live('pageinit', function(event) {
  $('select#scan_site_id').selectmenu("refresh");
  var proom, rooms, site;
  proom = $('#scan_room_id').val();
  //console.log(proom);
  site = $('#scan_room_id').find("option:selected").parent().attr("label");
  rooms = $('#scan_room_id').html();
  //console.log('Selected: ' + site);
  $('#sites').val(site);
  $('select#sites').selectmenu("refresh");
  //console.log('set to:' + $('#scan_site_id').text());
  return $('#scan_site_id').change(function() {
    var options;
    site = $('#scan_site_id :selected').text();
    options = $(rooms).filter("optgroup[label=" + site + "]").html();
    //console.log(options);
    if (options) {
      return $('#scan_room_id').html('<option></option>' + options).selectmenu('refresh', true);
    } else {
      return $('#scan_room_id').empty().selectmenu('refresh', true);
    }
  });
});