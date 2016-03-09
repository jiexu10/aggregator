FactoryGirl.define do
  factory :newsletter do
    newsletter_date Date.today
    title 'this is the title'
    description 'descript'
  end
end
