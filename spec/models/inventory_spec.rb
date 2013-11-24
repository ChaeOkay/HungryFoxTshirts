require 'spec_helper'

describe Inventory do
  it { should belong_to :tshirt }
  it { should belong_to :tsize }

  context "new" do
    let(:tshirt) { Tshirt.create( name: '001',
                                  description: 'hot',
                                  cost: 10) }
    let(:tsize) { Tsize.create( name: 's') }
    let(:inventory) { Inventory.create(tshirt: tshirt, tsize: tsize) }

    it "should default as a quantity of 1" do
      expect(inventory.qty).to eq 1
    end
  end
end
