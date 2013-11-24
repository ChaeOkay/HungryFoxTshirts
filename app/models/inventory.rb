class Inventory
  include Mongoid::Document

  field :qty, type: Integer, default: 1

  belongs_to :tshirt
  belongs_to :tsize

end
