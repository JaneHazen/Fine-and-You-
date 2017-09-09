$(document).ready(function() {
  $("nav").on('click', '.buttons', function(event){
    event.preventDefault();
    var $this = $(this)
    console.log($this)
    var link = $this.find("a")
    console.log(link)
    var url = link.attr('href')
    console.log(url);
    var method = "GET"

    $.ajax({
        url: url,
        method: method
    })
    .done(function(response){
      $($this).append().html(response);
    })


  });
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});
