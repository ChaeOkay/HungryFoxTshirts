class OrderMailer < ActionMailer::Base

  def confirmation_email(args)
    @email = args[:email]
    @confirmation = args[:record_number]
    @name = args[:name]
    @order_total = args[:order_total]
    @order_description = args[:order_description]
    @order_qty = args[:order_qty]

    @url = "https://hungrywolftshirts.com"
    mail(to: @email, subject: 'Thank you for purchasing from Hungry Wolf TShirts')
  end
end
