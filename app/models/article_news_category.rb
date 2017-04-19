# == Schema Information
#
# Table name: article_news_categories
#
#  id               :integer          not null, primary key
#  article_id       :integer
#  news_category_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class ArticleNewsCategory < ActiveRecord::Base
  belongs_to :article
  belongs_to :news_category
end
