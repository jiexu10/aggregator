class Newsletter < ActiveRecord::Base
  has_many :newsletter_articles
  has_many :articles, through: :newsletter_articles

  validates :newsletter_date, presence: true, uniqueness: true
  validates :title, presence: true

  def self.current
    newsletters_sorted = Newsletter.all.order('newsletter_date desc')
    newsletters_sorted.first
  end
end
