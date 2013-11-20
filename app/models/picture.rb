class Picture
  include Mongoid::Document

  field :image_name
  field :view
  validates_presence_of :image_name, :view
  belongs_to :tshirt
end
