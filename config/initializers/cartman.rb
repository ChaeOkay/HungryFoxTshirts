Cartman.config do |c|
  c.cart_expires_in = 10800 #3 hours
  c.unit_cost_field = :unit_cost # for cart totaling
  c.quantity_field = :quantity # for quantity totaling

  ENV["WOLFT_REDISTOGO_URL"] = "redis://redistogo:4f58459e9b6d99f93f6b99cbe42239cb@crestfish.redistogo.com:10174/"

  uri = URI.parse(ENV["WOLFT_REDISTOGO_URL"])
  c.redis = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password) # set the redis connection here
end
