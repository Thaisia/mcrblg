FactoryGirl.define do
  factory :comment do
    author "Ololosh"
    sequence(:body) { |n| "comment body #{n}"}
  end
end
