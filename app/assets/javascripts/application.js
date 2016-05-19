//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require bootstrap-datepicker
//= require underscore
//= require gmaps/google

$(document).ready(function() {
 // the DOM is now ready, you can traverse it,
 // and register events with on().
  $('#from-date.date-picker').datepicker({
      startDate: "today",
      todayBtn: "linked",
      language: "fr",
      autoclose: true
  });
  $('#to-date.date-picker').datepicker({
      startDate: "today",
      language: "fr",
      autoclose: true
  });

});

