class Newsletter < ActiveRecord::Base
  has_many :newsletter_articles
  has_many :articles, through: :newsletter_articles

  validates :newsletter_date, presence: true, uniqueness: true
  validates :title, presence: true

  def articles_to_send
    newsletter_articles.where(send_article: 'true').pluck(:id)
  end

  def self.current
    newsletters_sorted = Newsletter.all.order('newsletter_date desc')
    newsletters_sorted.first
  end
end
