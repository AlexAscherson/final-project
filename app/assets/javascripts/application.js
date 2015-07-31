// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require underscore
//= require gmaps/google
//= require jquery.raty
//= require ratyrate

$(document).ready(function() {

  console.log("app.js loaded");
  
 $( ".group_members_top" ).click(function() {
  $( ".slider" ).slideToggle( "slow", function() {
    // Animation complete.
  });
});

 $( ".buttonslider" ).click(function() {
  $( ".buttondiv" ).animate({ width: "toggle"} )
  console.log("slider clicked");
});


$('.buttonslider').click(function() {
    $(".arrow").toggleClass('fliparrow');
    console.log("arrow flipped");
});

$('.mapheader').click(function() {
    $("#map").animate({ height: "toggle"} )
    // Animation complete.
  
});

$('.infoheader').click(function() {
    $(".eventdescription").animate({ height: "toggle"} )
    // Animation complete.
  
});




});
