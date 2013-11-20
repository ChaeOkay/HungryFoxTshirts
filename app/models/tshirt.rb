class Tshirt
  include Mongoid::Document

  field :name
  field :description
  field :cost, type: Integer

  has_and_belongs_to_many :tsize
  has_many :picture

  validates_presence_of :name, :description, :cost
  validates_uniqueness_of :name

  def sizes
    tsize.pluck(:name)
  end

  def front
    picture.where(view: "front").pluck(:image_name).first
  end

  def back
    picture.where(view: "back").pluck(:image_name).first
  end

end
