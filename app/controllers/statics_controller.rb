class StaticsController < ApplicationController
  def landing
    @tshirt_feature = Tshirt.find_by(name: 'Duran Duran - 00A')
    @sizes = @tshirt_feature.tsize.pluck(:name)
  end

  def about
    render "statics/about", layout: false
  end
end
