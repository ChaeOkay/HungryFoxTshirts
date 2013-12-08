module BasketUsage
  def new_basket
    session[:basket] = Cartman::Cart.new(1)
  end

  def basket
    session[:basket]
  end

  def clear_basket
    session[:basket].destroy!
    new_basket
  end

  def basket_in_cents
    basket_amount * 100
  end

  def basket_amount
    basket.total.to_i
  end
end
