class Size
  include Mongoid::Document

  field :name, type: String

  belongs_to :tshirt
end
