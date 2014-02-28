require "spec_helper"

describe OrderMailer do
  let!(:order)  { FactoryGirl.create(:order) }
  let!(:mail)   { OrderMailer.confirmation_email(
                            record_number: order.record_number,
                            email: order.stripeEmail,
                            name: order.stripeBillingName)}

  it "is addressed to the order email address" do
    mail.to.should == [order.stripeEmail]
  end

  it "displays the order confirmation record number" do
    mail.body.encoded.should match(order.record_number)
  end

  it "displays the billing name" do
    mail.body.encoded.should match(order.stripeBillingName)
  end
end
