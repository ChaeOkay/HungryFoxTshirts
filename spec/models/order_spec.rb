require 'spec_helper'

describe Order do
  it { should validate_uniqueness_of :record_number }
  it { should validate_presence_of :record_number }
end
