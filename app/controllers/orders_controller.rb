class OrdersController < ApplicationController
  include OrderProcessor

  def checkoutform
    make_stripe_charge
    @order = log_order

    if @order.save
      generate_notice(@order)
      redirect_to root_path
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
