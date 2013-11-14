require 'spec_helper'

describe Tshirt do
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should validate_presence_of :cost }

  it { should have_many :sizes }
end
