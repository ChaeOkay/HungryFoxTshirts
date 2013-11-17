class StaticsController < ApplicationController
  def landing
    @tshirt_feature = Tshirt.first
    @sizes = @tshirt_feature.tsize.pluck(:name)
  end

  def about
    render "statics/about", layout: false
  end
end
