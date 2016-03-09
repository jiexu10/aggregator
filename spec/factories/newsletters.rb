FactoryGirl.define do
  factory :newsletter do
    sequence(:newsletter_date) { |n| Date.today - n }
    title 'this is the title'
    description 'descript'
  end
end
