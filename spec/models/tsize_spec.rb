require 'spec_helper'

describe Tsize do
  it { should validate_presence_of :name }
  it { should belong_to :tshirt }
end
