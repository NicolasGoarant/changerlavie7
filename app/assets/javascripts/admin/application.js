//= require jquery
//= require rails-ujs
//= require activestorage
//= require vendors/trix
//= require moment
//= require moment/fr.js
//= require vendors/datepicker
//= require vendors/pickaday


Trix.config.attachments.preview.caption = { name: false, size: false }
Trix.config.blockAttributes.heading1.tagName = "h2";


$(document).ready(function (e) {
  if ($(".datepicker").length > 0){
    datePicker();
  }
});