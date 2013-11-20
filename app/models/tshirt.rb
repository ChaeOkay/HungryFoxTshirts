class Tshirt
  include Mongoid::Document

  field :name
  field :description
  field :cost, type: Integer

  has_and_belongs_to_many :tsize
  has_many :pictures

  validates_presence_of :name, :description, :cost
  validates_uniqueness_of :name
end
