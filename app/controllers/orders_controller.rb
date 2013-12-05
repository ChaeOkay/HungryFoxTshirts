class OrdersController < ApplicationController
  include BasketUsage

  def checkoutform
    begin
      charge = Stripe::Charge.create(
        :card  => params[:stripeToken],
        :amount      => 500,
        :description => 'Hungry Wolft Tshirts',
        :currency    => 'usd'
        #add basket data to metadata in charge
      )
    rescue Stripe::CardError => e
      flash[:error] = e.message
    end

    clear_basket
    redirect_to root_path
  end
end
