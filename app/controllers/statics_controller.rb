class StaticsController < ApplicationController
  include BasketUsage

  def landing
    new_basket
    @tshirts = Tshirt.all
  end

  def feature
    @tshirts = Tshirt.all
    render 'statics/feature', layout: false
  end

  def about
    render 'statics/about', layout: false
  end

  def basket
    render 'statics/basket', layout: false
  end

end
