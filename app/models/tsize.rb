class Tsize
  include Mongoid::Document

  field :name, type: String

  belongs_to :tshirt

  validates_presence_of :name
  validates_uniqueness_of :name
end
