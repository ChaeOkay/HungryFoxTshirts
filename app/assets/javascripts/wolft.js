function Navbar() {
  this.content = $('#maincontent')
}

Navbar.prototype = {
  call: function(id){
    $(id).on('click', function(e){
      e.preventDefault()

      $(id).bind('ajax:success', function(e, data, xhr, settings){
        $('#maincontent').fadeOut(function(){
          $('#maincontent').html(data)
          $('#maincontent').fadeIn()
        })
      })
    })
  }
}

nav = new Navbar()

$(document).ready(function(){
  nav.call('#about')
  nav.call('#inventory')
  nav.call('#feature')
})
