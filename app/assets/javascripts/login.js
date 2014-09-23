$(document).ready(function() {
  $("#demo-user-login").on("click", function(event) {
    event.preventDefault();
    var $email = $("#email")
    $email.val("john@me.com")
    var $password = $("#password")
    $password.val("johnjohn")
    $("#login").click();
  })  
})
