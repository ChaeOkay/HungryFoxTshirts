require 'spec_helper'

describe Inventory do
  it { should belong_to :tshirt }
  it { should belong_to :tsize }

  context "new" do
    let(:inventory) { create :inventory }

    it "should default as a quantity of 1" do
      expect(inventory.qty).to eq 1
    end
  end
end
