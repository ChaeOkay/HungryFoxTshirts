class Tshirt
  include Mongoid::Document

  field :name, type: String
  field :cost, type: Integer

  has_many :sizes
end
