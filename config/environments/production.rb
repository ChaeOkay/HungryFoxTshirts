WolfT::Application.configure do

  config.cache_classes = true
  config.eager_load = true
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true
  config.serve_static_assets = true
  config.assets.js_compressor = :uglifier
  config.assets.compile = true
  config.assets.digest = true
  config.assets.version = '1.0'
  config.log_level = :info
  config.i18n.fallbacks = true
  config.active_support.deprecation = :notify
  config.log_formatter = ::Logger::Formatter.new

  # ActionMailer
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address:        "smtp.gmail.com",
    port:           587,
    domain:         "hungrywolftshirts.com",
    user_name:      "hungrywolftshirts@gmail.com",
    password:       ENV["WOLFT_EMAIL_PASSWORD"],
    authentication: "plain",
    enable_starttles_auto: true }

  config.action_mailer.perform_deliveries = true
  config.action_mailer.default_options = { from: "HungryWolfTShirts@example.com" }
  config.action_mailer.raise_delivery_errors = true
end
