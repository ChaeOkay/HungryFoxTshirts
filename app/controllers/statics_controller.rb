class StaticsController < ApplicationController
  extend BasketCreator

  def landing
    session[:basket] = 1
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
end
