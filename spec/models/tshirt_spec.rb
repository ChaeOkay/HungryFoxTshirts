require 'spec_helper'

describe Tshirt do
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should validate_presence_of :cost }

  it { should have_many :tsizes }

  context 'with valid parameters' do
    let(:tshirt) { Tshirt.create( name: '001',
                                  description: 'hot',
                                  cost: 10) }

    it 'should have a size' do
      tshirt.tsizes << Tsize.create(name: 's')
      expect(tshirt.tsizes.count).to eq 1
    end
  end
end
