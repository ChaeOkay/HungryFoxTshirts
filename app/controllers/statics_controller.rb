class StaticsController < ApplicationController
  def landing
    @tshirt = Tshirt.first
    @front = @tshirt.picture.where(view: "front").pluck(:image_name).first
    @back = @tshirt.picture.where(view: "back").pluck(:image_name).first
    @sizes = @tshirt.tsize.pluck(:name)
  end

  def about
    render "statics/about", layout: false
  end
end
