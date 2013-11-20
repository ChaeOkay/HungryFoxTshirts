class Picture
  include Mongoid::Document

  field :image_name, default: 'placeholder.png'
  field :view

  validates_presence_of :view

  belongs_to :tshirt
end
