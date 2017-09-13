$(document).ready(function() {
  $("#register-button").on('click', '#register-link', function(event){
    event.preventDefault();
    var url = $(this).attr('href')

    $.ajax({
        url: url,
        method: "GET"
    })
    .done(function(response){

      $("#register-button").html(response);
    })
   });

  $("#login-button").on('click', '#login-link',function(event){
    event.preventDefault();
    var url = $(this).attr('href')
    $.ajax({
        url: url,
        method: "GET"
    })
    .done(function(response){
      $("#login-button").html(response);
    })
   });




});

  // $("#user-password-form").on('submit', 'form', function(event){
  //   event.preventDefault();
  //   var $this = $(this)
  //   console.log($this)
  // })
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
