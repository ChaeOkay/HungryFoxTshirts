class Picture
  include Mongoid::Document

  field :image_name
  validates_presence_of :image_name
  belongs_to :tshirt
end
