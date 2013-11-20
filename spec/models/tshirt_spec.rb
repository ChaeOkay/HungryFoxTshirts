require 'spec_helper'

describe Tshirt do
  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name }
  it { should validate_presence_of :description }
  it { should validate_presence_of :cost }

  it { should have_and_belong_to_many :tsize }
  it { should have_many :picture }

  context 'with valid parameters' do
    let(:tshirt) { Tshirt.create( name: '001',
                                  description: 'hot',
                                  cost: 10) }

    it 'can have multiple sizes' do
      tshirt.tsize << Tsize.create(name: 's')
      tshirt.tsize << Tsize.create(name: 'm')
      expect(tshirt.tsize.count).to eq 2
    end
  end
end
