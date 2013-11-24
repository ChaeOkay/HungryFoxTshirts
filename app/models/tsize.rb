class Tsize
  include Mongoid::Document

  field :name, type: String

  has_many :inventory

  validates_presence_of :name
  validates_uniqueness_of :name
end
