FactoryGirl.define do

  factory :tshirt do
    name '001'
    description 'hot'
    cost 10
  end

  factory :tsize do
    name 's'
  end

  factory :inventory do
    tshirt
    tsize
  end

  factory :picture do
    view 'front'
  end
end
