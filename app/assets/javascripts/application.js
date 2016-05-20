//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require bootstrap-datepicker
//= require underscore
//= require gmaps/google

$(document).ready(function() {
 // the DOM is now ready, you can traverse it,
 // and register events with on().
  $('.date-picker').datepicker({
      startDate: "today",
      autoclose: true
  });

});

