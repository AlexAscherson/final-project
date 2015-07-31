

$(document).ready(function(){
  console.log("js ready")
  // getMemberStatus();


})

$('.staravg1').click(function() {
    $(".voteinfo").html("<%= escape_javascript(render partial:'eventrates') %>" )
  
});