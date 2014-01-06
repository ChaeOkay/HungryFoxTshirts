module OrderProcessor
  extend ActiveSupport::Concern
  include BasketUsage

  def make_stripe_charge
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
  end

  def log_order
    order = Order.new(order_params)
    order.basketTotal = basket_in_cents
    order.basketItemQuantity = basket.quantity
    order.basketDescription = "basket description"
    order.create_record_number
    order
  end

  def generate_notice
    clear_basket
    flash[:notice] = "Your order confirmation number is #{@order.record_number}"
    flash.keep(:notice)
  end

end
