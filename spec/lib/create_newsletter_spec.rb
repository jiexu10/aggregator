require 'rails_helper'
require 'rake'

RSpec.describe 'create_newsletter.rake', vcr: true do

  before(:each) do
    load File.expand_path("../../../lib/tasks/create_newsletter.rake", __FILE__)
    load File.expand_path("../../../lib/seeders/newsletter_feed_seeder.rb", __FILE__)
    Rake::Task.define_task(:environment)

    NewsletterFeedSeeder.seed_newsletter_feeds
  end

  describe 'create_newsletter' do
    it 'creates the newsletter' do
      Rake::Task['create_newsletter'].invoke

      today = Date.today
      binding.pry
    end
  end
end
