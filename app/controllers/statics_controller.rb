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

  def checkoutform
    #add basket data to metadta in charge

    begin
      charge = Stripe::Charge.create(
        :card  => params[:stripeToken]
        :amount      => 500,
        :description => 'Hungry Wolft Tshirts',
        :currency    => 'usd'
      )

    rescue Stripe::CardError => e
      flash[:error] = e.message

    redirect_to root_path

  end
end
