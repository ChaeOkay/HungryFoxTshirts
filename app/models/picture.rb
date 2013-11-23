class Picture
  include Mongoid::Document

  field :image_name, default: 'placeholder.png'
  field :view

  validates_presence_of :view, :image_name
  validates_uniqueness_of :image_name

  belongs_to :tshirt
end
