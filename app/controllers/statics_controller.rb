class StaticsController < ApplicationController
  def landing
    @tshirt = Tshirt.first
  end

  def about
    render "statics/about", layout: false
  end
end
