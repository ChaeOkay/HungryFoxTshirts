require 'spec_helper'

describe Picture do
  it { should validate_presence_of :view }
  it { should validate_presence_of :image_name }
  it { should validate_uniqueness_of :image_name }
  it { should belong_to :tshirt}

  context 'with vaid parameters' do
    let(:picture) { create :picture }
    it 'should have a default image_name of placeholder.png' do
      expect(picture.image_name).to eq 'placeholder.png'
    end
  end
end
