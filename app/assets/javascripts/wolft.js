function showModal(data){
  $('#myModal').html(data)
  $('#myModal').foundation('reveal', 'open')
}

function showPage(selector, data, foundationBind) {
  $(selector).fadeOut(function(){
    $(selector).html(data)
    $(selector).fadeIn()

    if (foundationBind != undefined) {
      $(foundationBind).foundation('orbit', 'reflow')
    }
  })
}

function Navbar(id) {
  this.content = $('#maincontent')
  this.id = id
}

Navbar.prototype = {
  call: function(foundationBind){
    var that = this.content
    var id = this.id
    $(id).on('click', function(e){
      e.preventDefault()
      $(id).bind('ajax:success', function(e, data){
        showPage(that, data, foundationBind)
      })
    })
  },
  openModal: function(){
    var id = this.id
    $(id).bind('ajax:success', function(e, data){
      e.preventDefault();
      showModal(data)
    })
  }
}

function Inventory(){
}

Inventory.prototype = {
  submit: function(){
    var content = $('#maincontent')
    $(content).on('submit', '#tform', function(e){
      e.preventDefault()
      console.log('in the submit function!')
      var $data = $(this).closest('form').serialize()
      $.ajax({
        type: 'post',
        url: '/add',
        data: $data
      }).done(function(data){
        showModal(data)
      }).fail(function(jqXHR, textStatus, errorThrown){
        console.log(errorThrown)
      })
    })
  },

  updateQty: function(){
    $('#maincontent').on('change', '#tshirt_size', function(e){
      e.preventDefault()
      console.log('in the updateQty function!')
      var shirt = this
      var $data = $(this).closest('form').serialize()

      $.ajax({
        type: 'get',
        url: '/show_stock',
        data: $data
      }).done(function(data){
        qty = $(shirt).closest('.form_fields').find('#tshirt_qty')
        qty.html('option')

        $.each(data, function(){
          qty.append($("<option />").val(this).text(this))
        })
      }).fail(function(jqXHR, textStatus, errorThrown){
        console.log(errorThrown)
      })
    })
  }
}

function Basket(){
}

Basket.prototype = {
  empty: function(){
    var content = $('#maincontent')
    $(content).on('click', '#ClearBasket', function(e){
      e.preventDefault()
      $.get( "/empty", function( data ) {
        showPage(content, data)
      });
    })
  }
}

var initialize = function(){
  inventoryLink = new Navbar('#inventory')
  inventoryLink.call()

  aboutLink = new Navbar('#about')
  aboutLink.call()

  basketLink = new Navbar('#basket')
  basketLink.openModal()

  featureLink = new Navbar('#feature')
  featureLink.call('#feature-tshirt')

  inventory = new Inventory()
  inventory.submit()
  inventory.updateQty()

  basket = new Basket()
  basket.empty()
}

$(document).ready(initialize)
