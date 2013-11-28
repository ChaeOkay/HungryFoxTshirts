module BasketUsage
  def new_basket
    session[:basket] = Cartman::Cart.new(1)
  end

  def basket
    session[:basket]
  end

  def clear_basket
    session[:basket].destroy!
  end
end
