require 'spec_helper'

describe Tshirt do
  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name }
  it { should validate_presence_of :description }
  it { should validate_presence_of :cost }

  it { should have_many :inventory}
  it { should have_many :picture }

  context 'with valid parameters' do
    let(:tshirt) { create :tshirt }
    let(:s) { create :tsize }
    let(:m) { Tsize.create( name: 'm') }

    it 'can have multiple sizes' do
      Inventory.create(tshirt: tshirt, tsize: s)
      Inventory.create(tshirt: tshirt, tsize: m)
      expect(tshirt.sizes.count).to eq 2
    end
  end
end
