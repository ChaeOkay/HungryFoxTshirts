FactoryGirl.define do

  factory :tshirt do
    name '001'
    description 'hot'
    cost 10
  end

  factory :tsize do
    name 's'
  end

  factory :inventory do
    tshirt
    tsize
  end

  factory :picture do
    view 'front'
  end

  factory :order do
    stripeToken '123'
    stripeEmail 'test@test.com'
    stripeBillingName 'test'
    stripeBillingAddressLine1 'test address'
    stripeBillingAddressZip '12345'
    stripeBillingAddressCity 'testcity'
    stripeBillingAddressState 'teststate'
    stripeBillingAddressCountry 'testcountry'

    stripeShippingName 'testselfshipping'
    stripeShippingAddressLine1 'test address'
    stripeShippingAddressZip '12345'
    stripeShippingAddressCity 'testcity'
    stripeShippingAddressState 'teststate'
    stripeShippingAddressCountry 'testcountry'

    basketTotal '200'
    basketItemQuantity '1'
    basketDescription 'tshirt'

    record_number '234ACD'
  end
end
