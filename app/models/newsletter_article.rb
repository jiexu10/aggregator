class NewsletterArticle < ActiveRecord::Base
  belongs_to :newsletter, inverse_of: :newsletter_articles
  belongs_to :article, inverse_of: :newsletter_articles

  validates :newsletter, presence: true
  validates :article, presence: true
  validates :send_article, presence: true

  validates :newsletter, uniqueness: { scope: :article }

  def article_title
    article.title
  end
end
