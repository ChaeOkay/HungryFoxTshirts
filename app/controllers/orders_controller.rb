class OrdersController < ApplicationController
  include BasketUsage

  def checkoutform
    begin
      new_basket
      charge = Stripe::Charge.create(
        :card  => params[:stripeToken],
        :amount      => basket_in_cents,
        :description => 'Hungry Wolft Tshirts',
        :currency    => 'usd'
      )
    rescue Stripe::CardError => e
      flash[:error] = e.message
    end

    @order = Order.new(order_params)
    @order.basketTotal = basket_in_cents
    @order.basketItemQuantity = basket.quantity
    @order.basketDescription = "basket description"
    @order.create_record_number

    if @order.save
      clear_basket
      #flash[:message] = "Order was placed! Confirmation: #{@order.record_number}"
      #redirect_to root_path
      render 'statics/basket', layout: false
    else
      render "statics/basket"
    end
  end

  private

  def order_params
    params.permit(:stripeToken,
                  :stripeEmail,
                  :stripeBillingName,
                  :stripeBillingAddressLine1,
                  :stripeBillingAddressZip,
                  :stripeBillingAddressCity,
                  :stripeBillingAddressState,
                  :stripeBillingAddressCountry,
                  :stripeShippingName,
                  :stripeShippingAddressLine1,
                  :stripeShippingAddressZip,
                  :stripeShippingAddressCity,
                  :stripeShippingAddressState,
                  :stripeShippingAddressCountry)
  end

end
