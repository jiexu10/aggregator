require 'rails_helper'

RSpec.describe Newsletter, type: :model do
  it { should have_many(:newsletter_articles) }
  it { should have_many(:articles) }

  it { should validate_presence_of(:newsletter_date) }
  it { should validate_presence_of(:title) }

  subject { FactoryGirl.build(:newsletter) }
  it { should validate_uniqueness_of(:newsletter_date) }
end
