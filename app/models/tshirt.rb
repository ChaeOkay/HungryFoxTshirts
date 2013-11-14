class Tshirt
  include Mongoid::Document

  field :name
  field :description
  field :cost, type: Integer

  has_many :sizes

  validates_presence_of :name, :description, :cost
end
