require 'rails_helper'

RSpec.describe Newsletter, type: :model do
  it { should have_many(:newsletter_articles) }
  it { should have_many(:articles) }
end
