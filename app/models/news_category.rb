# == Schema Information
#
# Table name: news_categories
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  status     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class NewsCategory < ActiveRecord::Base
  has_many :article_news_categories
  has_many :articles, through: :article_news_categories
end
