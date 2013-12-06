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
end
