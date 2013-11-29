class StaticsController < ApplicationController
  include BasketUsage

  def landing
    new_basket
    @tshirt = Tshirt.all.sample
  end

  def feature
    @tshirt = Tshirt.all.sample
    render 'statics/feature', layout: false
  end

  def about
    render "statics/about", layout: false
  end

  def basket
    render "statics/basket", layout: false
  end

  def checkout
    render "statics/checkout", layout: false
  end

  def checkoutform
    render "statics/checkout", layout: false
  end
end
