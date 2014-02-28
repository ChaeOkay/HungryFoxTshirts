require "spec_helper"

describe OrderMailer do
  let!(:order)  { FactoryGirl.create(:order) }
  let!(:mail)   { OrderMailer.confirmation_email(
                            record_number: order.record_number,
                            email: order.stripeEmail,
                            name: order.stripeBillingName,
                            order_total: order.basketTotal,
                            order_description: order.basketDescription,
                            order_qty: order.basketItemQuantity, )}

  it "is addressed to the order email address" do
    mail.to.should == [order.stripeEmail]
  end

  it "displays the order confirmation record number" do
    mail.body.encoded.should match(order.record_number)
  end

  it "displays the billing name" do
    mail.body.encoded.should match(order.stripeBillingName)
  end

  it "displays the basket total" do
    mail.body.encoded.should match(order.basketTotal)
  end

  it "displays the basket item quantity" do
    mail.body.encoded.should match(order.basketItemQuantity)
  end

  it "displays the basket item quantity" do
    mail.body.encoded.should match(order.basketDescription)
  end
end
