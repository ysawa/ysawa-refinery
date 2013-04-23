
FactoryGirl.define do
  factory :work, :class => Refinery::Works::Work do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

