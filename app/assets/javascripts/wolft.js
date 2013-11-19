function Navbar() {
  this.content = $('#maincontent')
}

Navbar.prototype = {
  call: function(id){
    $(id).bind('ajax:success', function(e, data, xhr, settings){
      e.preventDefault();
      $('#maincontent').fadeOut(function(){
        $('#maincontent').html(data)
        $('#maincontent').fadeIn()
      })
    })
  }
}

nav = new Navbar()

$(document).ready(function(){
  nav.call('#about')
  nav.call('#inventory')
})
