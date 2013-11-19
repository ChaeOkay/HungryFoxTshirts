class TshirtsController < ApplicationController

  def index
    @tshirts = Tshirt.all
  end

end
