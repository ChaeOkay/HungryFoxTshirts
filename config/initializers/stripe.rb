Rails.configuration.stripe = {
  publishable_key: ENV['WOLFT_PUBLISHABLE_KEY'],
  secret_key: ENV['WOLFT_SECRET_KEY']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
