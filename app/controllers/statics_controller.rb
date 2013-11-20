class StaticsController < ApplicationController

  def landing
    @tshirt = Tshirt.all.sample
  end

  def about
    render "statics/about", layout: false
  end
end
