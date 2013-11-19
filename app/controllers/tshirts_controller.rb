class TshirtsController < ApplicationController

  def index
    @tshirts = Tshirt.all
    render "tshirts/index", layout: false
  end

end
