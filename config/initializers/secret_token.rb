secret = ENV['WOLFT_TOKEN']
if secret.length < 30
  raise "Secret token cannot be loaded"
else
  WolfT::Application.config.secret_key_base = secret
end
