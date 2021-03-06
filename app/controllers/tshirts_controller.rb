class TshirtsController < ApplicationController
  include BasketUsage

  def index
    @tshirts = Tshirt.all
    render "tshirts/index", layout: false
  end

  def show_stock
    tshirt = Tshirt.where(name: params[:tshirt][:name]).first
    tsize = Tsize.where(name: params[:tshirt][:size].downcase).first
    @inventory_qty = Tshirt.stock tshirt, tsize
    render json: [*1..@inventory_qty]
  end

end
