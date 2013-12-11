class OrdersController < ApplicationController
  include BasketUsage

  def checkoutform
    begin
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
      render partial: "checkout", object: @order, layout: false
    else
      render "statics/basket"
      #render errors
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
