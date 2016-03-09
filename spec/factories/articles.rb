FactoryGirl.define do
  factory :article do
    article_date Date.today
    title 'article title'
    url 'http://www.test.com'
    description 'article descript'
  end
end
