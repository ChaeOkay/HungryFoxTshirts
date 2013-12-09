class Order
  include Mongoid::Document

  field :stripeToken
  field :stripeEmail
  field :stripeBillingName
  field :stripeBillingAddressLine1
  field :stripeBillingAddressZip
  field :stripeBillingAddressCity
  field :stripeBillingAddressState
  field :stripeBillingAddressCountry

  field :stripeShippingName
  field :stripeShippingAddressLine1
  field :stripeShippingAddressZip
  field :stripeShippingAddressCity
  field :stripeShippingAddressState
  field :stripeShippingAddressCountry

  field :basketTotal
  field :basketItemQuantity
  field :basketDescription

  field :record_number

  validates_uniqueness_of :record_number
  validates_presence_of :record_number

  def create_record_number
    self.update_attributes(record_number: generate_record_number)
  end

  def generate_record_number(size = 6)
    charset = %w{ 2 3 4 6 7 9 A C D E F G H J K M N P Q R T V W X Y Z}
    record_no = (0...size).map { charset.to_a[rand(charset.size)] }.join
  end
end
