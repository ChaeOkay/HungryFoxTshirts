class User
  include Mongoid::Document

  field :name

  validate_presence_of :name

  def cart
    Cartman::Cart.new()
  end
end
