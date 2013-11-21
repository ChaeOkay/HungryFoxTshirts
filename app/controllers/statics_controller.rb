class StaticsController < ApplicationController

  def landing
    @tshirt = Tshirt.all.sample
  end

  def feature
    @tshirt = Tshirt.all.sample
    render 'statics/feature', layout: false
  end

  def about
    render "statics/about", layout: false
  end
end
