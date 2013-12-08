class OrdersController < ApplicationController
  include BasketUsage

  def billing
  end

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

    log_receipt = Order.new(order_params)
    log_receipt.basketTotal = basket_in_cents
    log_receipt.basketItemQuantity = basket.quantity
    log_receipt.basketDescription = "basket description"

    clear_basket if log_receipt.save

    redirect_to root_path
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
