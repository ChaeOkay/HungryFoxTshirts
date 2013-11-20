require 'spec_helper'

describe Picture do
  it { should validate_presence_of :image_name }
  it { should validate_presence_of :view }
  it { should belong_to :tshirt}
end
