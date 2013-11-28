uri = URI.parse(ENV["REDISTOGO_URL"])

Cartman.config do |c|
  c.cart_expires_in = 10800 #3 hours
  c.unit_cost_field = :unit_cost # for cart totaling
  c.quantity_field = :quantity # for quantity totaling
  c.redis = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)
end
