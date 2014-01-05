class StaticsController < ApplicationController
  include BasketUsage
  include Sslredirect

  def landing
    enforce_ssl
    new_basket
    @tshirts = Tshirt.all
  end

  def feature
    @tshirts = Tshirt.all
    render 'statics/landing', layout: false
  end

  def about
    render 'statics/about', layout: false
  end

  def basket
    render 'statics/basket', layout: false
  end

end
