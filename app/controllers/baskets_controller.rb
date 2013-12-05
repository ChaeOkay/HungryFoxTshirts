class BasketsController < ApplicationController
  include BasketUsage

  def add
    data = { id: "#{params[:tshirt][:name]} - #{params[:tshirt][:size]}",
             type: params[:tshirt].class,
             unit_cost: params[:tshirt][:cost],
             quantity: params[:tshirt][:qty] }
    basket.add_item(data)
    render "statics/basket", layout: false
  end

  def empty
    clear_basket
    render "statics/basket", layout: false
  end
end
