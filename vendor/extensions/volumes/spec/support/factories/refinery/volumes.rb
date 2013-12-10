
FactoryGirl.define do
  factory :volume, :class => Refinery::Volumes::Volume do
    sequence(:price) { |n| "refinery#{n}" }
  end
end

