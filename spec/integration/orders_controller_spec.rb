require 'spec_helper'

describe OrdersController do
  let(:stripe_response) { {"utf8"=>"✓",
                            "authenticity_token"=>"D8BJEqtykHRGC+gEijGeJeY3odlfATAO0+0BwN6XQNo=",
                            "stripeToken"=>"tok_1036F92mwXvO1ZtCvlY0dt8H",
                            "stripeEmail"=>"test@tester.com",
                            "stripeBillingName"=>"test ",
                            "stripeBillingAddressLine1"=>"1014 E 27th",
                            "stripeBillingAddressZip"=>"10007",
                            "stripeBillingAddressCity"=>"New York City",
                            "stripeBillingAddressState"=>"NY",
                            "stripeBillingAddressCountry"=>"United States",
                            "stripeShippingName"=>"test ",
                            "stripeShippingAddressLine1"=>"1014 E 27th",
                            "stripeShippingAddressZip"=>"10007",
                            "stripeShippingAddressCity"=>"New York City",
                            "stripeShippingAddressState"=>"NY",
                            "stripeShippingAddressCountry"=>"United States",
                            "controller"=>"orders",
                            "action"=>"checkoutform"} }
end
