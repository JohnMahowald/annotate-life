// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery.serializejson.min
//= require jquery_ujs
//= require jquery.ui.sortable
//= require jquery.scrollTo.min
//= require underscore
//= require backbone
//= require annotate_life
//= require ./utils/composite_view
//= require ./utils/animated_view
//= require_tree ../templates
// require_tree ./utils
//= require_tree ./models
//= require_tree ./collections
//= require_tree ./views
//= require_tree ./routers
//= require_tree .

$(document).ready(function() {
  $("#demo-user-login").on("click", function(event) {
    event.preventDefault();
    var $email = $("#email")
    $email.val("john@me.com")
    var $password = $("#password")
    $password.val("johnjohn")
    $("#login").click();
  });
  
  $('#main').hover(function() {
    $('.current-time').addClass('fade');
  }, function() {
    $('.current-time').removeClass('fade');
  });
});
