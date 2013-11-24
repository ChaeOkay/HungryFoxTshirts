class Tshirt
  include Mongoid::Document

  field :name
  field :description
  field :cost, type: Integer

  has_many :inventory
  has_many :picture

  validates_presence_of :name, :description, :cost
  validates_uniqueness_of :name

  def sizes
    inventory.map(&:tsize).map { |size| size.name }
  end

  def front
    picture.where(view: "front").pluck(:image_name).first
  end

  def back
    picture.where(view: "back").pluck(:image_name).first
  end

end
