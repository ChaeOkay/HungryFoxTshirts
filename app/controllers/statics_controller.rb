class StaticsController < ApplicationController
  def landing
  end

  def about
    render "statics/about", layout: false
  end
end
