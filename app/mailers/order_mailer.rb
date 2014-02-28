class OrderMailer < ActionMailer::Base

  def confirmation_email(args)
    @email = args[:email]
    @confirmation = args[:record_number]
    @name = args[:name]

    @url = "https://hungrywolftshirts.com"
    mail(to: @email, subject: 'Thank you for purchasing from Hungry Wolf TShirts')
  end
end
