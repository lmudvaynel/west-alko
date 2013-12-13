
FactoryGirl.define do
  factory :factory, :class => Refinery::Factories::Factory do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

