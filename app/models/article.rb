require 'uri'

class Article < ActiveRecord::Base
  has_many :newsletter_articles
  has_many :newsletters, through: :newsletter_articles
  
  validates :article_date, presence: true
  validates :title, presence: true
  validates :url, presence: true
  validate :valid_url?

  def valid_url?
    uri = URI.parse(url)
    unless uri.kind_of?(URI::HTTP)
      errors.add(:url, 'is not a valid url')
    end
  rescue URI::InvalidURIError
    errors.add(:url, 'is not a valid url')
  end
end
